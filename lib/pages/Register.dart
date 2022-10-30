// ignore: file_names
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:wheel_app/home.dart';
import 'package:wheel_app/pages/LoginDemo.dart';
import 'package:wheel_app/user.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  Register({Key? key}) : super(key: key);
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
    final _formKey = GlobalKey<FormState>();
  User user = User("", "","","");
  String url = "http://localhost:8050/SpringMVC/servlet/register";

  Future save() async {
    var res = await http.post(Uri.parse(url),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({'email': user.email, 'password': user.password}));
   
    if (res.body != null) {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HomePage(),
          ));
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
     
      body: SingleChildScrollView(
        child: Form(
            key: _formKey,
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 150,
                    // /*decoration: BoxDecoration(
                    //     color: Colors.red,
                    //     borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('asset/image/logo2.jpg', width:100 , height: 50 )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:20,bottom: 0),
              // padding: EdgeInsets.symmetric(horizontal: 15),
              child:  TextFormField(
                          controller: TextEditingController(text: user.email),
                          onChanged: (val) {
                            user.email = val;
                            
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Email is Empty';
                            }
                            return null;
                          },
                           style: TextStyle(fontSize: 30, color: Colors.blue),
                           
                          decoration: InputDecoration(
                           labelText: "Enter Email",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
                              errorStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),)
                          
            ),
             
            
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 10),
              // padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextFormField(
                          obscureText: true,
                          controller:
                              TextEditingController(text: user.password),
                          onChanged: (val) {
                            user.password = val;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Password is Empty';
                            }
                            return null;
                          },
                           style: TextStyle(fontSize: 30, color: Colors.blue),
                          decoration: InputDecoration(
                             labelText: "Password",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
                          
                              errorStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),)
            ),
                Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:20,bottom: 0),
              // padding: EdgeInsets.symmetric(horizontal: 15),
              child:  TextFormField(
                          controller: TextEditingController(text: user.codeclient),
                          onChanged: (val) {
                            user.codeclient = val;
                            
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Client Code is Empty';
                            }
                            return null;
                          },
                           style: TextStyle(fontSize: 30, color: Colors.blue),
                           
                          decoration: InputDecoration(
                           labelText: "Enter Client Code",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
                              errorStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),)
                          
            ),
            Padding(
              padding: const EdgeInsets.only(left:15.0,right: 15.0,top:20,bottom: 0),
              // padding: EdgeInsets.symmetric(horizontal: 15),
              child:  TextFormField(
                          controller: TextEditingController(text: user.Tel),
                          onChanged: (val) {
                            user.Tel = val;
                            
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'Phone Number is Empty';
                            }
                            return null;
                          },
                           style: TextStyle(fontSize: 30, color: Colors.blue),
                           
                          decoration: InputDecoration(
                           labelText: "Enter Phone Number",
                fillColor: Colors.white,
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.blue,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(
                    color: Colors.red,
                    width: 2.0,
                  ),
                ),
                              errorStyle:
                                  TextStyle(fontSize: 20, color: Colors.black),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none)),)
                          
            ),
              SizedBox(
              height: 15,
            ),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(40)),
              
      child: InkWell(
                child: Text(
                'Register',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                   textAlign: TextAlign.center,
                ),
                 onTap: () {
                    
                   if (_formKey.currentState!.validate()) {
                          save();
                        }
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
          Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(40)),
              
      child: InkWell(
                child: Text(
                'Home',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                   textAlign: TextAlign.center,
                ),
                onTap:  () {
                Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginDemo()));
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
