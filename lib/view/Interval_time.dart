import 'package:days_counter/view/view_method.dart';
import 'package:flutter/material.dart';

class IntervalTime extends StatefulWidget {
  @override
  _IntervalTimeState createState() => _IntervalTimeState();
}

class _IntervalTimeState extends State<IntervalTime> {
  TextEditingController controllerK = TextEditingController();
  TextEditingController controllerL = TextEditingController();
  TextEditingController controllerM = TextEditingController();

  TextEditingController controllerP = TextEditingController();
  TextEditingController controllerQ = TextEditingController();
  TextEditingController controllerR = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 800,
            margin: EdgeInsets.all(10),
            child: Column(children: [
              Icon(
                Icons.timelapse,
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
                    padding: EdgeInsets.all(10),
                    width: 150,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          'Start',
                          style:
                              TextStyle(fontSize: 20, color: ViewMethod.ungu),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'hari',
                          style: TextStyle(color: ViewMethod.putih),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ViewMethod.textField('date', controllerK),
                        SizedBox(
                          height: 5,
                        ),
                        ViewMethod.textField('month', controllerL),
                        SizedBox(
                          height: 5,
                        ),
                        ViewMethod.textField('year', controllerM),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    width: 150,
                    height: 300,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Text(
                          'End',
                          style:
                              TextStyle(fontSize: 20, color: ViewMethod.ungu),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text(
                          'hari',
                          style: TextStyle(color: ViewMethod.putih),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        ViewMethod.textField('date', controllerP),
                        SizedBox(
                          height: 5,
                        ),
                        ViewMethod.textField('month', controllerQ),
                        SizedBox(
                          height: 5,
                        ),
                        ViewMethod.textField('year', controllerR),
                        SizedBox(
                          height: 5,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
            height: 20,
          ),
              ElevatedButton(
              onPressed: () {},
              child: Text('Calculate')),
              SizedBox(
                height: 200,
              ),
              ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back')),
            ]),
          ),
          
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
