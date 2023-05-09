import 'package:flutter/material.dart';
import 'package:numsysconvy/button.dart';
import 'package:numsysconvy/decimaltoBin.dart';
import 'package:numsysconvy/binarytoDec.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child:
        Text('Choose Converter',style: TextStyle(
          color: Colors.blue,
          fontSize: 25
        ),)),
      ),
      body:Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 230,
            ),

            MyButton(iconData: Icons.numbers,
                buttonText: 'Binary To Decimal',
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> BinToDec()));
                },),
            SizedBox(height: 30,),
            MyButton(iconData: Icons.numbers_rounded,
                buttonText:' Decimal To Binary',
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> DecToBin()));

            },)

          ],
        ),
      ) ,
    );
  }
}
