import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/screens/auth/register/register_verifikasi_akun.dart';
import 'package:rekber/widget/data.dart';
import 'package:quickalert/quickalert.dart';
import 'package:rekber/widget/main_layout.dart';

class RegisterPIN extends StatefulWidget {
  RegisterPIN({super.key});

  @override
  State<RegisterPIN> createState() => _RegisterPINState();
}

class _RegisterPINState extends State<RegisterPIN> {
  final pinController = TextEditingController();
  final confirmPinController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  bool isPinError = false;
  bool isConfirmPinError = false;

  @override
  void dispose() {
    pinController.dispose();
    confirmPinController.dispose();
    super.dispose();
  }

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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/pin.png'))),
                ),
                Text(
                  'Buatlah PIN Anda',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),
                Form(
                  autovalidateMode: AutovalidateMode
                      .disabled, // Atur autovalidateMode ke disabled
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                          controller: pinController,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.015,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(4),
                          ],
                          decoration: InputDecoration(
                            labelText: 'PIN',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black26,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.014,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                color: Colors.red, // Warna border kesalahan
                                width: 1,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black26,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                color: Colors.black26,
                                width: 1,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                color: Colors
                                    .red, // Warna border saat terjadi kesalahan dan input dalam fokus
                                width: 1,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              isPinError =
                                  true; // Atur status error input pin ke true
                              return 'PIN harus diisi.';
                            } else if (value.length != 4) {
                              isPinError =
                                  true; // Atur status error input pin ke true
                              return 'PIN harus terdiri dari 4 digit.';
                            }
                            isPinError =
                                false; // Atur status error input pin ke false jika valid
                            return null;
                          }),
                      SizedBox(height: 15),
                      TextFormField(
                          controller: confirmPinController,
                          style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.015,
                          ),
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                            LengthLimitingTextInputFormatter(4),
                          ],
                          decoration: InputDecoration(
                            labelText: 'Konfirmasi PIN',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black26,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.014,
                            ),
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                color: Colors.red, // Warna border kesalahan
                                width: 1,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.white,
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black26,
                                width: 1,
                              ),
                              borderRadius: BorderRadius.circular(13),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                color: Colors.black26,
                                width: 1,
                              ),
                            ),
                            focusedErrorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                color: Colors
                                    .red, // Warna border saat terjadi kesalahan dan input dalam fokus
                                width: 1,
                              ),
                            ),
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              isConfirmPinError =
                                  true; // Atur status error input konfirmasi PIN ke true
                              return 'Konfirmasi PIN harus diisi.';
                            } else if (value.length != 4) {
                              isConfirmPinError =
                                  true; // Atur status error input konfirmasi PIN ke true
                              return 'Konfirmasi PIN harus terdiri dari 4 digit.';
                            } else if (value != pinController.text) {
                              isConfirmPinError =
                                  true; // Atur status error input konfirmasi PIN ke true
                              return 'Konfirmasi PIN harus sama dengan PIN.';
                            }
                            isConfirmPinError =
                                false; // Atur status error input konfirmasi PIN ke false jika valid
                            return null;
                          }),
                      SizedBox(height: 25),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.07,
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
                                        showDialog(
                                          context: context,
                                          builder: (context) {
                                            return AlertDialog(
                                              title: Text('Sukses'),
                                              content: Text(
                                                  'Akun Anda berhasil dibuat.'),
                                              actions: <Widget>[
                                                TextButton(
                                                  onPressed: () {
                                                    // Arahkan ke halaman selanjutnya (ganti dengan halaman yang sesuai)
                                                    Navigator.push(
                                                      context,
                                                      PageRouteBuilder(
                                                        pageBuilder: (context,
                                                                animation,
                                                                secondaryAnimation) =>
                                                            MainLayout(),
                                                        transitionsBuilder:
                                                            (context,
                                                                animation,
                                                                secondaryAnimation,
                                                                child) {
                                                          const begin =
                                                              Offset(1.0, 0.0);
                                                          const end =
                                                              Offset.zero;
                                                          const curve =
                                                              Curves.easeInOut;

                                                          var tween = Tween(
                                                                  begin: begin,
                                                                  end: end)
                                                              .chain(CurveTween(
                                                                  curve:
                                                                      curve));

                                                          var offsetAnimation =
                                                              animation
                                                                  .drive(tween);

                                                          return SlideTransition(
                                                            position:
                                                                offsetAnimation,
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
                                        Navigator.push(
                                          context,
                                          PageRouteBuilder(
                                            pageBuilder: (context, animation,
                                                    secondaryAnimation) =>
                                                MainLayout(),
                                            transitionsBuilder: (context,
                                                animation,
                                                secondaryAnimation,
                                                child) {
                                              const begin = Offset(1.0, 0.0);
                                              const end = Offset.zero;
                                              const curve = Curves.easeInOut;

                                              var tween = Tween(
                                                      begin: begin, end: end)
                                                  .chain(
                                                      CurveTween(curve: curve));

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
                          "Buat",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.014,
                              color: white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/pin.png'))),
                ),
                Text(
                  'Buatlah PIN Anda',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),
                Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        controller: pinController,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(4),
                        ],
                        decoration: InputDecoration(
                          labelText: 'PIN',
                          labelStyle: GoogleFonts.poppins(
                            color: Colors.black26,
                            fontWeight: FontWeight.w600,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.014,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                              color: Colors.red, // Warna border kesalahan
                              width: 1,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black26,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 1,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'PIN harus diisi.';
                          } else if (value.length != 4) {
                            return 'PIN harus terdiri dari 4 digit.';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 15),
                      TextFormField(
                        controller: confirmPinController,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.015,
                        ),
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
                          LengthLimitingTextInputFormatter(4),
                        ],
                        decoration: InputDecoration(
                          labelText: 'Konfirmasi PIN',
                          labelStyle: GoogleFonts.poppins(
                            color: Colors.black26,
                            fontWeight: FontWeight.w600,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.014,
                          ),
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                              color: Colors.red, // Warna border kesalahan
                              width: 1,
                            ),
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.black26,
                              width: 1,
                            ),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 1,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Konfirmasi PIN harus diisi.';
                          } else if (value.length != 4) {
                            return 'Konfirmasi PIN harus terdiri dari 4 digit.';
                          } else if (value != pinController.text) {
                            return 'Konfirmasi PIN harus sama dengan PIN.';
                          }
                          return null;
                        },
                      ),
                      SizedBox(height: 25),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.07,
                        color: primary,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Atur ulang status error
                            isPinError = false;
                            isConfirmPinError = false;

                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        VerifikasiAkun(),
                                transitionsBuilder: (context, animation,
                                    secondaryAnimation, child) {
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
                          "Buat",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.014,
                              color: white),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
