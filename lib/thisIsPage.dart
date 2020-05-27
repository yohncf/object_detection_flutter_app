import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThisIsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[800],
      child: Center(
        child: Hero(
          tag: 'thisIs',
          child: Card(
            color: Colors.grey[900],
            elevation: 5,
            margin: EdgeInsets.symmetric(vertical: 0, horizontal: 16,),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Image(
                  height: 350,
                  width: double.infinity,
                  fit: BoxFit.cover,
                  image: AssetImage('assets/object_label.png'),
                ),
                ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, '/labeler');
                  },
                  contentPadding: EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                  leading: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.photo_camera, size: 40, color: Colors.grey[200],)
                    ],
                  ),
                  title: Text('This is...',
                    style: TextStyle(fontSize: 24, color: Colors.grey[200]), ),
                  subtitle: Text('Help this app to learn about more things!',
                    style: TextStyle(fontSize: 16, color: Colors.grey[200]),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
