import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/screens/auth/register/register_pin.dart';
import 'package:rekber/widget/data.dart';

class RegisterEKYC extends StatefulWidget {
  const RegisterEKYC({super.key});

  @override
  State<RegisterEKYC> createState() => _RegisterEKYCState();
}

class _RegisterEKYCState extends State<RegisterEKYC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final width = constraints.maxWidth;

          // Check if the width is between 250 and 581
          if (width >= 250 && width <= 600) {
            // Render the layout for width between 250 and 581
            return buildLayoutForWidth250to600(context);
          } else if (width > 601 && width <= 1050) {
            // Render the layout for width between 582 and 850
            return buildLayoutForWidth601to1050(context);
          } else {
            // Render a default layout for other widths
            return buildDefaultLayout(context);
          }
        },
      ),
    );
  }

  Widget buildLayoutForWidth250to600(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 30,
                right: 30,
                top: MediaQuery.of(context).size.height * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upload Kartu Identitas mu',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 30),
                Text(
                  '1. Upload KTP mu',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w600),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img/identity_card_ktp.png'),
                    )),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  RegisterPIN(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: primary),
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        'Upload',
                        style: GoogleFonts.poppins(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.014,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  '2. Upload KTP mu',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w600),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/img/identity_card_dll.png'))),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: primary),
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        'Upload',
                        style: GoogleFonts.poppins(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.014,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.06,
                    color: primary,
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  RegisterPIN(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Selanjutnya",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height * 0.014,
                          color: white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget buildLayoutForWidth601to1050(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
                left: 30,
                right: 30,
                top: MediaQuery.of(context).size.height * 0.04),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upload Kartu Identitas mu',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 30),
                Text(
                  '1. Upload KTP mu',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w600),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/img/identity_card_ktp.png'),
                    )),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  RegisterPIN(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: primary),
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        'Upload',
                        style: GoogleFonts.poppins(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.014,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  '2. Upload KTP mu',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w600),
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.3,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/img/identity_card_dll.png'))),
                  ),
                ),
                Center(
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                      decoration: BoxDecoration(
                          border: Border.all(color: primary),
                          borderRadius: BorderRadius.circular(12)),
                      child: Text(
                        'Upload',
                        style: GoogleFonts.poppins(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.014,
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 30),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.06,
                    color: primary,
                    onPressed: () {
                      Navigator.push(
                        context,
                        PageRouteBuilder(
                          pageBuilder:
                              (context, animation, secondaryAnimation) =>
                                  RegisterPIN(),
                          transitionsBuilder:
                              (context, animation, secondaryAnimation, child) {
                            const begin = Offset(1.0, 0.0);
                            const end = Offset.zero;
                            const curve = Curves.easeInOut;

                            var tween = Tween(begin: begin, end: end)
                                .chain(CurveTween(curve: curve));

                            var offsetAnimation = animation.drive(tween);

                            return SlideTransition(
                              position: offsetAnimation,
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12)),
                    child: Text(
                      "Selanjutnya",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.height * 0.014,
                          color: white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }

  Widget buildDefaultLayout(BuildContext context) {
    return Container(
        // Your default layout for other widths
        );
  }
}
