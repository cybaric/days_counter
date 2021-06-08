import 'package:days_counter/view/view_method.dart';
import 'package:flutter/material.dart';

class TimeDuration extends StatefulWidget {
  const TimeDuration({Key? key}) : super(key: key);

  @override
  _TimeDurationState createState() => _TimeDurationState();
}

class _TimeDurationState extends State<TimeDuration> {
  TextEditingController controllerA = TextEditingController();
  TextEditingController controllerB = TextEditingController();
  TextEditingController controllerC = TextEditingController();

  TextEditingController controllerHari = TextEditingController();
  TextEditingController controllerMinggu = TextEditingController();
  TextEditingController controllerBulan = TextEditingController();
  TextEditingController controllerTahun = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView(
          children: [
            Column(
              children: [
                Icon(
                  Icons.alarm_on_rounded,
                  size: 80,
                  color: ViewMethod.pink,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Time Duration',
                  style: TextStyle(fontSize: 30),
                ),
                ViewMethod.garis(ViewMethod.pink),
                Text(
                  'Initial Time',
                  style: TextStyle(
                      color: ViewMethod.ungu, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade200,
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ViewMethod.edit(controllerA, '  Date'),
                      SizedBox(width: 10),
                      ViewMethod.edit(controllerB, 'Month'),
                      SizedBox(width: 10),
                      ViewMethod.edit(controllerC, '  Year')
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Time Duration',
                  style: TextStyle(
                      color: ViewMethod.pink, fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                      color: Colors.indigo.shade200,
                      borderRadius: BorderRadius.circular(5)),
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ViewMethod.edit(controllerHari, 'Days'),
                          SizedBox(width: 10),
                          ViewMethod.edit(controllerMinggu, 'Weeks'),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ViewMethod.edit(controllerBulan, 'Months'),
                          SizedBox(width: 10),
                          ViewMethod.edit(controllerTahun, 'Years'),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(onPressed: (){}, child: Text('Backwards')),
                    SizedBox(width: 100,),
                    ElevatedButton(onPressed: (){}, child: Text('Forwards'))
                  ],
                ),
                SizedBox(
                  height: 500,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text('back'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
