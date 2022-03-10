import 'package:bookstuff/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}


class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#121212'),
      body: ListView(
       children: [
    Padding(
        padding: EdgeInsets.all(50)),
         SvgPicture.asset('assets/images/illus.svg',width: 300,),
        Padding(padding: EdgeInsets.all(30)),
        Center(
            child: Text('A reader lives a thousand lives \n'
                'before he dies',style: GoogleFonts.poppins(fontSize: 20,color: Colors.white),textAlign: TextAlign.center,)),
           Padding(padding: EdgeInsets.all(50)),
         Center(
           child:ElevatedButton(onPressed: () {
             Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
           },
          style: ElevatedButton.styleFrom(
      primary: HexColor('#56C596'),
    minimumSize: Size(180,35),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(30)
    )
    ), child: Text('Get Started',style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600)),

    ),
         ),
    ]


)
    );
  }
}
const String shape='<svg viewBox="0.0 0.0 91.3 171.5" ><path transform="translate(-96.49, -86.0)" d="M 187.7751770019531 248.6250305175781 C 187.7751770019531 248.6250305175781 136.2916259765625 222.5716247558594 158.2936706542969 164.3784027099609 C 180.2957153320312 106.1851654052734 100.636474609375 86 100.636474609375 86 C 100.636474609375 86 85.03247833251953 142.6630554199219 114.3488006591797 180.3968658447266 C 143.6651153564453 218.1306762695312 154.9746704101562 280.7773132324219 187.7751770019531 248.6250305175781 Z" fill="#5abd8c" fill-opacity="0.5" stroke="none" stroke-width="1" stroke-opacity="0.5" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
