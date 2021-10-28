// ignore_for_file: unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Task1 extends StatefulWidget {
  const Task1({Key? key}) : super(key: key);

  @override
  _Task1 createState() => _Task1();
}

class _Task1 extends State<Task1> {
  bool checkbox1 = true;
  bool checkbox2 = false;
  bool radio1 = true;
  bool radio2 = false;
  String? dropdownValue = 'A';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formKey,
        appBar: AppBar(
          title: const Text('Form'),
        ),
        body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(children: [
              const Text('TextFormField'),
              const SizedBox(height: 10.0),
              TextFormField(
        keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      hintText: 'write something',
                      border: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 32.0),
                          borderRadius: BorderRadius.circular(5.0)),
                      focusedBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(color: Colors.grey, width: 1.0),
                          borderRadius: BorderRadius.circular(5.0))),
                  onChanged: (value) {
                    //Do something with this value
                  },
                ),
                const SizedBox(height: 10.0),
                const Text('CheckBox'),
                const SizedBox(height: 10.0),
                Row(children: [
                  SizedBox(
                    width: 10,
                    child: Checkbox(
                      value: checkbox1,
                      activeColor: Colors.orange,
                      onChanged: (value) {
                        //value may be true or false
                        setState(() {
                          checkbox1 = !checkbox1;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  const Text('One')
                ]),
                Row(children: [
                  SizedBox(
                    width: 10,
                    child: Checkbox(
                      value: checkbox2,
                      activeColor: Colors.orange,
                      onChanged: (value) {
                        //value may be true or false
                        setState(() {
                          checkbox2 = !checkbox2;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  const Text('Two')
                ]),
                const SizedBox(height: 10.0),
                const Text('Radio Button'),
                const SizedBox(height: 10.0),
                Row(children: [
                  SizedBox(
                    width: 10,
                    child: Radio(
                      value: radio1,
                      groupValue: radio1,
                      activeColor: Colors.orange,
                      onChanged: (value) {
                        //value may be true or false
                        setState(() {
                          radio1 = !radio2;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  const Text('One')
                ]),
                Row(children: [
                  SizedBox(
                    width: 10,
                    child: Radio(
                      value: radio2,
                      groupValue: radio2,
                      activeColor: Colors.orange,
                      onChanged: (value) {
                        setState(() {
                          radio2 = !radio1;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 10.0),
                  const Text('TWO')
                ]),
                const SizedBox(height: 10.0),
                const Text('DropDown Button'),
                const SizedBox(height: 10.0),
                Container(
                  padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(3.0)),
                  child: DropdownButton<String>(
                    value: dropdownValue,
                    isExpanded: true,
                    icon: const Icon(Icons.keyboard_arrow_down, size: 22),
                    underline: const SizedBox(),
                    items: <String>['A', 'B', 'C', 'D'].map((String value) {
                      return new DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        dropdownValue = value;
                      });
                    },
                  ),
                ),

              

            TextButton(
            onPressed: () {},
            child: const Text('One'),
            style: TextButton.styleFrom(primary: Colors.red)
             ),

            ElevatedButton(
            onPressed: () {},
            child: const Text('Two'),
            style: ElevatedButton.styleFrom(
            primary: Colors.pink,
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)),
            elevation: 4.0,
            )),
             
            OutlinedButton(
            onPressed: () {},
            child: const Text('Three'),
            style: OutlinedButton.styleFrom(
            primary: Colors.black,
            side: const BorderSide(color: Colors.purple),
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
                ),
               ),
              )

              ])),
        ));
  }
}
