import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:rekber/screens/auth/register/register_address_data.dart';
import 'package:rekber/widget/data.dart';

class RegisterPersonal extends StatefulWidget {
  const RegisterPersonal({super.key});

  @override
  State<RegisterPersonal> createState() => _RegisterPersonalState();
}

class _RegisterPersonalState extends State<RegisterPersonal> {
  //TANGGAL LAHIR INPUT
  TextEditingController datetimeinput = TextEditingController();
  void initState() {
    datetimeinput.text = "";
    super.initState();
  }

  //END TANGGAL LAHIR INPUT

  //JENIS KELAMIN INPUT
  final jenisKelamin = ['Pilih Jenis Kelamin', 'Laki-laki', 'Perempuan'];
  String? jk;
  //END JENIS KELAMIN INPUT

  final _formKey = GlobalKey<FormState>();
  // final namaDepanController = TextEditingController();
  // final namaBelakangController = TextEditingController();
  // final emailController = TextEditingController();
  // final jenisKelaminController = TextEditingController();
  // final tanggalLahirController = TextEditingController();

  @override

  // void dispose() {
  //   namaDepanController.dispose();
  //   namaBelakangController.dispose();
  //   emailController.dispose();
  //   jenisKelaminController.dispose();
  //   tanggalLahirController.dispose();
  //   super.dispose();
  // }
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
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.4,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/register_login.png'))),
                ),
                Text(
                  'Lengkapi Data Anda!',
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
                          // controller: namaDepanController,
                          // ..text = widget.profile['name'],
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.015),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Nama Depan',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black26,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.014,
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
                          ),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Nama Depan harus diisi.';
                            }
                            return null; // Kembalikan null jika input valid
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          // controller: name
                          // ..text = widget.profile['name'],
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.015),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Nama Belakang',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black26,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.014,
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
                          ),

                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Nama Belakang harus diisi.';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          // controller: name
                          // ..text = widget.profile['name'],
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.015),
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black26,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.014,
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
                          ),
                          validator: (value) {
                            bool isValidEmail(String email) {
                              // Pola regex untuk memeriksa apakah alamat email valid
                              final emailRegex = RegExp(
                                  r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
                              return emailRegex.hasMatch(email);
                            }

                            if (value == null || value.isEmpty) {
                              return 'Email harus diisi.';
                            } else if (!isValidEmail(value)) {
                              // Anda juga dapat memvalidasi email
                              return 'Email tidak valid.';
                            }
                            return null;
                          },
                        ),
                        SizedBox(height: 10),
                        DropdownButtonFormField<String>(
                          value: jk, // Nilai yang saat ini dipilih
                          decoration: InputDecoration(
                            labelText: 'Jenis Kelamin',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black26,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.014,
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
                          ),
                          items: jenisKelamin.map(buildMenuItem).toList(),
                          onChanged: (value) {
                            setState(() {
                              jk = value;
                            });
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Pilih jenis kelamin.';
                            }
                            return null; // Return null jika tidak ada kesalahan
                          },
                        ),
                        SizedBox(height: 10),
                        TextFormField(
                          controller: datetimeinput,
                          style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.015),
                          decoration: InputDecoration(
                            labelText: 'Tanggal Lahir',
                            labelStyle: GoogleFonts.poppins(
                              color: Colors.black26,
                              fontWeight: FontWeight.w600,
                              fontSize:
                                  MediaQuery.of(context).size.height * 0.014,
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
                            errorBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(13),
                              borderSide: BorderSide(
                                color: Colors.red, // Warna border kesalahan
                                width: 1,
                              ),
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
                          readOnly: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Tanggal Lahir harus diisi.';
                            }
                            return null;
                          },
                          onTap: () async {
                            DateTime? pickDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(2000),
                                lastDate: DateTime(2100));
                            if (pickDate != null) {
                              setState(() {
                                String formatDate = DateFormat('EEEE, d MMMM y')
                                    .format(pickDate);
                                setState(() {
                                  datetimeinput.text = formatDate;
                                });
                              });
                            } else {
                              print("Date Tidak Dipilih");
                              datetimeinput.text = "";
                            }
                          },
                        ),
                        SizedBox(height: 12),
                        MaterialButton(
                          minWidth: double.infinity,
                          height: MediaQuery.of(context).size.height * 0.06,
                          color: primary,
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                context,
                                PageRouteBuilder(
                                  pageBuilder: (context, animation,
                                          secondaryAnimation) =>
                                      RegisterAddress(),
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
                            }
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12)),
                          child: Text(
                            "Kirim",
                            style: TextStyle(
                                fontWeight: FontWeight.w700,
                                fontSize:
                                    MediaQuery.of(context).size.height * 0.016,
                                color: white),
                          ),
                        ),
                      ],
                    )),
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
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/img/register_login.png'))),
            ),
            Text(
              'Lengkapi Data Anda!',
              style: GoogleFonts.poppins(
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(height: 15),
            TextField(
              // controller: name
              // ..text = widget.profile['name'],
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.015),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Nama Depan',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.black26,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height * 0.014,
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
              ),
            ),
            SizedBox(height: 10),
            TextField(
              // controller: name
              // ..text = widget.profile['name'],
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.015),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Nama Belakang',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.black26,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height * 0.014,
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
              ),
            ),
            SizedBox(height: 10),
            TextField(
              // controller: name
              // ..text = widget.profile['name'],
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.015),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.black26,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height * 0.014,
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
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.black26, width: 1),
              ),
              child: DropdownButton<String>(
                focusColor: Colors.white,
                underline: SizedBox(),
                borderRadius: BorderRadius.circular(12),
                style: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.height * 0.014,
                    color: black),
                value: jk ??
                    jenisKelamin[0], // Gunakan placeholder jika jk masih null
                iconSize: 30,
                icon: Icon(Icons.arrow_drop_down_rounded, color: Colors.black),
                isExpanded: true,
                items: jenisKelamin.map(buildMenuItem).toList(),
                onChanged: (value) {
                  setState(() {
                    if (value != jenisKelamin[0]) {
                      // Hanya set jk jika bukan placeholder
                      jk = value;
                    }
                  });
                },
              ),
            ),
            SizedBox(height: 10),
            TextField(
              controller: datetimeinput,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.015),
              decoration: InputDecoration(
                labelText: 'Tanggal Lahir',
                labelStyle: GoogleFonts.poppins(
                  color: Colors.black26,
                  fontWeight: FontWeight.w600,
                  fontSize: MediaQuery.of(context).size.height * 0.014,
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
              ),
              readOnly: true,
              onTap: () async {
                DateTime? pickDate = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100));
                if (pickDate != null) {
                  setState(() {
                    String formatDate =
                        DateFormat('EEEE, d MMMM y').format(pickDate);
                    setState(() {
                      datetimeinput.text = formatDate;
                    });
                  });
                } else {
                  print("Date Tidak Dipilih");
                  datetimeinput.text = "";
                }
              },
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
                        RegisterAddress(),
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
                    fontSize: MediaQuery.of(context).size.height * 0.016,
                    color: white),
              ),
            ),
            SizedBox(height: 8),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) =>
                        RegisterAddress(),
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
              child: Text(
                'Lewati',
                style: GoogleFonts.poppins(
                    decoration: TextDecoration.underline,
                    fontSize: MediaQuery.of(context).size.height * 0.011,
                    fontWeight: FontWeight.w600),
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

  DropdownMenuItem<String> buildMenuItem(String jk) => DropdownMenuItem(
      value: jk,
      child: Text(jk,
          style: GoogleFonts.poppins(
              fontSize: MediaQuery.of(context).size.height * 0.015,
              color: Colors.black38,
              fontWeight: FontWeight.w600)));
}
