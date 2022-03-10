import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'Home.dart';
import 'Morebooks.dart';

class Booksix extends StatefulWidget {
  const Booksix({Key key}) : super(key: key);

  @override
  _BooksixState createState() => _BooksixState();
}

class _BooksixState extends State<Booksix> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#121212'),
      appBar: AppBar(
          leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.white,), onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder:(context)=>Morebooks()));  },),
          elevation: 2,
          backgroundColor: HexColor('#1F1B24'),
          title: Text(' رواية 7 وجوة للحب ',
            style: GoogleFonts.poppins(fontSize: 14,color: Colors.white),)),
      body: Center(
        child: SfPdfViewer.asset('assets/images/book2.pdf',
          canShowPaginationDialog: true,canShowScrollHead: true,enableTextSelection: true,),
      ),
    );
  }
}
