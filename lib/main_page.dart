import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool statusSwitch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.purple, Colors.white],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight)),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Switch(
              activeColor: Colors.green,
              inactiveThumbColor: Colors.red,
              value: statusSwitch,
              onChanged: (value) {
                setState(() {
                  //artinya adalah kebalikan dari value statusSwitch
                  //false => true
                  statusSwitch = !statusSwitch;
                });
              },
            ),
            Text(
                //membuat percabangan
                (statusSwitch == true) ? 'switch on' : 'switch off')
          ],
        ),
      ),
    );
  }
}
