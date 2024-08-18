import 'package:flutter/material.dart';

// class Test {
//   Test(String type);

//   int a;
//   void doSomething() {

//   }
// }

// void test {
//   Test t = Test();
//   t.doSomething();
// }
void onPressed() {

}

class Mybutton extends StatelessWidget {
  Mybutton({super.key, required this.type, required this.fontSize});

  Mybutton.filled({
    this.type = "filled",
    this.fontSize = 40.0,
  });
  Mybutton.outlined({
    this.type = "outlined",
    this.fontSize = 20.0,
  });

  String type;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    if (type == "filled") {
      return Card.filled(
        child: Text(
          "filled",
          style: TextStyle(fontSize: fontSize),
        ),
      );
    } else if (type == "outlined") {
      return Card.outlined(
        child: Text(
          "outlined",
          style: TextStyle(fontSize: fontSize),
        ),
      );
    } else {
      return ElevatedButton(onPressed: onPressed, child: child, en)
    }
  }
}
