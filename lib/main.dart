import 'package:flutter/material.dart';
import 'package:radarsoft_task/page2.dart';
import 'page1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Page1(),
      floatingActionButton: FloatingActionButton.extended(
        // shape: BeveledRectangleBorder(borderRadius: BorderRadius.all()),
        label: const Text('Turn On GPS'),
        elevation: 20,
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const Page2()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
