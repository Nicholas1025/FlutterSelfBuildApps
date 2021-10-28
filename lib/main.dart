import 'package:flutter/material.dart';
//Widgets//
import 'package:flutterinterntestapp/widgets/widget_drawer.dart';
//Screens//
import 'package:flutterinterntestapp/modules/screens/button.dart';
import 'package:flutterinterntestapp/modules/screens/listview.dart';
import 'package:flutterinterntestapp/modules/screens/text.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const Appbar(),
    );
  }
}

class Appbar extends StatefulWidget {
  const Appbar({Key? key}) : super(key: key);

  @override
  AppbarState createState() => AppbarState();
}

class AppbarState extends State<Appbar> {
  @override
  Widget build(BuildContext context) => DefaultTabController(
        length: 4,
        child: Scaffold(
          drawer: const NavigationDrawerWidget(),
          appBar: AppBar(
            title: const Text('Tasks'),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 20,
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.home), text: 'Home'),
                Tab(icon: Icon(Icons.star), text: 'Feed'),
                Tab(icon: Icon(Icons.face), text: 'Profile'),
                Tab(icon: Icon(Icons.settings), text: 'Settings'),
              ],
            ),
          ),
          body: const MainScreen(),
        ),
      );
}

Widget buildMenuItem({
  required String text,
  required IconData icon,
  required Function() onClicked,
}) {
  const color = Colors.white;

  return ListTile(
    leading: Icon(icon, color: color),
    title: Text(
      text,
      style: const TextStyle(color: color),
    ),
    hoverColor: color,
  );
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PagesList(),
    );
  }
}

class PagesList extends StatefulWidget {
  const PagesList({Key? key}) : super(key: key);

  @override
  _PagesList createState() => _PagesList();
}

class _PagesList extends State<PagesList> {
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 20.0),
        child: ListView(
          children: [
            Column(children: [
              SizedBox(
                width: 600,
                height: 50,
                child: RaisedButton(
                    child: const Text(
                      'Task 1（Form)',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Task1()));
                    }),
              )
            ]),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Column(children: [
              SizedBox(
                width: 600,
                height: 50,
                child: RaisedButton(
                    child: const Text(
                      'Task 2（Text Field)',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Task2()));
                    }),
              )
            ]),
            const Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            Column(children: [
              SizedBox(
                width: 600,
                height: 50,
                child: RaisedButton(
                    child: const Text(
                      'Task 3（Display Json)',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    color: Colors.black,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Task3()));
                    }),
              )
            ]),
          ],
        ),
      ),


      
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 30,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.black87,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.video_call_sharp,
                  color: Colors.black87,
                ),
                label: 'Video'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.shop_2,
                  color: Colors.black87,
                ),
                label: 'Shopping'),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.build,
                  color: Colors.black87,
                ),
                label: 'Setting'),
          ]),
    );
  }
}
