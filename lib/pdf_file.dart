import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';

class PDFFile extends StatefulWidget {
  String img_name;
  String app_name;
  static final String id = "pdf_file";

   PDFFile({super.key,required this.img_name,required this.app_name});

  @override
  State<PDFFile> createState() => _PDFFileState();
}

class _PDFFileState extends State<PDFFile> {
  late PdfControllerPinch pdfControllerPinch;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    pdfControllerPinch =
        PdfControllerPinch(document: PdfDocument.openAsset(widget.img_name));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.app_name),
      ),
      body: Column(
        children: [
          pdfOpen(),

        ],
      ),
    );
  }

  Widget pdfOpen() {
    return Expanded(
      child: PdfViewPinch(
        controller: pdfControllerPinch,
        scrollDirection: Axis.vertical,
      ),
    );
  }
}
