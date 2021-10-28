import 'package:flutter/material.dart';



class Task2 extends StatefulWidget{
  const Task2({Key? key}) : super(key: key);
  @override
  _Task2 createState() => _Task2();
}


class _Task2 extends State<Task2> {

  @override
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          title: const Text('Text'),
        ),
      body: Center(
        child: Column(children: [
          
          const SizedBox(height: 10.0),
          TextFormField(
            style: const TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            ),
            
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
            hintText: 'type something',
            border: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.purple, width: 30.0),
            borderRadius: BorderRadius.circular(5.0)),
            focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.red, width: 5.0),
            borderRadius: BorderRadius.circular(5.0))),
            onChanged: (value) {
              //Do something with this value
            },
          ),
        ]),
      ),
    );
  }
  


}
