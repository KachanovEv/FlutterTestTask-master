import 'dart:math';
import 'package:flutter/material.dart';
import 'package:login/pages/SecondScreen.dart';






class pageRandomColor extends StatefulWidget {

  @override
  _pageRandomColor createState() => new _pageRandomColor();

}

class _pageRandomColor extends State<pageRandomColor> {
  final Random _random = Random();

  Color _color = Color(0xFFFFFFFF);
  Color colortext = Color (0xFFFFFFFF);

  void   changeColor() {

    setState(() {
      _color = Color.fromARGB(

        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
        _random.nextInt(256),
      );
    });

    setState(() {
      if (colortext != _color
      )
        return (
            colortext = Color.fromARGB(
              _random.nextInt(256),
              _random.nextInt(256),
              _random.nextInt(256),
              _random.nextInt(256),

            ));
    });
  }

  @override
  Widget build(BuildContext context)
  {

    return new MaterialApp(
        debugShowCheckedModeBanner:false,


        home: new Scaffold(
            floatingActionButton: new Align(
              alignment: Alignment( 1, -0.6),
              child: RaisedButton(
                  child: Text('About us'),
                  shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,

                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SecondScreen(),
                      ))),

            ),

            appBar: AppBar(
              title: Text('Funny random color change'),
            ),

            body:
            new InkWell(

                onTap: changeColor,

                child: Container(

                  child: Center(
                      child: new Text('Hey there', style: TextStyle(color: colortext))


                  ),
                  color: _color,
                )
            )
        )
    );
  }
}


