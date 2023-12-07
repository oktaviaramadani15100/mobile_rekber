import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/widget/data.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //NAVBAR
      appBar: AppBar(
        elevation: 0,
        backgroundColor: white,
        leading: Container(
          margin: EdgeInsets.only(top: 10, bottom: 10, left: 20),
          width: 10,
          height: 10,
          decoration: BoxDecoration(
              color: input, borderRadius: BorderRadius.circular(20)),
        ),
        centerTitle: true,
        title: Text(
          'PROFILE',
          style: GoogleFonts.poppins(
            fontSize: 13,
            fontWeight: FontWeight.w700,
            color: black,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Icon(
              Icons.notifications,
              color: black,
              size: 15,
            ),
          ),
        ],
      ),
      //END NAVBAR
      body: SafeArea(
          child: ListView(
        children: [
          Container(
              width: double.infinity,
              height: 140,
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/img/bg-group.png')),
              ),
              child: Row(
                children: [
                  Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Haikal Zephyr',
                        style: GoogleFonts.poppins(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: white),
                      ),
                      Text(
                        '90923808',
                        style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: white),
                      ),
                    ],
                  )
                ],
              )),
          // Container(
          //   margin: EdgeInsets.symmetric(horizontal: 25),
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //       'Verifikasi Akun Bank',
          //       style: GoogleFonts.poppins(
          //           fontSize: 15.sp, fontWeight: FontWeight.w700),
          //     ),
          //     Container()
          //     ],
          //   ),
          // )
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                child: Text(
                  'Akun',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 25),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                  width: 1.0,
                ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Ubah Profil',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 25),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                  width: 1.0,
                ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.card_membership_rounded,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Akun Bank',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(
                      Icons.chevron_right_rounded,
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 25),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                  width: 1.0,
                ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.settings,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Pengaturan',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(Icons.chevron_right_rounded)
                  ],
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 23, right: 23, bottom: 8, top: 18),
                child: Text(
                  'Tentang',
                  style: GoogleFonts.poppins(
                      fontSize: 16, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 25),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                  width: 1.0,
                ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.menu_book_rounded,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Panduan',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(Icons.chevron_right_rounded)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 25),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                  width: 1.0,
                ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.person,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Syarat dan Ketentuan',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(Icons.chevron_right_rounded)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 25),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                  width: 1.0,
                ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.shield,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Kebijakan dan Privasi',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(Icons.chevron_right_rounded)
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 23),
                padding: EdgeInsets.symmetric(horizontal: 6, vertical: 25),
                decoration: BoxDecoration(
                    border: Border(
                        bottom: BorderSide(
                  color: Colors.black12,
                  width: 1.0,
                ))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.help,
                          size: 16,
                        ),
                        SizedBox(width: 8),
                        Text(
                          'Bantuan',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Icon(Icons.chevron_right_rounded)
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
