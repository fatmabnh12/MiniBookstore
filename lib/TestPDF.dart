import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class TestPDF extends StatefulWidget {
  const TestPDF({Key key}) : super(key: key);

  @override
  _TestPDFState createState() => _TestPDFState();
}

class _TestPDFState extends State<TestPDF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SfPdfViewer.asset('assets/images/book1.pdf',
          canShowPaginationDialog: true,canShowScrollHead: true,enableTextSelection: true,),
      ),


    );
  }
}
