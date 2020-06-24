import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
  BuildHeap({this.input,this.length,this.array});
   final String input;
   final int length;
   final List array;

  @override
  _BuildHeapState createState() => _BuildHeapState(input: input,length: length);
}

class _BuildHeapState extends State<BuildHeap> {

  _BuildHeapState({this.input,this.length,this.array});
  final String input;
  final int length;
  final List array;


  int index=0;
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
              child: Text(
                'Step$index',
                style: TextStyle(
                  letterSpacing: 1.0,
                  fontSize: 15.0,
                  color: Colors.white,
                ),
              ),
              color: Colors.purple,
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Expanded(

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
