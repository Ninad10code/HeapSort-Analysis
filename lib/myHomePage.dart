import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String input;

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
//          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(10.0),

//              color: Colors.purple,
              child: Text(
                  'Enter the input',
                  style: TextStyle(
                    fontSize: 30.0,
                    letterSpacing: 2.0,

                  ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(5.0),
              padding: EdgeInsets.all(10.0),
//              color: Colors.purple,

              child: TextFormField(
                decoration: InputDecoration(
//                    labelText: 'Enter your username',
                hintText: 'Enter here',
                  focusColor: Colors.amber,


                ),
                onChanged: (String value){
                  input=value;
                },
              ),


            ),
            Container(
              child: FlatButton(
                onPressed: (){
                  print('button is clicked');
                },
                child: Text(
                    'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Color(0XFF00cd00),
              )
            ),
          ],
        ),
      ),
    );
  }
}
