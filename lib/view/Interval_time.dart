import 'package:days_counter/view/view_method.dart';
import 'package:flutter/material.dart';

class IntervalTime extends StatefulWidget {
  @override
  _IntervalTimeState createState() => _IntervalTimeState();
}

class _IntervalTimeState extends State<IntervalTime> {

  TextEditingController controllerP = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 700,
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Icon(
                Icons.alarm_add,
                size: 80,
                color: ViewMethod.ungu,
              ),
              SizedBox(
                height: 20,
              ),
              Text('Interval Time',
                  style: TextStyle(
                    fontSize: 30,
                  )),
              ViewMethod.garis(ViewMethod.ungu),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 150,
                    height: 200,
                    color: Colors.green,
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 150,
                    height: 200,
                    color: ViewMethod.hijau,
                    child: Column(
                      children: [
                        Text('end'),
                        ViewMethod.textField('date', controllerP)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
            ]),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back'))
        ],
      ),
    );
  }
}
