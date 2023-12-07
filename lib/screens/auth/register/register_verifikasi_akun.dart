import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/widget/data.dart';
import 'package:rekber/widget/main_layout.dart';

class VerifikasiAkun extends StatefulWidget {
  const VerifikasiAkun({super.key});

  @override
  State<VerifikasiAkun> createState() => _VerifikasiAkunState();
}

class _VerifikasiAkunState extends State<VerifikasiAkun> {
  final _formKey = GlobalKey<FormState>();

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
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/img/account_verification.png'))),
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Akun Anda sudah terverifikasi! ',
              style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Text(
              'Selamat bergabung! Anda telah berhasil melakukan register dan silahkan masuk untuk menikmati layanan kami. ',
              style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.01,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 25),
            MaterialButton(
              minWidth: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              color: primary,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Sukses'),
                        content: Text('Akun Anda berhasil dibuat.'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              // Arahkan ke halaman selanjutnya (ganti dengan halaman yang sesuai)
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      MainLayout(),
                                  transitionsBuilder: (context, animation,
                                      secondaryAnimation, child) {
                                    const begin = Offset(1.0, 0.0);
                                    const end = Offset.zero;
                                    const curve = Curves.easeInOut;

                                    var tween = Tween(begin: begin, end: end)
                                        .chain(CurveTween(curve: curve));

                                    var offsetAnimation =
                                        animation.drive(tween);

                                    return SlideTransition(
                                      position: offsetAnimation,
                                      child: child,
                                    );
                                  },
                                ),
                              );
                            },
                            child: Text('OK'),
                          ),
                        ],
                      );
                    },
                  );
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Mulai",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.height * 0.014,
                    color: white),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildLayoutForWidth601to1050(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
              key: _formKey,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage('assets/img/account_verification.png'))),
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Akun Anda sudah terverifikasi! ',
              style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 10),
            Text(
              'Selamat bergabung! Anda telah berhasil melakukan register dan silahkan masuk untuk menikmati layanan kami. ',
              style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.01,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 25),
            MaterialButton(
              minWidth: double.infinity,
              height: MediaQuery.of(context).size.height * 0.06,
              color: primary,
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Akun mu berhasil dibuat.'),
                    ),
                  );

                  // Arahkan ke halaman selanjutnya (ganti dengan halaman yang sesuai)
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          MainLayout(),
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
                }
              },
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                "Mulai",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.height * 0.014,
                    color: white),
              ),
            ),
          ],
        ),
      )),
    );
  }

  Widget buildDefaultLayout(BuildContext context) {
    return Container(
        // Your default layout for other widths
        );
  }
}
