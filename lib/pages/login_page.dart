import 'package:flutter/material.dart';
import 'package:flutter_application_2/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  String name = "";
  bool changeButton = false;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [Image.asset("assets/img/login.png", 
                fit: BoxFit.fitWidth,
              ),
              Text("Welcome $name",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.blue
              ),
              ),
              SizedBox(
                height: 20.0,
              ),
             Padding(
               padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
               child: Column(
                children: [
                   TextFormField(
                   
                  decoration: InputDecoration(
                    hintText: "Enter User Name",
                    labelText: "User Name",
                  ),
                  onChanged: (value){
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                   obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    labelText: "Password",
                  ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1), 
                    height: 50,
                    width: changeButton ? 50: 110,
                    alignment: Alignment.center,
                    child: changeButton ? Icon(Icons.done, color: Colors.white,) : Text("Login",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    ),
                    decoration: BoxDecoration(
                    color: changeButton ? Colors.amber : Colors.lime,
                    // shape: changeButton ? BoxShape.circle : BoxShape.rectangle ,
                    borderRadius: BorderRadius.circular(changeButton ? 50 : 8),
                    ),
                  ),
                ),
                // ElevatedButton(
                //   child: Text("Login",
                //     style: TextStyle(
                //       fontSize: 16,
                //       fontWeight: FontWeight.normal,
                //     ),
                //   ),
                //   style: TextButton.styleFrom(
                //     foregroundColor: Colors.white,
                //     minimumSize: Size(90, 40),
                //   ),
                //   onPressed: () {
                //     Navigator.pushNamed(context, MyRoutes.homeRoute);
                //   },
                //   ),
                ],
               ),
             )
            ],
          ),
        )
    );
  }
}