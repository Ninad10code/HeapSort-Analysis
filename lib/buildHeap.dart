import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'buildSort.dart';

//class BuilHeapPage extends StatelessWidget {
//  BuildHeapPage({@required this.input});
//  final String input;
//  @override
//
//  Widget build(BuildContext context) {
//    return BuildHeap();
//  }
//}
class BuildHeap extends StatefulWidget {
  BuildHeap({this.input, this.length, this.array});
  final String input;
  final int length;
  final List array;

  @override
  _BuildHeapState createState() =>
      _BuildHeapState(input: input, length: length, array: array);
}

class _BuildHeapState extends State<BuildHeap> {
  _BuildHeapState({this.input, this.length, this.array});
  final String input;
  final int length;
  List array;
  BuildSort heapify = BuildSort();

  int index = 0;

  bool validate = true;
  void nextStep() {
    if (index == length - 3) {
      validate = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heap Sort Analysis'),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        margin: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(10.0),
              child: Text(
                'You entered: $input',
                style: TextStyle(
                  letterSpacing: 2.0,
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadiusDirectional.circular(4.0)),
              child: Center(
                child: Text(
                  'Step$index',
                  style: TextStyle(
                    letterSpacing: 1.0,
                    fontSize: 15.0,
                    color: Colors.white,
                  ),
                ),
              ),
//              color: Colors.purple,
            ),
            Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                child: Visibility(
                  visible: heapify.isBuildComplete(array,index, length),
                  child: Text(
                      'Build is complete',
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1.0,

//                      backgroundColor: Colors.green,


                    ),

                  ),
                )),
            Container(
                height: 80.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: List.generate(length, (pin) {
                    return Container(
                      width: 80.0,
                      height: 80.0,
                      padding: EdgeInsets.all(20.0),
                      margin: EdgeInsets.all(2.0),
                      color: Colors.blue,
                      child: Text(
                        array[pin].toString(),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 1.0,
                          fontSize: 20.0,
                        ),
                      ),
                    );
                  }),
                )),
            Container(
                margin: EdgeInsets.all(5.0),
                padding: EdgeInsets.all(10.0),
                child: Visibility(
                  visible: !heapify.isBuildComplete(array, index, length),
                  child: GestureDetector(
                    onTap: () {
                      nextStep();
                      setState(() {
                        if (validate) {
                          array = heapify.iterateFunction(array, length, index);
                          index++;
                        }
                      });
                      print('objectnext button is pressed');
                    },
                    child: Container(
                      margin: EdgeInsets.all(5.0),
                      padding: EdgeInsets.all(10.0),
//
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadiusDirectional.circular(4.0)),
                      child: Text(
                        'next',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ),
                ),),
            Container(
              child: Visibility(
                visible: heapify.isBuildComplete(array, index, length),
                child: FlatButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {

                          return ;
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Proceed to sort',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  color: Color(0XFF00cd00),
                ),),
            )
          ],
        ),
      ),
    );
  }
}
