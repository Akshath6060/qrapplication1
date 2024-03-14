import 'package:flutter/material.dart';
import 'package:qrapplication/registration.dart';
import 'package:qrapplication/registration.dart';
import 'package:qrapplication/qr page.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
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
              width: 600,
              height: 100,
              child: TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                  ),
                  labelText:'roll no'
              ),),
            ),
            Container(
              width: 600,
              height: 100,
              child: TextField(decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(20),
                  ),
                  labelText:'password'
              ),),
            ),
            TextButton(onPressed:() {
              Navigator.push(context,MaterialPageRoute(builder:(context)=>Qr() ));
            }, child:Text('login'),
              style: TextButton.styleFrom(backgroundColor: Colors.blue),),
            Text("no having account plz register"),
            TextButton(onPressed: () {Navigator.push(context,MaterialPageRoute(builder: (context)=>Regi() ));

            }, child: Text('registration'))

          ],
        ),
      ),
    );
  }
}
