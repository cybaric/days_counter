import 'package:flutter/material.dart';
import 'view_method.dart';

class NextPage extends StatefulWidget {
  const NextPage({Key? key}) : super(key: key);

  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  TextEditingController controllerA = TextEditingController();
  TextEditingController controllerB = TextEditingController();
  TextEditingController controllerC = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                ViewMethod.biru.shade400,
                ViewMethod.ungu.shade200,
                ViewMethod.hijau.shade200,
                ViewMethod.pink.shade200
              ])),
          child: Column(children: [
            SizedBox(height: 50),
            Icon(
              Icons.alarm,
              size: 80,
              color: ViewMethod.hijau_muda,
            ),
            SizedBox(height: 10),
            Text(
              'To The Future',
              style: TextStyle(fontSize: 30),
            ),
            ViewMethod.garis(ViewMethod.hijau_muda),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ViewMethod.edit(controllerA, '  Date'),
                SizedBox(width: 10),
                ViewMethod.edit(controllerB, 'Month'),
                SizedBox(width: 10),
                ViewMethod.edit(controllerC, '  Year')
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
