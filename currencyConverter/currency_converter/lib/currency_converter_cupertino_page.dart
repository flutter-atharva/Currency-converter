import 'package:flutter/cupertino.dart';

class CurrencyConvrterCupertinoPage extends StatefulWidget {
  const CurrencyConvrterCupertinoPage({super.key});

  @override
  State<CurrencyConvrterCupertinoPage> createState() => _CurrencyConvrterCupertinoPageState();
}

class _CurrencyConvrterCupertinoPageState extends State<CurrencyConvrterCupertinoPage> {
  double result = 0;
  final textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          backgroundColor: CupertinoColors.systemGrey3,
          middle:  Text("Currency Converter"),
        ),
        backgroundColor: CupertinoColors.systemGrey3,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " INR ${result != 0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}",
                style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold, color: CupertinoColors.white),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: CupertinoTextField(
                  controller: textEditingController,
                  style: const TextStyle(color: CupertinoColors.black),
                  decoration:  BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  placeholder: "Enter the amount here",
                  prefix: Icon(CupertinoIcons.money_dollar),
                  keyboardType: const TextInputType.numberWithOptions(
                    decimal: true,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: CupertinoButton(
                    onPressed: () {
                      setState(() {
                        result = double.parse(textEditingController.text) * 81;
                      });
                    },
                    color: CupertinoColors.black,
                    child: const Text("Convert")),
              ),
            ],
          ),
        ));
  }
}
  
