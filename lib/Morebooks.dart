import 'package:bookstuff/Bookeig.dart';
import 'package:bookstuff/Bookel.dart';
import 'package:bookstuff/Bookfive.dart';
import 'package:bookstuff/Booknin.dart';
import 'package:bookstuff/Booksev.dart';
import 'package:bookstuff/Booksix.dart';
import 'package:bookstuff/Bookten.dart';
import 'package:bookstuff/Home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Bookone.dart';
import 'Booktwo.dart';

class Morebooks extends StatefulWidget {
  const Morebooks({Key key}) : super(key: key);

  @override
  _MorebooksState createState() => _MorebooksState();
}

class _MorebooksState extends State<Morebooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading:IconButton(icon:Icon(Icons.arrow_back,color: Colors.white,), onPressed: () {
      Navigator.push(context,MaterialPageRoute(builder:(context)=>Home()));  },),
        title:Text('More Books',textAlign: TextAlign.center,style: GoogleFonts.poppins(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
        backgroundColor:HexColor('#121212') ,
      ),
      backgroundColor: HexColor('#121212'),
      body: ListView(
        children: <Widget>[
      Container(
      child:SvgPicture.string(
        shape,
        allowDrawingOutsideViewBox: true,
        fit: BoxFit.fill,
      ),
      alignment: Alignment.topLeft,
    ),
          // Part one
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Adding two containers for each card
              Container(
                child: Card(
                    color: HexColor('#121212'),
                    elevation: 2,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child:Column(
                    children: [
                      Image.asset('assets/images/pic1.png',width: 80,),
                      TextButton(onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Bookone()));
                      },
         child:Text('رواية الآن أفهم',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),),
                    ],
                  )
                ),
              ),
              Container(
                child: Card(
                    color: HexColor('#121212'),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Column(
                      children: [
                        Image.asset('assets/images/pic2.png',width: 80),
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Booktwo()));
                        }, child: Text('رواية عقل بلا جسد',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                      ],
                    )
                ),
              )
            ],
          ),
          Divider(color:HexColor('#121212'),),
          // Part two
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Card(
                    color: HexColor('#121212'),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Column(
                      children: [
                        Image.asset('assets/images/pic3.png',width: 80,),
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Bookfive()));
                        },
                          child:Text('رواية  يوتوبيا',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white)),),
                      ],
                    )
                ),
              ),
              Container(
                child: Card(
                    color: HexColor('#121212'),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Column(
                      children: [
                        Image.asset('assets/images/pic4.png',width: 80),
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Booksix()));
                        }, child: Text('رواية 7 وجوة للحب',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                      ],
                    )
                ),
              )
            ],
          ),
          Divider(color:HexColor('#121212'),),
          // Part 3
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Card(
                    color: HexColor('#121212'),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Column(
                      children: [
                        Image.asset('assets/images/pic5.png',width: 80),
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Booksev()));
                        }, child:
                   Text('رواية عزيزى الوغد',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),))
                      ],
                    )
                ),
              ),
              Container(
                child: Card(
                    color: HexColor('#121212'),
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child:Column(
                      children: [
                        Image.asset('assets/images/pic9.png',width: 80),
                        TextButton(onPressed: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Bookeig()));
                        }, child:
                        Text(' رواية حظك اليوم',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                      ],
                    )
                ),
              ),
              ],
          ),
              Divider(color:HexColor('#121212'),),
              // Part 4
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Card(
                        color: HexColor('#121212'),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Column(
                          children: [
                            Image.asset('assets/images/pic6.png',width: 80),
                            TextButton(onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Booknin()));
                            }, child:
                            Text('شربة الحاج داود',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          ],
                        )
                    ),
                  ),
                  Container(
                    child: Card(
                        color: HexColor('#121212'),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Column(
                          children: [
                            Image.asset('assets/images/pic10.png',width: 80),
                            TextButton(onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Bookten()));
                            }, child:
                            Text('تويتات من العصور الوسطى',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          ],
                        )
                    ),
                  ),
                ],
              ),
              Divider(color:HexColor('#121212'),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Card(
                        color: HexColor('#121212'),
                        elevation: 2,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child:Column(
                          children: [
                            Image.asset('assets/images/pic11.png',width:80),
                            TextButton(onPressed: (){
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Bookel()));
                            }, child:
                            Text('فن أن تكون دائما على صواب',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
                          ],
                        )
                    ),
                  ),
                ],

          ),
        ]
      ),

    );
  }
}
const String shape='<svg viewBox="0.0 0.0 142.0 122.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="0" stdDeviation="12"/></filter><linearGradient id="gradient" x1="0.34507" y1="0.204918" x2="0.5" y2="1.0"><stop offset="0.0" stop-color="#ff4cb4a6"  /><stop offset="0.394139" stop-color="#ff44a094"  /><stop offset="1.0" stop-color="#ff265a53"  /></linearGradient></defs><path  d="M 0 0 L 0 122 C 6.680792331695557 119.4051971435547 12.17088222503662 113.5146026611328 12.93526840209961 106.3668670654297 C 13.36046028137207 102.3920059204102 12.38474273681641 98.40918731689453 12.25210094451904 94.41329193115234 C 12.11917495727539 90.41767120361328 13.09770107269287 85.97283935546875 16.34072494506836 83.69126129150391 C 20.0302906036377 81.09588623046875 25.03533554077148 82.26967620849609 29.3484992980957 83.54248046875 C 43.5880012512207 87.74462890625 57.82722091674805 91.94678497314453 72.06644439697266 96.14894104003906 C 80.32182312011719 98.58529663085938 90.73516845703125 100.4199523925781 96.23398590087891 93.72738647460938 C 100.0241470336914 89.11415100097656 99.54557037353516 82.08846282958984 96.83171844482422 76.7540283203125 C 94.11759185791016 71.41991424560547 89.59029388427734 67.31589508056641 85.40554809570312 63.06679916381836 C 80.9437255859375 58.53605651855469 76.68030548095703 53.55355453491211 74.53131103515625 47.53749847412109 C 72.38259887695312 41.52117156982422 72.71871185302734 34.24541854858398 76.80368041992188 29.36390113830566 C 81.77978515625 23.41726684570312 90.65761566162109 22.63805770874023 98.19327545166016 24.23317718505859 C 105.7292251586914 25.82829666137695 112.8382949829102 29.30529594421387 120.477668762207 30.26942253112793 C 128.1173248291016 31.23354911804199 137.0375823974609 28.81484222412109 140.4317932128906 21.81958770751953 C 142.5046539306641 17.54687881469727 142.0912628173828 12.52141380310059 141.6033782958984 7.786979198455811 C 141.3389434814453 5.220052719116211 141.0821075439453 2.574039220809937 141.2138977050781 0 L 0 0 Z" fill="url(#gradient)" fill-opacity="0.43" stroke="none" stroke-width="1" stroke-opacity="0.43" stroke-miterlimit="10" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
