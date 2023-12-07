import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:rekber/screens/login/login_verifikasi_otp.dart';
// import 'package:rekber/screens/register/register_address_data.dart';
import 'package:country_picker/country_picker.dart';
import 'package:rekber/screens/auth/login/login_verifikasi_otp.dart';
import 'package:rekber/screens/auth/register/register_personal_data.dart';
import 'package:rekber/screens/welcome_rekber.dart';
import 'package:rekber/widget/data.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class LoginOTP extends StatefulWidget {
  LoginOTP({super.key});

  @override
  State<LoginOTP> createState() => _LoginOTPState();
}

class _LoginOTPState extends State<LoginOTP> {
  final _formKey = GlobalKey<FormState>();

  @override
  final TextEditingController phoneController = TextEditingController();

  Country selectedCountry = Country(
    phoneCode: "62",
    countryCode: "ID",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "Indonesia",
    example: "Indonesia",
    displayName: "Indonesia",
    displayNameNoCountryCode: "ID",
    e164Key: "",
  );

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
    phoneController.selection = TextSelection.fromPosition(
        TextPosition(offset: phoneController.text.length));
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(
            left: 30,
            right: 30,
            top: MediaQuery.of(context).size.height * 0.15),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/img/telephone_number.png'))),
                ),
                // SizedBox(height: 12),
                Text(
                  'Verifikasi Telepon Anda',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.023,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                Form(
                  autovalidateMode: AutovalidateMode
                      .disabled, // Atur autovalidateMode ke disabled
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        onChanged: (value) {
                          setState(() {
                            phoneController.text = value;
                          });
                        },
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                          LengthLimitingTextInputFormatter(15),
                        ],
                        controller: phoneController,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.016,
                          fontWeight: FontWeight.w600,
                        ),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          labelText: 'Nomer Telepon',
                          labelStyle: GoogleFonts.poppins(
                            color: Colors.black26,
                            fontWeight: FontWeight.w600,
                            fontSize:
                                MediaQuery.of(context).size.height * 0.017,
                          ),
                          filled: true,
                          fillColor: white,
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
                          errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(13),
                            borderSide: BorderSide(
                              color: Colors.red, // Warna border kesalahan
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
                          prefixIcon: Container(
                            padding: EdgeInsets.all(20),
                            child: InkWell(
                              onTap: () {
                                showCountryPicker(
                                  context: context,
                                  countryListTheme: CountryListThemeData(
                                    bottomSheetHeight: 400,
                                  ),
                                  onSelect: (value) {
                                    setState(() {
                                      selectedCountry = value;
                                    });
                                  },
                                );
                              },
                              child: Text(
                                '${selectedCountry.countryCode} + ${selectedCountry.phoneCode}',
                                style: GoogleFonts.poppins(
                                  fontSize: MediaQuery.of(context).size.height *
                                      0.015,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                          suffixIcon: phoneController.text.length > 9
                              ? Container(
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Colors.green,
                                  ),
                                  child: Icon(Icons.done,
                                      color: Colors.white, size: 10),
                                )
                              : null,
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Nomer Telepon harus diisi.';
                          } else if (value.length < 10) {
                            return 'Nomer Telepon harus terdiri dari minimal 10 digit.';
                          }
                          return null; // Return null jika tidak ada kesalahan
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.01,
                      ),
                      Row(
                        children: [
                          Text(
                            'Belum mempunyai akun?',
                            style: GoogleFonts.poppins(
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.015,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.012,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder:
                                      (context, animation, secondaryAnimation) =>
                                          WelcomeScreen(),
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
                            },
                            child: Text(
                              'Register',
                              style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.012,
                                fontWeight: FontWeight.w500,
                                color: Colors.blueAccent,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.03,
                      ),
                      MaterialButton(
                        minWidth: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.06,
                        color: primary,
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                              context,
                              PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secondaryAnimation) =>
                                        VerfikasiOTPScreen(),
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
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Text(
                          "Kirim",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: white,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }

  Widget buildLayoutForWidth601to1050(BuildContext context) {
    phoneController.selection = TextSelection.fromPosition(
        TextPosition(offset: phoneController.text.length));
    return Scaffold(
      body: SafeArea(
          child: Container(
        padding: EdgeInsets.only(
            left: 30,
            right: 30,
            top: MediaQuery.of(context).size.height * 0.15),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage('assets/img/telephone_number.png'))),
                ),
                // SizedBox(height: 12),
                Text(
                  'Verifikasi Telepon Anda',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.029,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.015),
                TextField(
                  onChanged: (value) {
                    setState(() {
                      phoneController.text = value;
                    });
                  },
                  // controller: name
                  // ..text = widget.profile['name'],
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: MediaQuery.of(context).size.height * 0.016),
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      labelText: 'Nomer Telepon',
                      labelStyle: GoogleFonts.poppins(
                        color: Colors.black26,
                        fontWeight: FontWeight.w600,
                        fontSize: MediaQuery.of(context).size.height * 0.017,
                      ),
                      filled: true,
                      fillColor: white,
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
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(13),
                        borderSide: BorderSide(
                          color: Colors.red, // Warna border kesalahan
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
                      prefixIcon: Container(
                        padding: EdgeInsets.all(20),
                        child: InkWell(
                          onTap: () {
                            showCountryPicker(
                                context: context,
                                countryListTheme: CountryListThemeData(
                                    bottomSheetHeight: 400),
                                onSelect: (value) {
                                  setState(() {
                                    selectedCountry = value;
                                  });
                                });
                          },
                          child: Text(
                            '${selectedCountry.countryCode} + ${selectedCountry.phoneCode}',
                            style: GoogleFonts.poppins(
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.015,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      suffixIcon: phoneController.text.length > 9
                          ? Container(
                              height: 10,
                              // width: MediaQuery.of(context).size.width * 0.01,
                              // height: MediaQuery.of(context).size.height * 0.04,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.green),
                              child: Icon(Icons.done,
                                  color: Colors.white, size: 10),
                            )
                          : null),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.01),
                Row(
                  children: [
                    Text(
                      'Belum mempunyai akun?',
                      style: GoogleFonts.poppins(
                        fontSize: MediaQuery.of(context).size.height * 0.018,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: MediaQuery.of(context).size.width * 0.012),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          PageRouteBuilder(
                            pageBuilder:
                                (context, animation, secondaryAnimation) =>
                                    RegisterPersonal(),
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
                      },
                      child: Text(
                        'Register',
                        style: GoogleFonts.poppins(
                            fontSize:
                                MediaQuery.of(context).size.height * 0.017,
                            fontWeight: FontWeight.w500,
                            color: Colors.blueAccent),
                      ),
                    ),
                  ],
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
                            VerfikasiOTPScreen(),
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
