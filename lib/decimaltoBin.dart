import 'dart:math';

import 'package:flutter/material.dart';

import 'button.dart';

class DecToBin extends StatefulWidget {
  const DecToBin({Key? key}) : super(key: key);


  @override
  State<DecToBin> createState() => _DecToBinState();
}

class _DecToBinState extends State<DecToBin> {
  var DecController = TextEditingController();
  var result ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Decimal to Binary'),
    ),
      body: Padding(
    padding: const EdgeInsets.all(16.0),
    child: new SingleChildScrollView(
    child: new Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    TextField(
    controller: DecController,
    decoration: InputDecoration(
    enabledBorder: OutlineInputBorder(  borderSide:
    BorderSide(width: 3, color: Colors.lightBlueAccent),),
    label: Text('Enter Number in 0&1 form '),
    prefixIcon: Icon(Icons.line_weight),
    ),
    keyboardType: TextInputType.number,
    ),
    MyButton(iconData: Icons.numbers_rounded, buttonText: 'Convert',
    onTap: (){
    var bin = DecController.text.toString();
    int binary = int.parse(bin);
    int? temp = binary;
    int decimal = 0;
    int pw = 1;
    while (temp! > 0) {
    int rem = temp % 2;
    decimal = decimal + (rem * pw) as int;
    pw *= 10 ;
    temp = (temp! ~/2 );
    }
    print("$decimal is the decimal value of $binary");
    setState(() {
    result = " Binary Val = $decimal  ";
    });
    },
    ),
    SizedBox(
    height: 40,
    ),
    Text(result,style: TextStyle(fontSize: 34,
        fontWeight: FontWeight.bold),
    ),
      Container(
        height: 400,
        width: 300,
        child: Image.asset('assets/img_1.png'),
      )

    ],

    ),
    ),
      ),
    );
  }
}
