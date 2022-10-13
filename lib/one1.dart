import 'package:flutter/material.dart';

class one1 extends StatefulWidget {
  const one1({Key? key}) : super(key: key);

  @override
  State<one1> createState() => _one1State();
}

class _one1State extends State<one1> {
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
                child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 3,
                    ),
                    children: [
                      Card(
                        child: Image.asset("aguacate.png"),
                      ),Card(
                        child: Image.asset("aguacate.png"),
                      ),Card(
                        child: Image.asset("ajo.png"),
                      ),Card(
                        child: Image.asset("ardilla.png"),
                      ),Card(
                        child: Image.asset("barco.png"),
                      ),Card(
                        child: Image.asset("bellota.png"),
                      ),Card(
                        child: Image.asset("bombon.png"),
                      ),
                      Card(
                        child: Image.asset("caballo.png"),
                      ),Card(
                        child: Image.asset("calabaza.png"),
                      ),Card(
                        child: Image.asset("campana.png"),
                      ),

                    ]),
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
    for (int i = 1; i <= 5; i++) {
      await Future.delayed(Duration(seconds: 1));
      setState(() {
        s++;
      });
    }
    v = false;
  }
}
