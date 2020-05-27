import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

class Labeler extends StatefulWidget {
  @override
  _LabelerState createState() => _LabelerState();
}

class _LabelerState extends State<Labeler> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.maybePop(context);
            }
        ),
      ),
          body: Hero(
            tag: 'thisIs',
            child: Container(
                    color: Colors.blue,
                  ),
          ),
      );
  }
}
