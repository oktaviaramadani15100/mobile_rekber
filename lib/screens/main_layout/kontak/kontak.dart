import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/widget/data.dart';

class KontakScreen extends StatefulWidget {
  const KontakScreen({super.key});

  @override
  State<KontakScreen> createState() => _KontakScreenState();
}

class _KontakScreenState extends State<KontakScreen> {
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
          'KONTAK',
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
            padding: EdgeInsets.only(left: 25, right: 25, top: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Temukan Kontak mu',
                  style: GoogleFonts.poppins(
                      fontSize: 13, fontWeight: FontWeight.w600),
                ),
                //SEARCH
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.05,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14), color: input),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.black26,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'ketik disini..',
                        style: GoogleFonts.poppins(color: Colors.black38),
                      )
                    ],
                  ),
                ),
                //END SEARCH
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Kontak mu',
                      style: GoogleFonts.poppins(
                          fontSize: 13, fontWeight: FontWeight.w600),
                    ),
                    InkWell(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                        decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(9)),
                        child: Row(
                          children: [
                            Text(
                            'Tambah',
                            style: GoogleFonts.poppins(
                                fontSize: 6,
                                fontWeight: FontWeight.w700,
                                color: white),
                          ),
                          Icon(
                            Icons.add,
                            size: 14,
                            color: white,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.black12,
                              width: 1.0,
                            )
                          )
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.13,
                                      height: MediaQuery.of(context).size.height *
                                          0.06,
                                      margin: const EdgeInsets.only(right: 12),
                                      decoration: BoxDecoration(
                                        color: secondary,
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.person,
                                          size: 20,
                                          color: primary,
                                          ),
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Septhea Zisca',
                                          style: GoogleFonts.poppins(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text(
                                          '21 Sep 2021 06.30',
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w500,
                                            color: Colors.black87,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Text(
                                      'Rp 20.000',
                                      style: GoogleFonts.poppins(
                                        fontSize: 13,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                      ),
                                    ),
                                    Text(
                                      'Order ID : ad90fh',
                                      style: GoogleFonts.poppins(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black87,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
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
}
