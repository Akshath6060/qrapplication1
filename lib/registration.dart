import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:qrapplication/log.dart';
import 'package:http_parser/http_parser.dart';
import 'package:http/http.dart 'as http;
class Regi extends StatefulWidget {
  const Regi({super.key});

  @override
  State<Regi> createState() => _MyAppState();
}

class _MyAppState extends State<Regi> {

  TextEditingController password=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController dob=TextEditingController();
  TextEditingController pass=TextEditingController();
  void register() async{
    // print(password.text);
    // print(pass.text);
    // print(name.text);
    // print(dob.text);
Uri uri=Uri.parse('https://scnner-web.onrender.com/api/register');
var response=await http.post(uri,headers: <String,String>{
  'Content-Type':'application/json;charset=UTF-8'
},
body: jsonEncode({'name':name.text,
'password':password.text,
  'dob':dob.text,
  'email':pass.text,
})
);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            Text('registration'),
            Container(
              width:600 ,
              height: 100,
              child: TextField(controller: name,
                  decoration: InputDecoration(
                    border:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ) ,
                    labelText: 'enter your name'
                  )
                ),
              ),
            Container(
              width:600 ,
              height: 100,
              child: TextField(controller: dob,
                  decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ) ,
                      labelText: 'enter your dob'
                  )
              ),
            ),
            Container(
              width:600 ,
              height: 100,
              child: TextField(controller: password,
                  decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ) ,
                      labelText: 'enter your password'
                  )
              ),
            ),
            Container(
              width:600 ,
              height: 100,
              child: TextField(controller: pass,
                  decoration: InputDecoration(
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ) ,
                      labelText: 'enter your confrom password'
                  )
              ),
            ),
             TextButton(onPressed: () { setState(() {
               register();
             });
               // Navigator.push(context, MaterialPageRoute(builder: (context)=>Log()));

              }, child: Text('register'),)


          ],
        ),
      ),
    );
  }
}
