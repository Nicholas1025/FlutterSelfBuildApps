import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class NavigationDrawerWidget extends StatelessWidget{
  final padding = const EdgeInsets.symmetric(horizontal: 20);

  const NavigationDrawerWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Drawer(
      // column holds all the widgets in the drawer
      child: Column(
        children: <Widget>[
          Expanded(
            // ListView contains a group of widgets that scroll inside the drawer
            child: ListView(
              children: const <Widget>[
                ListTile(
                          leading: Icon(Icons.photo_camera),
                          title: Text('Photo')),
                      ListTile(
                          leading: Icon(Icons.photo_album),
                          title: Text('Album'))
              ],
            ),
          ),
          // This container holds the align
          Align(
              alignment: FractionalOffset.bottomCenter,
              // This container holds all the children that will be aligned
              // on the bottom and should not scroll with the above ListView
              child: Column(
                children: const <Widget>[
              Divider(),
              ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Setting')),
              ListTile(
                  leading: Icon(Icons.help),
                  title: Text('Help and Feedback')),
              ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Exit')),
                  
                ],
              )
          )
        ],
      ),
    );
  }
}