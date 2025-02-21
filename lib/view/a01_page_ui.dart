import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/a02_page_ui.dart';
import 'package:flutter_speed_ui_app/view/home_ui.dart';

class A01PageUi extends StatefulWidget {
  const A01PageUi({super.key});

  @override
  State<A01PageUi> createState() => _A01PageUiState();
}

class _A01PageUiState extends State<A01PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius:
                        BorderRadius.vertical(bottom: Radius.circular(40)),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/images/imga1.png',
                      width: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  children: [
                    Text(
                      "Discover Your\nOwn Dream House",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. "
                      "Diam maecenas mi non sed ut odio. Non, justo, sed facilisi "
                      "et. Eget viverra urna, vestibulum egestas faucibus egestas.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.pink.shade100,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: Text(
                          "Sign in",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => A02PageUi()),
                          );
                        },
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(vertical: 15),
                        ),
                        child: Text("Register"),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
            ],
          ),
          Positioned(
            top: 20,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeUI()),
                );
              },
              icon: Icon(
                Icons.arrow_back_ios,
                size: MediaQuery.of(context).size.height * 0.04,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
