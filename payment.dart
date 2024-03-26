import 'package:flutter/material.dart';
import 'package:projects1/sayfa.dart';
import 'colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Payment extends StatelessWidget {
  const Payment({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
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
      body: Center(
        child: Column(
          children: [
            Row(
              children: [
            Padding(
              padding: const EdgeInsets.only(left: 25,top: 5),
              child: Container(
                  width: 150,
                  height: 150,
                  child: Image.asset("images/pizza1.png"),
                   ),
                 ),
                const Padding(
                  padding:  EdgeInsets.only(left: 45),
                  child:  Text("x1",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 75),
                  child: Text("\$5.99",style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                ))
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25,top: 5),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image.asset("images/pizza1.png"),
                  ),
                ),
                const Padding(
                  padding:  EdgeInsets.only(left: 45),
                  child:  Text("x3",style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  )),
                ),
                const Padding(
                    padding:  EdgeInsets.only(left: 75),
                    child: Text("\$17.65",style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ))
                ),
              ],
            ),
            Container(
              width: 500,
              height: 100,
              color: const Color(0xFFFF5252),
              child: Padding(
                padding: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: Image.asset("images/pizza1.png"),
                        ),
                        Text(,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: Image.asset("images/pizza1.png"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: Image.asset("images/pizza1.png"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          width: 100,
                          height: 50,
                          child: Image.asset("images/pizza1.png"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
