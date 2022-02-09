import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Padding(
            padding: EdgeInsets.fromLTRB(40, 250, 40, 25),
            child: Text(
              "Hi Masum,\nWelcome to\nGathrr!",
              style: TextStyle(
                fontSize: 28,
                color: Colors.blue,
                fontWeight: FontWeight.w800,
                letterSpacing: 1,
              ),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(40, 10, 40, 25),
            child: Text(
              "Please turn on your GPS to find out better events suggestions near you.",
              style: TextStyle(color: Colors.blue, fontSize: 18),
            ),
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
          //     width: double.infinity,
          //     child: ElevatedButton(
          //       onPressed: () {
          //         Navigator.push(
          //           context,
          //           MaterialPageRoute(builder: (context) => const Page2()),
          //         );
          //       },
          //       child: const Text('Turn On GPS'),
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
