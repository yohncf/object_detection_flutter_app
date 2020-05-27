import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Identifier extends StatefulWidget {
  @override
  _IdentifierState createState() => _IdentifierState();
}

class _IdentifierState extends State<Identifier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
        onPressed: (){
            Navigator.pop(context);
        }
        ),
        title: Text('Point your camera to an object'),
      ),
      backgroundColor: Colors.grey[900],
      body: Hero(
        tag: 'hero_whatisthis',
        child: Card(
        color: Colors.grey[900],
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Flexible(
              flex: 5,
                child: Image(image: AssetImage('assets/space.jpg'), fit: BoxFit.fitWidth,),
            ), // Replace by camera
            Flexible(
              flex: 1,
              child: ListTile(
                onTap: (){
                  Navigator.pushNamed(context, '/labeler');
                },
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.search, size: 40, color: Colors.grey[200],)
                    ],
                  ),
                  title: Text('What is this?',
                    style: TextStyle(fontSize: 24, color: Colors.grey[200]),),
                  subtitle: Text('This is a: TO BE FILLED BY ML', //TODO Pass the identified object label
                    style: TextStyle(fontSize: 16, color: Colors.grey[200]),),
                ),
            )
          ],
        ),
      ),
    ),
    );
  }
}
