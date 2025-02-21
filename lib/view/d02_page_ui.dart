import 'package:flutter/material.dart';
import 'package:flutter_speed_ui_app/view/d03_page_ui.dart';
import 'package:flutter_speed_ui_app/view/d04_page_ui.dart';

class D02PageUi extends StatefulWidget {
  const D02PageUi({super.key});

  @override
  State<D02PageUi> createState() => _D02PageUiState();
}

class _D02PageUiState extends State<D02PageUi> {
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
            Text(
              'Welcome back! \n Glad to see you, Again!',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter your email',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: '  Enter your password',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                isCollapsed: true,
                contentPadding: EdgeInsets.symmetric(
                  vertical: 20.0,
                ),
                suffixIcon: Icon(Icons.visibility_off),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => D04PageUi()),
                  );
                },
                child: Text('Forgot Password?'),
              ),
            ),
            SizedBox(height: 10),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Divider(thickness: 1, color: Colors.grey[300]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text("Or Login with"),
                ),
                Expanded(
                  child: Divider(thickness: 1, color: Colors.grey[300]),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Image.asset('assets/images/imgc3.png'),
                  onPressed: () {
                    // Google sign in
                  },
                ),
                SizedBox(width: 16),
                IconButton(
                  icon: Image.asset('assets/images/imgc4.png'),
                  onPressed: () {
                    // Facebook sign in
                  },
                ),
                SizedBox(width: 16),
                IconButton(
                  icon: Image.asset('assets/images/imgc5.png'),
                  onPressed: () {
                    // Twitter sign in
                  },
                ),
              ],
            ),
            SizedBox(height: 90),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account? "),
                GestureDetector(
                  onTap: () {},
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => D03PageUi()),
                      );
                    },
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.035,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
