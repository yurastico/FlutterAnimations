import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
 const LogoWidget({super.key});
@override
 Widget build(BuildContext context) {
   return Container(
     margin: const EdgeInsets.symmetric(vertical: 10),
     child: const FlutterLogo(),
   );
} }