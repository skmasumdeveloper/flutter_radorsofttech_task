import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:radarsoft_task/page3.dart';
import 'package:radarsoft_task/page4.dart';

class Page2 extends StatefulWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.tune,
              color: Colors.black,
            ),
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(
        child: Container(
          margin: const EdgeInsets.only(top: 100, left: 20),
          child: const Text("Developed By \nSk Masum Ali\nmasum4a@gmail.com"),
        ),
      ),
      body: Column(
        children: const [
          Cardslide(),
          CategorySection(),
          MynetworkSection(),
        ],
      ),
      bottomNavigationBar: const Bottombar(),
    );
  }
}

class Bottombar extends StatefulWidget {
  const Bottombar({Key? key}) : super(key: key);

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            // changes position of shadow
          ),
        ],
      ),
      child: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 2,
        height: 50.0,
        items: const <Widget>[
          Icon(Icons.home_outlined, size: 25),
          Icon(Icons.bookmark_outline, size: 25),
          Icon(Icons.add, size: 25),
          Icon(Icons.notifications_none_outlined, size: 25),
          Icon(Icons.perm_identity, size: 25),
        ],
        color: Colors.white,
        buttonBackgroundColor: Colors.blue,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {});
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}

class Cardslide extends StatelessWidget {
  const Cardslide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.symmetric(vertical: 20.0),
      padding: const EdgeInsets.only(left: 5, right: 5),
      height: 220.0,
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 3,
            // changes position of shadow
          ),
        ],
      ),
      child: ListView(
        // This next line does the trick.
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Page4()),
              );
            },
            child: Container(
              width: 300,
              margin: const EdgeInsets.all(8.0),
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        child: Image.network(
                          'https://www.roionline.com/hubfs/blog_images/company-event-blog.png',
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                            height: 20,
                            width: 70,
                            child: ElevatedButton(
                              onPressed: null,
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                              child: const Text(
                                "16:02",
                                style:
                                    TextStyle(fontSize: 12, color: Colors.cyan),
                              ),
                            ),
                          )),
                      Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.all(4.0),
                          child: SizedBox(
                            height: 20,
                            width: 70,
                            child: ElevatedButton.icon(
                              onPressed: null,
                              label: const Text(
                                '4.5',
                                style:
                                    TextStyle(fontSize: 12, color: Colors.cyan),
                              ),
                              icon: const Icon(
                                Icons.star,
                                size: 13,
                                color: Colors.yellow,
                              ),
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all(Colors.white)),
                            ),
                          )),
                    ],
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Pune Meetup",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Bahu Institute, Shivajinagar, Pune",
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 300,
            margin: const EdgeInsets.all(8.0),
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQgdK9ex1jm-VorssNAnHam-u7zp30yWU4Dg&usqp=CAU',
                        height: 150,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                        alignment: Alignment.topLeft,
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                          height: 20,
                          width: 70,
                          child: ElevatedButton(
                            onPressed: null,
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                            child: const Text(
                              "05:02",
                              style:
                                  TextStyle(fontSize: 12, color: Colors.cyan),
                            ),
                          ),
                        )),
                    Container(
                        alignment: Alignment.topRight,
                        padding: const EdgeInsets.all(4.0),
                        child: SizedBox(
                          height: 20,
                          width: 70,
                          child: ElevatedButton.icon(
                            onPressed: null,
                            label: const Text(
                              '4.8',
                              style:
                                  TextStyle(fontSize: 12, color: Colors.cyan),
                            ),
                            icon: const Icon(
                              Icons.star,
                              size: 13,
                              color: Colors.yellow,
                            ),
                            style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all(Colors.white)),
                          ),
                        )),
                  ],
                ),
                Container(
                  alignment: Alignment.topLeft,
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Kolkata Meetup",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "New Town, Kolkata",
                        style: TextStyle(fontSize: 13),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CategorySection extends StatelessWidget {
  const CategorySection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Category",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: null,
                  child: Text(
                    "See all (5)",
                    style: TextStyle(fontSize: 12),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 80,
                width: 100,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Opacity(
                          opacity: 0.8,
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6xpKcG4gp_kJ-WnErslKVWub6ATvBB-YfYw&usqp=CAU',
                            fit: BoxFit.cover,
                            height: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          // color: Color.fromRGBO(255, 255, 255, 0.5),
                          borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      )),
                      alignment: Alignment.center,
                      child: const Text(
                        'Meetup',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
                width: 100,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Opacity(
                          opacity: 0.8,
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQgBNhPKLw1AeijTtLj1N-c1wJzQRQ-u99Xg&usqp=CAU',
                            fit: BoxFit.cover,
                            height: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          // color: Color.fromRGBO(255, 255, 255, 0.5),
                          borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      )),
                      alignment: Alignment.center,
                      child: const Text(
                        'Startup',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 80,
                width: 100,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Opacity(
                          opacity: 0.8,
                          child: Image.network(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIkmJJsAzuiFcXaw8klfoGGN1mJOQMhdr9mQ&usqp=CAU',
                            fit: BoxFit.cover,
                            height: double.infinity,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                          // color: Color.fromRGBO(255, 255, 255, 0.5),
                          borderRadius: BorderRadius.all(
                        Radius.circular(15),
                      )),
                      alignment: Alignment.center,
                      child: const Text(
                        'College',
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

class MynetworkSection extends StatelessWidget {
  const MynetworkSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "My Network",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Page3()),
                    );
                  },
                  child: const Text(
                    "See all (6)",
                    style: TextStyle(fontSize: 12),
                  ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGm9e3V_1zWw60k5dRdYQqmdBCEw6atIfv2g&usqp=CAU',
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNcQ-8D7GJZHitIDdTFxNchzLyogQkIcC0fw&usqp=CAU',
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJaDrZf8xrl86AzVHo7UCDeQOdPqpBfBOSQQ&usqp=CAU',
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTuHQM-ji-ne3x60sYbmIbTMEsrDUl5bjIbKg&usqp=CAU',
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGm9e3V_1zWw60k5dRdYQqmdBCEw6atIfv2g&usqp=CAU',
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
                width: 40,
                child: Stack(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30.0),
                        child: Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_vZLygZGMfPzLEc3Mj_mNpb6DgsaBENa-4Q&usqp=CAU',
                          fit: BoxFit.cover,
                          height: double.infinity,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
