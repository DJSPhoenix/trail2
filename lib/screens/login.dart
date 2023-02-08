import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  bool _ispasswordnotshown = true;
  int flag = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        // color: Colors.amber,
        padding: EdgeInsets.all(30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: Text("LOGIN"),
            ),

            //Email
            Text("Email I'd"),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(
                    color: Colors.black,
                  )),
              // width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none, icon: Icon(Icons.mail)),
                validator: (value) {
                  print(value);
                },
              ),
            ),
            //Password
            Text("Password"),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  border: Border.all(
                    color: Colors.black,
                  )),
              // width: MediaQuery.of(context).size.width,
              child: TextFormField(
                obscureText: _ispasswordnotshown,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  icon: IconButton(
                    icon: (_ispasswordnotshown == true
                        ? Icon((Icons.visibility_off))
                        : Icon((Icons.visibility))),
                    onPressed: () {
                      setState(() {
                        if (_ispasswordnotshown == true) {
                          _ispasswordnotshown = false;
                        } else {
                          _ispasswordnotshown = true;
                        }
                      });
                    },
                  ),
                ),
                validator: (value) {
                  print(value);
                },
                
              ),
            ),
            TextButton(onPressed: (){}, child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
