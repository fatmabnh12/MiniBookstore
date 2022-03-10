import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  Timer timer;
  @override
  void initState() {
    super.initState();
    timer=new Timer(const Duration(seconds:2),()=>
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Welcome()
        )
        )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#121212'),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(padding: EdgeInsets.all(4)),
            Center(
              child:SvgPicture.asset('assets/images/red.svg',width: 200,alignment: Alignment.center,),

            )




          ],

        ),
    );
  }
}

