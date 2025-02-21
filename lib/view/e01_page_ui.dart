import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/e02_page_ui.dart';

class E01PageUi extends StatefulWidget {
  const E01PageUi({super.key});

  @override
  State<E01PageUi> createState() => _E01PageUiState();
}

class _E01PageUiState extends State<E01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back_ios,
                  size: MediaQuery.of(context).size.height * 0.04,
                ),
              ),
            ),
            Image.asset(
              'assets/images/imge1.png',
              height: 400,
            ),
            Stack(
              children: [
                Text(
                  'BERRY JUICE',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif',
                    foreground: Paint()
                      ..style = PaintingStyle.stroke
                      ..strokeWidth = 4
                      ..color = const Color.fromARGB(255, 255, 193, 101),
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  'BERRY JUICE',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Serif',
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              'A "Moments of healthy sip \nThe best vitamin for you health',
              style: TextStyle(
                  fontSize: 15, color: const Color.fromARGB(255, 0, 0, 0)),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 45),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => E02PageUi()),
                  );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Explore Now',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(width: 10),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.arrow_forward, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
