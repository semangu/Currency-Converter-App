import 'package:flutter/material.dart';
import 'currency_converter_material_page.dart'; //relative importing

void main(List<String> args) {
  runApp(const MyApp());
}
// Types of widgets in terms of UI
// StateslessWidget -immutable, cannot be changed 
// StatefulWidget - mutable, can be changed

// State: some data that your widget care about

  class MyApp extends StatelessWidget {
    const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) { //stateless widget her zaman widget return eder, null olamaz
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}