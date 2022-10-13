import 'package:flutter/material.dart';

class one extends StatefulWidget {
  const one({Key? key}) : super(key: key);

  @override
  State<one> createState() => _oneState();
}

class _oneState extends State<one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        body: Column(
          children: [
            Slider(
              onChanged: (value) {},
              value: s,
              min: 1,
              max: 6,
            ),
            Visibility(
              visible: v,
              child: Container(
                height: 100,
                width: 100,
                child: Image.asset("images/flamenco.png"),
              ),
              replacement: Container(
                height: 100,
                width: 100,
                color: Colors.black,
              ),
            ),
          ],
        ));
  }

  double s = 1;
  bool v = true;

  @override
  void initState() {
    super.initState();
    get();
  }

  get() async {
    for (int i=1; i<=5;i++) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        s++;
      });
    }
    v=false;
  }
}
