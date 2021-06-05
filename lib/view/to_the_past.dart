import 'package:flutter/material.dart';
import 'view_method.dart';

class PastPage extends StatefulWidget {
  const PastPage({Key? key}) : super(key: key);

  @override
  _PastPageState createState() => _PastPageState();
}

class _PastPageState extends State<PastPage> {
  TextEditingController controller = TextEditingController();
  TextEditingController controller1 = TextEditingController();
  TextEditingController controller2 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [
                ViewMethod.hijau.shade200,
                Colors.purple.shade200,
                Colors.blue.shade200,
                Colors.pink.shade300
              ])),
          child: Column(children: [
            SizedBox(height: 50),
            Icon(
              Icons.alarm,
              size: 80,
              color: ViewMethod.hijau,
            ),
            SizedBox(height: 10),
            Text(
              'To The Past',
              style: TextStyle(fontSize: 30),
            ),
            ViewMethod.garis(ViewMethod.hijau),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ViewMethod.edit(controller, '  Date'),
                SizedBox(width: 10),
                ViewMethod.edit(controller1, 'Month'),
                SizedBox(width: 10),
                ViewMethod.edit(controller2, '  Year')
              ],
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: Text('Calculate')),
            SizedBox(height: 10),
            SizedBox(height: 300),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text('Back')),
            SizedBox(height: 200),
          ]),
        ),
      ]),
    );
  }
}
