import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/currency_converter_cupertino_page.dart';
import 'package:flutter_application_1/currency_converter_material_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyMaterialPage2()
    );
  }
}

class MyCupertionoApp extends StatelessWidget {
  const MyCupertionoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConvrterCupertinoPage(),
    );
  }
}