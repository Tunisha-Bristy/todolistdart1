import 'package:flutter/material.dart';

import 'taskboard.dart';

class home extends StatefulWidget {
  const home({super.key});

  @override
  State<home> createState() => _HomeState();
}

class _HomeState extends State<home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Welcome to"),
            Text(
              "Plan IT",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 180,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Your Personal task management \nand planning solution",
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.black87),
                foregroundColor: MaterialStatePropertyAll(Colors.white),
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              onPressed: (){
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Taskboard(),
                ));
              },
              child: Text("Let's get started"),
            ),
          ],
        ),
      ),
    );
  }
}