import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/widget/data.dart';

class RiwayatScreen extends StatefulWidget {
  const RiwayatScreen({super.key});

  @override
  State<RiwayatScreen> createState() => _RiwayatScreenState();
}

class _RiwayatScreenState extends State<RiwayatScreen> {
  // String searchTerm = "";
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
            color: input,
            borderRadius: BorderRadius.circular(20)
          ),
        ),
        centerTitle: true,
        title: Text(
          'RIWAYAT',
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
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
                //SEARCH
          child : Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 11),
                  margin: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: input
                      ),
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
                        style: GoogleFonts.poppins(
                          color: Colors.black54,
                          fontSize: 13
                        ),
                      )
                    ],
                  ),
                ),
                //END SEARCH
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.13,
                      height: MediaQuery.of(context).size.height * 0.06,
                      margin: const EdgeInsets.only(right: 12),
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(14),
                        // border: Border(
                        //     bottom: BorderSide(
                        //       color: Colors.black12,
                        //       width: 1.0,
                        //     )
                        // )
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hari ini, 06.20 am',
                          style: GoogleFonts.poppins(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          'Septhea Zisca',
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          width: 210,
                          height: 20,
                          child: Text(
                            'Septhea Zisca mengirimkan saldo sebesar Rp 1.000 kepada Anda dengan pesan thr buat kamu',
                            style: GoogleFonts.poppins(
                              fontSize: 9,
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            softWrap: true,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Icon(Icons.chevron_right_rounded)
              ],
            ),
          ),
          //CARD TRANSAKSI TERAKHIR
        ],
      )),
    );
  }
}
