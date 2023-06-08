import 'package:flutter/material.dart';
import 'package:foundation_in_1_hour/home_page.dart';
import 'package:foundation_in_1_hour/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.teal),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  State<RootPage> createState() {
    return _RootPageState();
  }
}

class _RootPageState extends State<RootPage> {
  int currentIndex = 0;
  List<Widget> pages = const [HomePage(), ProfilePage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.flutter_dash),
              SizedBox(width: 20),
              Text('Flutter in 1 Hour')
            ]),
        elevation: 0,
      ),
      body: pages[currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint("floating clikced");
        },
        elevation: 10,
        tooltip: 'add anything you want',
        child: const Icon(Icons.add_a_photo),
      ),
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: "Home"),
          NavigationDestination(icon: Icon(Icons.person), label: "Profile")
        ],
        selectedIndex: currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
