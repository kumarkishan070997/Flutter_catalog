import "package:flutter/material.dart";

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset('assets/images/login.png'),
        SizedBox(height: 20.0),
        Text(
          'Welcome',
          style: TextStyle(
            fontSize: 20,
            color: Colors.purple,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 20.0),
        Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 60.0),
            child: SingleChildScrollView(
              child: Column(children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Your Email", labelText: "Email"),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Your Password", labelText: "Password"),
                ),
                SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: () {
                    print("hello text");
                  },
                  child: Text("LogIn"),
                  style: TextButton.styleFrom(minimumSize: Size(150, 45)),
                )
              ]),
            ))
      ]),
    );
  }
}
