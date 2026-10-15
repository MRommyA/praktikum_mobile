import 'package:flutter/material.dart';
import 'package:tugas3/KalkulatorBMIScreen.dart';

void main() {
  runApp(const KalkulatorBMI());
}

class KalkulatorBMI extends StatelessWidget {
  const KalkulatorBMI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kalkulator BMI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      home: KalkulatorBMIScreen(),
    );
  }
}