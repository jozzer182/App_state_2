import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _lights = false , a = false, b = false, c = false, d = false, e = false, f = false, g = false;
  bool w1 = false, w2 = false, p = false, dor = false, alarm = false; 

  void cerebro(){
    setState(() {
      c=a|b;
      f=d&e;
      // alarm = (w1&!w2)|(p&w2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Estados"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoSwitch(
                  value: a,
                  onChanged: (bool value) {
                    setState(() {
                      a = value;
                      // c=a|b;
                    });
                    cerebro();
                  },
                ),
                Text("OR"),
                CupertinoSwitch(
                  value: b,
                  onChanged: (bool value) {
                    setState(() {
                      b = value;
                      // c=a|b;
                    });
                    cerebro();
                  },
                ),
                Text("="),
                CupertinoSwitch(
                  value: c,
                  onChanged: (bool value) {
                    setState(() {
                      // c = value;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CupertinoSwitch(
                  value: d,
                  onChanged: (bool value) {
                    setState(() {
                      d = value;
                      // f=d|e;
                    });
                    cerebro();
                  },
                ),
                Text("AND"),
                CupertinoSwitch(
                  value: e,
                  onChanged: (bool value) {          
                    setState(() {
                      e = value;
                    });
                    cerebro();
                  },
                ),
                Text("="),
                CupertinoSwitch(
                  value: f,
                  onChanged: (bool value) {
                    setState(() {
                    });
                  },
                ),
              ],
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text("P"),
            //     CupertinoSwitch(
            //       value: p,
            //       onChanged: (bool value) {          
            //         setState(() {
            //           p = value;
            //         });
            //         cerebro();
            //       },
            //     ),
            //     Text("D"),
            //     CupertinoSwitch(
            //       value: dor,
            //       onChanged: (bool value) {          
            //         setState(() {
            //           dor = value;
            //         });
            //         cerebro();
            //       },
            //     ),
            //     Text("W1"),
            //     CupertinoSwitch(
            //       value: w1,
            //       onChanged: (bool value) {          
            //         setState(() {
            //           w1 = value;
            //         });
            //         cerebro();
            //       },
            //     ),
            //     Text("W2"),
            //     CupertinoSwitch(
            //       value: w2,
            //       onChanged: (bool value) {          
            //         setState(() {
            //           w2 = value;
            //         });
            //         cerebro();
            //       },
            //     ),
            //   ],
            // ),
            // Text("Alarm"),
            // CupertinoSwitch(
            //   value: alarm,
            //   onChanged: (bool value) {
            //     setState(() {
            //       alarm = value;
            //     });
            //     cerebro();
            //   },
            // ),
            // CupertinoSwitch(
            //   value: _lights,
            //   onChanged: (bool value) {
            //     setState(() {
            //       _lights = value;
            //     });
            //   },
            // ),
          ],
        ),
      ),
    );
  }
}
