import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/widget/data.dart';
import 'package:rekber/widget/main_layout.dart';
import 'package:http/http.dart' as http;

class VerfikasiOTPScreen extends StatefulWidget {
  const VerfikasiOTPScreen({super.key});

  @override
  State<VerfikasiOTPScreen> createState() => _VerfikasiOTPScreenState();
}

class _VerfikasiOTPScreenState extends State<VerfikasiOTPScreen> {
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
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/otp.png'))),
                ),
                Text(
                  'Verifikasi kode OTP',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.029,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  'Masukan OTP yang dikirim ke +62 821xxxxxxxx',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nomer telepon salah ?',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text(
                      'Ubah nomor',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jika kode OTP tidak masuk selama',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.009),
                    Text(
                      '00:30',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                    ),
                  ],
                ),
                Text(
                  'kirim ulang code',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                MaterialButton(
                  minWidth: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.06,
                  color: primary,
                  onPressed: () {
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
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "Kirim",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: white),
                  ),
                ),
              ],
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
        child: ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/otp.png'))),
                ),
                Text(
                  'Verifikasi kode OTP',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.029,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                Text(
                  'Masukan OTP yang dikirim ke +62 821xxxxxxxx',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w500),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Nomer telepon salah ?',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.01),
                    Text(
                      'Ubah nomor',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Colors.blueAccent),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 42,
                        height: 48,
                        child: TextField(
                          decoration: new InputDecoration(
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(14),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(16),
                              borderSide:
                                  BorderSide(color: Colors.black26, width: 1.0),
                            ),
                          ),
                          style: Theme.of(context).textTheme.bodyMedium,
                          keyboardType: TextInputType.number,
                          textAlign: TextAlign.center,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Jika kode OTP tidak masuk selama',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.009),
                    Text(
                      '00:30',
                      style: GoogleFonts.poppins(
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                          fontWeight: FontWeight.w500,
                          color: Colors.black45),
                    ),
                  ],
                ),
                Text(
                  'kirim ulang code',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.015,
                      fontWeight: FontWeight.w500,
                      color: Colors.blueAccent),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.03),
                MaterialButton(
                  minWidth: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.06,
                  color: primary,
                  onPressed: () {
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
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)),
                  child: Text(
                    "Kirim",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 10,
                        color: white),
                  ),
                ),
              ],
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
