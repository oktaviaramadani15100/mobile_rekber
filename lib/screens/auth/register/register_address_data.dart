import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/screens/auth/register/register_e-kyc.dart';
import 'package:rekber/widget/data.dart';

class RegisterAddress extends StatefulWidget {
  const RegisterAddress({super.key});

  @override
  State<RegisterAddress> createState() => _RegisterAddressState();
}

class _RegisterAddressState extends State<RegisterAddress> {
  //BACK END JENIS KELAMIN INPUT
  final provinsi = ['Provinsi','Aceh', 'Papua'];
  String? prov;
  //END BACK END JENIS KELAMIN INPUT

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
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/location.png'))),
                ),
                Text(
                  'Lengkapi Data Anda!',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black26, width: 1)),
                  child: DropdownButton<String>(
                    focusColor: Colors.white,
                    underline: SizedBox(),
                    borderRadius: BorderRadius.circular(12),
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.014,
                    ),
                    value: prov,
                    iconSize: 30,
                    icon: Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Colors.black,
                    ),
                    isExpanded: true,
                    items: provinsi.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(
                      () => this.prov = value,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  minWidth: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.06,
                  color: primary,
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            RegisterEKYC(),
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
                        fontSize: MediaQuery.of(context).size.height * 0.014,
                        color: white),
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
                          image: AssetImage('assets/img/location.png'))),
                ),
                Text(
                  'Lengkapi Data Anda!',
                  style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.02,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(height: 15),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 12),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.black26, width: 1)),
                  child: DropdownButton<String>(
                    focusColor: Colors.white,
                    underline: SizedBox(),
                    borderRadius: BorderRadius.circular(12),
                    style: GoogleFonts.poppins(
                      fontSize: MediaQuery.of(context).size.height * 0.014,
                    ),
                    value: prov,
                    iconSize: 30,
                    icon: Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Colors.black,
                    ),
                    isExpanded: true,
                    items: provinsi.map(buildMenuItem).toList(),
                    onChanged: (value) => setState(
                      () => this.prov = value,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  minWidth: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.06,
                  color: primary,
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (context, animation, secondaryAnimation) =>
                            RegisterEKYC(),
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
                        fontSize: MediaQuery.of(context).size.height * 0.014,
                        color: white),
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

  DropdownMenuItem<String> buildMenuItem(String provinsi) => DropdownMenuItem(
      value: provinsi,
      child: Text(provinsi,
          style: GoogleFonts.poppins(
            fontSize: MediaQuery.of(context).size.height * 0.015,
            color: Colors.black38,
          )));
}
