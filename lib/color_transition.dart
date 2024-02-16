import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ColorTransition extends StatelessWidget {
  const ColorTransition({required this.animation, super.key});
  final Animation<double> animation;
  static final _colorTween = ColorTween(begin: Colors.orange, end: Colors.red);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
//To separate the transition from the widget,

          child: AnimatedBuilder(
            animation: animation,
            builder: (context, child) {
              return Badge(
                backgroundColor: _colorTween.evaluate(animation),
                isLabelVisible: true,
                label: const Text("9"),
                child: TextButton(
                  onPressed: () {},
                  child: const Text("Alertas"),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
