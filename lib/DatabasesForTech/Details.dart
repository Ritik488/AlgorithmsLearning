import 'package:algorithms/models/TechModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Divide extends StatefulWidget {

  final Techniques techniques;
  final String title;
  final Object avatar;
  Divide(
      this.techniques,
      this.title,{
      @required this.avatar,
      });
  @override
  _DivideState createState() => _DivideState();
}

class _DivideState extends State<Divide> {

  Widget _description(BuildContext context){
    return new Container(
          padding: const EdgeInsets.all(15.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                children: <Widget>[
                  new Text(
                    widget.techniques.name,
                    style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.black
                    ),),
                  SizedBox(
                    height: 10.0,
                    width: 15.0,
                  ),
                  new Hero(tag: widget.avatar, child: new CircleAvatar(
                    backgroundImage: new NetworkImage(widget.techniques.image_url),
                    radius: 30.0,
                  )),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              new Text(
                widget.techniques.data,
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black54,
                ),)
            ],
          ),
        );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:new AppBar(
        title:new Text(widget.title),
        backgroundColor: Colors.indigo,
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Container(
        color: Colors.indigo[100],
          child: _description(context)
      ),
    );
  }
}

