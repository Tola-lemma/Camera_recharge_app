import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './text_style.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF009B77),
        title: Text('About the Application',
            style: GoogleFonts.poppins(textStyle: CustomTextStyle.mainTitle)),
        elevation: 30,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                child: Container(
                  width: 100,
                  height: 100,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8, 0, 8, 6),
              child: Container(
                width: 437.8,
                height: 350,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white,
                      Color(0xFFADD8E6),
                      Color(0xFFADD8E6),
                      Color(0xFFADD8E6),
                      Colors.white
                    ],
                    stops: [0, 0.5, 0.5, 0.5, 1],
                    begin: AlignmentDirectional(0.1, -1),
                    end: AlignmentDirectional(-0.1, 1),
                  ),
                ),
                alignment: AlignmentDirectional(0, 0),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
                  child: Text(
                      'This Mobile Application is provide you recharging your mobile via camera, check balance of your account and additionally text recognition from image and from camera.\n\n\nThank you for visiting our About page we appreciate your interest in getting to know us better!  \n \n©2023\n\n',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.notoSerif(
                          textStyle: CustomTextStyle.bodyText)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
