import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool toggle = false;
  bool isDone = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Learn Flutter'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {
              debugPrint("Action");
            },
            icon: const Icon(Icons.info_outline, size: 24),
            tooltip: "Flutter Info",
          )
        ],
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/flowers.jpg'),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              color: Color.fromARGB(255, 127, 244, 215),
              thickness: 2,
            ),
            Container(
              color: Colors.blueAccent,
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
              margin: const EdgeInsets.all(10),
              child: const Text(
                "this is text widget",
                style: TextStyle(
                    color: Colors.white, fontSize: 20, wordSpacing: 1),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: toggle ? Colors.deepPurple : Colors.redAccent),
              onPressed: () {
                debugPrint("Elevated Button");
              },
              child: const Text("Elevated Button"),
            ),
            OutlinedButton(
              onPressed: () {
                debugPrint("Outline Button");
              },
              child: const Text("Outline Button"),
            ),
            TextButton(
              onPressed: () {
                debugPrint("Text Button");
              },
              child: const Text("Text Button"),
            ),
            Container(
              color: const Color.fromARGB(104, 0, 150, 135),
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(10, 20, 30, 40),
              margin: const EdgeInsets.all(10),
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () {
                  debugPrint("tapping row...");
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.flutter_dash_outlined),
                    Text("Flutter"),
                    Icon(Icons.flutter_dash),
                  ],
                ),
              ),
            ),
            Switch(
              value: toggle,
              onChanged: (bool newValue) {
                setState(() {
                  toggle = newValue;
                });
              },
            ),
            Checkbox(
              value: isDone,
              onChanged: (bool? newValue) {
                setState(() {
                  isDone = newValue!;
                });
              },
            ),
            Image.network(
                'https://images.pexels.com/photos/2463467/pexels-photo-2463467.jpeg?auto=compress&cs=tinysrgb&w=800')
          ],
        ),
      ),
    );
  }
}
