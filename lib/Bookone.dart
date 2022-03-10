import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'Home.dart';


class Bookone extends StatefulWidget {
  const Bookone({Key key}) : super(key: key);

  @override
  _BookoneState createState() => _BookoneState();
}

class _BookoneState extends State<Bookone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#121212'),
      appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.white,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Home())); },),
        elevation: 2,
        backgroundColor: HexColor('#1F1B24'),
        title: Text('رواية الآن أفهم ل دأحمد خالد توفيق',
          style: GoogleFonts.poppins(fontSize: 14,color: Colors.white),)),
        body: Center(
          child: SfPdfViewer.asset('assets/images/book8.pdf',
            canShowPaginationDialog: true,canShowScrollHead: true,enableTextSelection: true,),
        ),

    );
  }
}
