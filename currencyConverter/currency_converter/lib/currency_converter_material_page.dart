import 'package:flutter/material.dart';

class CurrencyMaterialPage2 extends StatefulWidget {
  const CurrencyMaterialPage2({super.key});
  @override
  State<CurrencyMaterialPage2> createState() => _CurrencyMaterialPageState();
}

class _CurrencyMaterialPageState extends State<CurrencyMaterialPage2> {
  double result = 0;
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
        borderSide: BorderSide(
          width: 2.0,
          style: BorderStyle.solid,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)));

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          // elevation: 0,
          title: const Text("Currency Converter"),
        ),
        backgroundColor: Colors.blueGrey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white70),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(color: Colors.black54),
                  decoration: const InputDecoration(hintText: "Enter the amount here", hintStyle: TextStyle(color: Colors.black54), prefixIcon: Icon(Icons.attach_money_outlined), prefixIconColor: Colors.black54, filled: true, fillColor: Colors.white30, focusedBorder: border, enabledBorder: border),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        result = double.parse(textEditingController.text) * 81;
                      });
                    },
                    style: TextButton.styleFrom(backgroundColor: Colors.white24, foregroundColor: Colors.black, textStyle: TextStyle(color: Colors.black), minimumSize: Size(double.infinity, 50), shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(7)))),
                    child: const Text("Convert")),
              ),
            ],
          ),
        ));
  }
}
