import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildHeap extends StatefulWidget {
  @override
  _BuildHeapState createState() => _BuildHeapState();
}

class _BuildHeapState extends State<BuildHeap> {
  String input;
  BuildHeap(input)
  {
    this.input=input;
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
              child: Text(
                'You entered $input',
              ),
            )
          ],
        ),
      ),
    );
  }
}
