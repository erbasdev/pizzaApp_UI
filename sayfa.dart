import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:projects1/payment.dart';
import 'colors.dart';
import 'dart:ui';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class sayfa1 extends StatelessWidget {
  const sayfa1({super.key});

  @override
  Widget build(BuildContext context) {

    var d = AppLocalizations.of(context);
    return  Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(40),bottomRight: Radius.circular(40))),
        backgroundColor: anatema,
        title: const Padding(
          padding:  EdgeInsets.only(bottom: 11,top: 13),
          child:  Text("Pizza Bulls",style: TextStyle(
            fontFamily: "Pacifico",
            fontSize: 45,
            color: Colors.white,
          ),),
        ),
        centerTitle: true,
      ),
      body:  Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 400,
                height: 250,
                child: Image.asset("images/pizza1.png"),
              ),
            ),
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
           children: [
             Chip(icerik: d!.kucukBoyYazi),
             Chip(icerik: d.ortaBoyYazi),
             Chip(icerik: d.buyukBoyYazi),
           ],
         ),
         Padding(
           padding: const EdgeInsets.all(15.0),
           child: Text(d.pizzaAdi,style:const TextStyle(
             fontSize: 40,
             color: Colors.black,
             fontWeight: FontWeight.bold,
           ),),
         ),
           Text(d.onYazi,style:const TextStyle(
            color: Colors.black,
            fontSize: 15,
             fontWeight: FontWeight.bold,
          ),
           textAlign: TextAlign.center,
           ),
           Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(child: Text(d.icerikYazi)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                   const Padding(
                      padding:  EdgeInsets.only(right: 20),
                      child:  Text("\$ 5.95",style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                       ),
                      ),
                    ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Payment(),));
                }, child: Text(d.sepeteEkleYazi,style: TextStyle(color: Colors.black,fontSize: 25)),style: TextButton.styleFrom(backgroundColor: anatema),),
              ],
            ),
          )
        ],
      ),
      backgroundColor: yantema,
    );
  }
}

// ignore: must_be_immutable
class Chip extends StatelessWidget {
  String icerik;

  Chip({required this.icerik});

  @override
  Widget build(BuildContext context) {
    return TextButton(onPressed: (){}, child: Text(icerik,style: TextStyle(color: Colors.black),),style: TextButton.styleFrom(backgroundColor: anatema));
  }
}

