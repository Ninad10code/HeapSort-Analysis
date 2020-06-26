import 'package:flutter/material.dart';
import 'heapSort.dart';
import 'myHomePage.dart';
class SortHeap extends StatefulWidget {
  SortHeap({this.input, this.length, this.array});
  final String input;
  final int length;
  final List array;
  @override
  _SortHeapState createState() =>
      _SortHeapState(input: input, length: length, array: array);
}

class _SortHeapState extends State<SortHeap> {
  int index = 0;
  _SortHeapState({this.input, this.length, this.array});
  final String input;
  final int length;
  List array;
  HeapSort heapiSort = HeapSort();

  bool validate = true;
  void nextStep() {
    if (index == length - 1) {
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
                  visible: !validate,
                  child: Text(
                    'Sorting is completed',
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
                visible: validate,
                child: GestureDetector(
                  onTap: () {
                    nextStep();
                    setState(() {
                      if (validate) {
                        array = heapiSort.sortFunction(
                            array, length, length - index - 1);
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
              ),
            ),
            Container(
              child: Visibility(
                visible: !validate,
                child: FlatButton(
                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {

                          return MyHomePage();
                        },
                      ),
                    );
                  },
                  child: Text(
                    'Back to Home page',
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
