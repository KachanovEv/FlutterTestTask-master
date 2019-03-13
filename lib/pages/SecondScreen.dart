import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final alucard = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius: 105.0,

          backgroundImage: AssetImage('assets/images/Computer-Programming.jpg'),
        ),
      ),
    );


    final welcome = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Welcome Users!',
        style: TextStyle(fontSize: 28.0, color: Colors.white),
      ),
    );

    final lorem = Padding(
      padding: EdgeInsets.all(8.0),
      child: Text(
        'Solid Software is a young IT company that specializes in mobile application development '
            'based on next-generation technologies. We work with clients that are mostly located in the USA and Europe. '
            'Our office is based in Kharkiv. Our team members have up to 13 years of experience in the industry and have '
            'worked with top world companies. We look forward to you if you are responsible, want to learn new technologies '
            'and follow mobile development trends.',
        style: TextStyle(fontSize: 16.0, color: Colors.white),
      ),
    );


    final body = Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(28.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.blue,
          Colors.lightBlueAccent,
        ]),
      ),
      child: Column(
        children: <Widget>[alucard, welcome, lorem],
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
