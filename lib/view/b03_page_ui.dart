import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/b02_page_ui.dart';

class B03PageUi extends StatefulWidget {
  const B03PageUi({super.key});

  @override
  State<B03PageUi> createState() => _B03PageUiState();
}

class _B03PageUiState extends State<B03PageUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
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
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
            child: Column(
              children: [
                Text(
                  'Create Account',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    color: Color.fromARGB(255, 11, 49, 216),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  'Create an account so you can explore all the\nexisting jobs',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 50),
                TextField(
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Email ',
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                // 'Password'
                TextField(
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                // 'Password'
                TextField(
                  style: TextStyle(
                    fontSize: 13,
                  ),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'Confirm Password',
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 11, 49, 216),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => B02PageUi()),
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style:
                          TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Or continue with',
                    style: TextStyle(
                      color: Color.fromARGB(255, 11, 49, 216),
                    ),
                  ),
                ),
                SizedBox(height: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Image.asset('assets/images/imga2.png'),
                      onPressed: () {},
                    ),
                    SizedBox(height: 18),
                    IconButton(
                      icon: Image.asset('assets/images/imga3.png'),
                      onPressed: () {},
                    ),
                    SizedBox(height: 18),
                    IconButton(
                      icon: Image.asset('assets/images/imga4.png'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
