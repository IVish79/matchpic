import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:matchpic/one.dart';
import 'package:matchpic/one1.dart';

class splas_lot extends StatefulWidget {
  const splas_lot({Key? key}) : super(key: key);

  @override
  State<splas_lot> createState() => _splas_lotState();
}

class _splas_lotState extends State<splas_lot> {
  @override
  void initState() {
    super.initState();

    gonext();
  }

  gonext() async {
    await Future.delayed(Duration(seconds: 10));
    Navigator.pushReplacement(context, MaterialPageRoute(
      builder: (context) {
        return one();
      },
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF5FACF0),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Container(
            child: Lottie.network(
                'https://assets10.lottiefiles.com/packages/lf20_PmGV4skHBv.json'),
          )),
        ],
      ),
    );
  }
}
