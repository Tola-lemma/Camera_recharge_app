import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './text_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        drawer: InkWell(
          onTap: () async {
            scaffoldKey.currentState!.openDrawer();
          },
          child: Container(
            width: 280,
            child: Drawer(
              elevation: 20,
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFFCFA),
                  shape: BoxShape.rectangle,
                ),
                child: ListView(
                  padding: EdgeInsets.zero,
                  scrollDirection: Axis.vertical,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      width: 7.9,
                      height: 128,
                      decoration: const BoxDecoration(
                        color: Color(0xFF009B77),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.1, 0.15),
                            child: Container(
                              width: 100,
                              height: 100,
                              padding: const EdgeInsets.only(top: 20),
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.asset(
                                'assets/images/logo.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          Text(
                            'Camera Recharge App',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ],
                      ),
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.camera_rounded,
                        color: Color(0xFF010000),
                      ),
                      title: Text(
                        'Recharge',
                        style: CustomTextStyle.subtitle,
                      ),
                      subtitle: Text(
                          'Recharge your account using camera and scan from gallerry  or camera ',
                          style: CustomTextStyle.subtitleText),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.store_sharp,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Text Recognition',
                        style: CustomTextStyle.subtitle,
                      ),
                      subtitle: Text(
                        'Text recognitions',
                        style: CustomTextStyle.subtitleText,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.black,
                        size: 20,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.account_balance,
                        color: Colors.black,
                      ),
                      title: Text(
                        'Balance',
                        style: CustomTextStyle.subtitle,
                      ),
                      subtitle: Text(
                        'Check your Balance Enquires',
                        style: CustomTextStyle.subtitleText,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                    const ListTile(
                      leading: Icon(
                        Icons.contact_mail,
                        color: Color(0xFF050000),
                      ),
                      title: Text(
                        'About',
                        style: CustomTextStyle.subtitle,
                      ),
                      trailing: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF303030),
                        size: 20,
                      ),
                      tileColor: Color(0xFFF5F5F5),
                      dense: false,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: const Color(0xFF009B77),
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            child: const Icon(
              Icons.menu_rounded,
              color: Colors.black,
              size: 30,
            ),
            onTap: () async {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
          title: const Text(
            'Camera Recharge App',
            style: CustomTextStyle.mainTitle,
          ),
          actions: const [],
          centerTitle: false,
          elevation: 35,
        ),
        body: SafeArea(
          child: GestureDetector(
            onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0, -0.3),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 40, 0, 0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print("check balance");
                        
                      },
                      icon: const Icon(
                        Icons.account_balance,
                      ),
                      label: const Text(
                        "Check Balance",
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2816BC),
                          foregroundColor: Colors.grey[300],
                          minimumSize: const Size(88, 36),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          )),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, -0.8),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 40, 0, 0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        print("Recharge Balance");
                  
                      },
                      icon: const Icon(
                        Icons.camera,
                      ),
                      label: const Text(
                        "Recharge Balance",
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2816BC),
                          foregroundColor: Colors.grey[300],
                          minimumSize: const Size(88, 36),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          )),
                    ),
                  ),
                ),
                Container(
                  // alignment: const AlignmentDirectional(0, -0.9),
                  child: Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(8, 40, 0, 0),
                    child: ElevatedButton.icon(
                      
                      onPressed: () {
                        print("Text Recognizer");
                        
                      },
                      icon: const Icon(
                        Icons.store_mall_directory_rounded,
                      ),
                      label: const Text(
                        "Text Recognizer",
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF2816BC),
                          foregroundColor: Colors.grey[300],
                          minimumSize: const Size(88, 36),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          )),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
