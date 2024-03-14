import 'package:flutter/material.dart';
class Log extends StatefulWidget {
  const Log({super.key});

  @override
  State<Log> createState() => _LogState();
}

class _LogState extends State<Log> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            CircleAvatar(
              backgroundImage: NetworkImage('https://www.google.com/imgres?imgurl=https%3A%2F%2Fimages.unsplash.com%2Fphoto-1605559424843-9e4c228bf1c2%3Fq%3D80%26w%3D1000%26auto%3Dformat%26fit%3Dcrop%26ixlib%3Drb-4.0.3%26ixid%3DM3wxMjA3fDB8MHxzZWFyY2h8MTF8fGNhcnN8ZW58MHx8MHx8fDA%253D&tbnid=eiMQiYQRmPZ3TM&vet=12ahUKEwiQoI21x_OEAxWv8jgGHbkZB28QMygGegQIARB6..i&imgrefurl=https%3A%2F%2Funsplash.com%2Fs%2Fphotos%2Fcars&docid=pexCxKQSr2TtXM&w=1000&h=1250&q=car%20images&ved=2ahUKEwiQoI21x_OEAxWv8jgGHbkZB28QMygGegQIARB6'),
              radius: 57,
            ),
            Text('app'),
            SizedBox(height: 40,),
            Text('new app'),
            SizedBox(height: 40,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.phone,
                  color: Colors.tealAccent,)
                ],
              ),
            ),
            SizedBox(height: 60,),
            Container(
              padding: EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(horizontal: 40),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                children: [
                  Icon(Icons.mail,
                    color: Colors.tealAccent,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
