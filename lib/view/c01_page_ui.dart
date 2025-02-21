import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/c02_page_ui.dart';

class C01PageUi extends StatefulWidget {
  const C01PageUi({super.key});

  @override
  State<C01PageUi> createState() => _C01PageUiState();
}

class _C01PageUiState extends State<C01PageUi> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => C02PageUi(),
        ),
      ),
    );
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/imgc1.png',
            fit: BoxFit.cover,
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  child: Image.asset(
                    'assets/images/imgc2.png',
                    fit: BoxFit.cover,
                    width: 65,
                  ),
                ),
                SizedBox(height: 15),
                Text(
                  'HOPE FOR',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'HUMANITY',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 200),
                Text(
                  'Welcome to',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 3, 65, 26),
                  ),
                ),
                Text(
                  'hope for humanity',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                    color: const Color.fromARGB(255, 3, 65, 26),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
