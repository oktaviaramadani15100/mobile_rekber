import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/screens/auth/login/login_otp.dart';
import 'package:rekber/screens/auth/register/register_personal_data.dart';
import 'package:rekber/widget/data.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
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
      body: Container(
        padding: EdgeInsets.only(
            left: 30,
            right: 30,
            top: MediaQuery.of(context).size.height * 0.15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/transaction.png'))),
            ),
            Text(
              'Mulai Transaksi Anda Di Sini!',
              style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.0018),
            Text(
              'Selamat datang di RekBar, aplikasi revolusioner untuk transfer antar akun dengan konsep rekening bersama. RekBar memberikan solusi inovatif dengan penampungan uang sementara; uang Anda akan aman disimpan hingga transaksi selesai.',
              style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.011,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left: 26, right: 26, bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              minWidth: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              color: secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        RegisterPersonal(),
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
                "Register",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700, fontSize: 10, color: primary),
              ),
            ),
            SizedBox(height: 12),
            MaterialButton(
              minWidth: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              color: primary,
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        LoginOTP(),
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
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 10, color: white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLayoutForWidth601to1050(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
            left: 26,
            right: 26,
            top: MediaQuery.of(context).size.height * 0.15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/transaction.png'))),
            ),
            Text(
              'Mulai Transaksi Anda Di Sini!',
              style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.023,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.0018),
            Text(
              'Selamat datang di RekBar, aplikasi revolusioner untuk transfer antar akun dengan konsep rekening bersama. RekBar memberikan solusi inovatif dengan penampungan uang sementara; uang Anda akan aman disimpan hingga transaksi selesai.',
              style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.014,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.only(left: 26, right: 26, bottom: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MaterialButton(
              minWidth: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              color: secondary,
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        RegisterPersonal(),
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
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                "Register",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w700, fontSize: 10, color: primary),
              ),
            ),
            SizedBox(height: 12),
            MaterialButton(
              minWidth: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              color: primary,
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        LoginOTP(),
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
                  borderRadius: BorderRadius.circular(15)),
              child: Text(
                "Login",
                style: TextStyle(
                    fontWeight: FontWeight.w700, fontSize: 10, color: white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildDefaultLayout(BuildContext context) {
    return Container(
        // Your default layout for other widths
        );
  }
}
