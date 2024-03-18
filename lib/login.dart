import 'package:flutter/material.dart';
import 'package:qrapplication/registration.dart';
import 'package:qrapplication/registration.dart';
import 'package:qrapplication/qr page.dart';
import 'package:http/http.dart ' as http;
import 'dart:convert';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  TextEditingController rollno=TextEditingController();
  TextEditingController password=TextEditingController();

void login()async{
  Uri uri = Uri.parse('https://scnner-web.onrender.com/api/login');
  var response = await http.post(uri,
      headers: <String, String>{
        'Content-Type': 'application/json;charset=UTF-8',
      },
      body: jsonEncode({

        'password': password.text,
        'rollno': rollno.text,

      }));
  print(response.statusCode);
  print(response.body);
  var data=jsonDecode(response.body);
  print(data['message']);
  if (response.statusCode == 200) {
    print('success');
    Navigator.push(context, MaterialPageRoute(builder: (context) => Qr()));
  }}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          SizedBox(
            width: 10,
            height: 200,
          ),
          Text("Login",style: TextStyle(fontSize: 23,color: Colors.white),),
          SizedBox(
            height: 20,
          ),
          Container(

            child: TextField(controller: rollno,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                labelText:'roll no'
            ),),
          ),
          SizedBox(height: 40,),
          Container(

            child: TextField(controller: password,
  decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius:BorderRadius.circular(20),
                ),
                labelText:'password'
            ),),
          ),
          TextButton(onPressed:() {setState(() {
            login();
          });
          }, child:Text('login'),
            style: TextButton.styleFrom(backgroundColor: Colors.blue),),
          Text("no having account plz register"),
          TextButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>Regi() ));

          }, child: Text('registration'))

        ],
      ),
    );
  }
}
