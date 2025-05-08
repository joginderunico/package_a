import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:package_b/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const PackageA(title: 'Flutter Demo Home Page'),
    );
  }
}

class PackageA extends StatefulWidget {
  const PackageA({super.key, required this.title});

  final String title;

  @override
  State<PackageA> createState() => _PackageAState();
}

class _PackageAState extends State<PackageA> {
  void goTo() {
    Get.to(() => PackageB(title: 'Yo Package B'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[const Text('This is package A')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: goTo,
        tooltip: 'Go',
        child: const Icon(Icons.add),
      ),
    );
  }
}
