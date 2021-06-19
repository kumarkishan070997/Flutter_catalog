import "package:flutter/material.dart";
import "../utils/routes.dart";

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = false;
  final _formkey = GlobalKey<FormState>();
  moveTohomepage(BuildContext) async {
    if(_formkey.currentState.validate()){
    setState(() {
      changeButton = true;
    });
    
    await Future.delayed(Duration(seconds: 1));
    Navigator.pushNamed(context, MyRoutes.homeRoute);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(children: [
        Image.asset('assets/images/login.png'),
        SizedBox(height: 20.0),
        Text(
          'Welcome $name',
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
              child: Form(
                key: _formkey,
                child: Column(children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Your Email", labelText: "Email"),
                        validator: (value){
                          if(value.isEmpty){
                            return "Email cannot be empty";
                          }
                          else{
                            return null;
                          }
                        },
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Your Password", labelText: "Password"),
                        validator: (value){
                          if(value.isEmpty){
                            return "Password cannot be empty";
                          }
                          else{
                            return null;
                          }
                        },
                  ),
                  SizedBox(height: 25.0),
                  InkWell(
                    onTap: () => moveTohomepage(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeButton ? 45 : 150,
                      height: 45,
                      alignment: Alignment.center,
                      child: changeButton
                          ? Icon(Icons.done, color: Colors.white)
                          : Text("LogIn",
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                      decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius:
                              BorderRadius.circular(changeButton ? 45 : 5)),
                    ),
                  ),
                ]),
              ),
            ))
      ]),
    );
  }
}
