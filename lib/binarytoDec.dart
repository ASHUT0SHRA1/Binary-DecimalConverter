import 'dart:math';

import 'package:flutter/material.dart';
import 'package:numsysconvy/button.dart';

class BinToDec extends StatefulWidget {
  const BinToDec({Key? key}) : super(key: key);

  @override
  State<BinToDec> createState() => _BinToDecState();
}

class _BinToDecState extends State<BinToDec> {
  var BinController = TextEditingController();
  var result ="";
  var bgColor = Colors.blue.shade200;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Binary To Decimal'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
    child: new SingleChildScrollView(
    child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TextField(
              controller: BinController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(  borderSide:
                BorderSide(width: 3, color: Colors.lightBlueAccent),),
                label: Text('Enter Number in 0&1 form '),
                prefixIcon: Icon(Icons.line_weight),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(
              height : 30
            ),
            MyButton(iconData: Icons.numbers_rounded, buttonText: 'Convert',
              onTap: (){
                var bin = BinController.text.toString();
    int binary = int.parse(bin);
    int temp = binary;
    int decimal = 0;
    int i = 0;
    while (temp > 0) {
    int rem = temp % 10;
    if(rem != 0 && rem != 1){
      decimal = 0 ;
      break;
    }
    decimal = decimal + (rem * pow(2, i)) as int;
    temp = (temp ~/10);
    i++;
    }
    print("$decimal is the decimal value of $binary");
    if(decimal != 0) {
      setState(() {
        result = " Decimal Val = $decimal  ";
      });
    }
    else{
      setState(() {
        result = "Invalid Input ";
      });
    }
    },
            ),
            SizedBox(
              height: 40,
            ),
            Text(result,style: TextStyle(fontSize: 34,fontWeight: FontWeight.bold),),
            Container(
              height: 400,
              width: 300,
              child: Image.asset('assets/img.png'),
            )
          ],
        ),
      ),
      ),
    );
  }
}
