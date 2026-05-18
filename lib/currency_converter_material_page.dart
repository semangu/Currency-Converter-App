import 'package:flutter/material.dart';

// 1. Create a variable that stores the converted currency value
// 2. Create a function that multiplies the value given by the textfield with value
// 3. Store the value in the variable that we created
// 4. display the variable
class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() => 
  _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState extends State<CurrencyConverterMaterialPage>{
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  
  void convert(){
    result = double.parse(textEditingController.text)* 45;
    setState(() {});
  }
  
  @override
  Widget build(BuildContext context) {
    print('rebuilt');
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2.0,
        style: BorderStyle.solid,
        strokeAlign: BorderSide.strokeAlignOutside,
      ),
      borderRadius: BorderRadius.circular(60),
    );

    return Scaffold(
      // Scaffold'a const dersen tüm widgetlar da const olmalı
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        elevation: 0,
        title: const Text('Currency Converter (USD > TRY)' ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'TRY ${result!=0 ? result.toStringAsFixed(2) : result.toStringAsFixed(0)}',
                style: const TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                
              ),
          
              TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in TRY',
                  hintStyle: const TextStyle(color: Colors.black),
                  prefixIcon: const Icon(Icons.monetization_on_outlined),
                  prefixIconColor: Colors.black,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,
                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: Size(double.infinity, 50),   
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    ),
                   ),
                child: const Text('Convert'),
                ),
            ],
          ),
        ),
      ),
    );
  }
  }