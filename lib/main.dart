import 'package:days_counter/view/Interval_time.dart';
import 'package:days_counter/view/time_duration.dart';
import 'package:days_counter/view/to_the_future.dart';
import 'view/to_the_past.dart';
import 'package:flutter/material.dart';
import 'view/view_method.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MainPage());
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBar(
              bottom: TabBar(
                tabs: [Tab(text: 'Saved Date'), Tab(text: 'Days Counter')],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Text('ini diisi list tersimpan'),
              ),
              Center(
                child: ListView(children: [
                  Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [
                          ViewMethod.hijau.shade200,
                          Colors.purple.shade200,
                          Colors.blue.shade200,
                          Colors.pink.shade200
                        ])),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 50,
                        ),
                        Icon(
                          Icons.alarm,
                          size: 80,
                          color: Colors.redAccent,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return PastPage();
                                }));
                              },
                              child: itemContainer(
                                  Colors.green,
                                  Icon(
                                    Icons.watch_later_outlined,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  'To The Past'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return NextPage();
                                }));
                              },
                              child: itemContainer(
                                  Colors.lightGreen,
                                  Icon(
                                    Icons.alarm_add,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  'To The Future'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return IntervalTime();
                                }));
                              },
                              child: itemContainer(
                                  Colors.deepPurpleAccent,
                                  Icon(
                                    Icons.timelapse,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  'Interval Time'),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return TimeDuration();
                                }));},
                              child: itemContainer(
                                  Colors.purpleAccent,
                                  Icon(
                                    Icons.alarm_on,
                                    color: Colors.white,
                                    size: 40,
                                  ),
                                  'Time Duration'),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        
                        SizedBox(
                          height: 300,
                        ),
                      ],
                    ),
                  ),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container itemContainer(Color colors, Icon icon, String text) {
    return Container(
      width: 100,
      height: 150,
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          icon,
          Text(
            text,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
