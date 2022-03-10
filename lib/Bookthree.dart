import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'Home.dart';

class Bookthree extends StatefulWidget {
  const Bookthree({Key key}) : super(key: key);

  @override
  _BookthreeState createState() => _BookthreeState();
}

class _BookthreeState extends State<Bookthree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#121212'),
      appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.white,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Home())); },),
          elevation: 2,
          backgroundColor: HexColor('#1F1B24'),
          title: Text('كتاب الليالي البيضاء',
            style: GoogleFonts.poppins(fontSize: 14,color: Colors.white),)),
      body: Center(
        child: SfPdfViewer.asset('assets/images/book9.pdf',
          canShowPaginationDialog: true,canShowScrollHead: true,enableTextSelection: true,),
      ),
    );
  }
}
