import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        //  automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 2,
        centerTitle: true,
        title: const Text("Event Attendence"),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 10, left: 10, bottom: 10),
              child: const Text("Best Matches For You"),
            ),
            // Container(
            //   padding: const EdgeInsets.all(8.0),
            //   child: TextField(
            //     decoration: InputDecoration(
            //       hintText: 'Search...',
            //     ),
            //     onChanged: (text) {
            //       text = text.toLowerCase();
            //     },
            //   ),
            // ),
            Container(
              color: Colors.white,
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.all(2.0),
              child: const UserListView(),
            )
          ],
        ),
      ),
      // bottomNavigationBar: const Bottombar(),
    );
  }
}

class GetUsers {
  int id;
  String name;
  String lastname;
  String email;
  String avatar;

  GetUsers(
      {required this.id,
      required this.name,
      required this.lastname,
      required this.email,
      required this.avatar});

  factory GetUsers.fromJson(Map<String, dynamic> parsedJson) {
    return GetUsers(
        id: parsedJson['id'],
        name: parsedJson['first_name'],
        lastname: parsedJson['last_name'],
        email: parsedJson['email'],
        avatar: parsedJson['avatar']);
  }
}

class UserListView extends StatefulWidget {
  const UserListView({Key? key}) : super(key: key);

  @override
  CustomUserListView createState() => CustomUserListView();
}

class CustomUserListView extends State {
  final String apiURL = 'https://reqres.in/api/users?page=1';

  Future<List<GetUsers>> fetchJSONData() async {
    final Uri theurl = Uri.parse(apiURL);

    var jsonResponse = await http.get(theurl);

    if (jsonResponse.statusCode == 200) {
      final jsonItems =
          json.decode(jsonResponse.body)['data'].cast<Map<String, dynamic>>();

      List<GetUsers> usersList = jsonItems.map<GetUsers>((json) {
        return GetUsers.fromJson(json);
      }).toList();

      return usersList;
    } else {
      throw Exception('Failed to load data from internet');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<GetUsers>>(
      future: fetchJSONData(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return const Center(child: CircularProgressIndicator());
        }

        return ListView(
          children: snapshot.data!
              .map(
                (user) => ListTile(
                  title: Text(user.name + ' ' + user.lastname),
                  onTap: () {
                    // ignore: avoid_print
                    print(user.name);
                    showDialogFunc(context, user.avatar,
                        user.name + ' ' + user.lastname, user.email);
                  },
                  subtitle: Text(user.email),
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(user.avatar),
                  ),
                  trailing: SizedBox(
                    height: 25,
                    width: 75,
                    child: ElevatedButton(
                      onPressed: null,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.blueAccent),
                      ),
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              )
              .toList(),
        );
      },
    );
  }
}

// This is a block of Model Dialog
showDialogFunc(context, img, title, desc) {
  return showDialog(
    context: context,
    builder: (context) {
      return Center(
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            padding: const EdgeInsets.all(15),
            height: 260,
            width: MediaQuery.of(context).size.width * 0.7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    img,
                    width: 150,
                    height: 150,
                  ),
                ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 25,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    desc,
                    maxLines: 3,
                    style: TextStyle(fontSize: 15, color: Colors.grey[500]),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    },
  );
}
