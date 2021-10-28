import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Task3 extends StatefulWidget {
  const Task3({Key? key}) : super(key: key);
  @override
  _Task3 createState() => _Task3();
}

class _Task3 extends State<Task3> {

  final String host = 'https://jsonplaceholder.typicode.com/posts';
  getData() {
    return http.get(Uri.parse(host));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json'),
      ),
      body: FutureBuilder(
        future: getData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            List datas = jsonDecode(snapshot.data.body);

            return ListView.builder(
                itemCount: datas.length,
                itemBuilder: (context, idx) {
                  var data = datas[idx];
                  return Card(
                    child: ListTile(
                        tileColor: Colors.yellow,
                        leading: Container(
                          alignment: Alignment.center,
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(22.2),
                            color: Colors.black,
                          ),
                          child: Text(
                            data['id'].toString(),
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        title: Text(
                          data['title'].toString(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          data['body'].toString(),
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black38,
                          ),
                        )),
                  );
                });
          } else if (snapshot.hasError) {
            print('Error: ${snapshot.error}');
            return Container();
          } else {
            print('Awaiting result...');
            return Container();
          }
        },
      ),
    );
  }
}
