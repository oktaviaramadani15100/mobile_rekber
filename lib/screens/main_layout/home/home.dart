import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rekber/widget/data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

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
          'HOME',
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

      //CONTAINER SCROLL
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            // padding: EdgeInsets.only(left: 25, right: 25, top: 15),
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 25, right: 25, top: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                      'Hai, Septhea',
                      style: GoogleFonts.poppins(
                        color: primary,
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Selamat Pagi',
                      style: GoogleFonts.poppins(
                          fontSize: 10, fontWeight: FontWeight.w600),
                    ),
                    ],
                  ),
                ),
                

                //HEADER CARD
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 23, right: 23, top: 15),
                  // margin: EdgeInsets.symmetric(vertical: 20),
                  decoration: BoxDecoration(
                      color: primary, borderRadius: BorderRadius.circular(17)),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.height * 0.24,
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'RekBer Bersama mu',
                              style: GoogleFonts.poppins(
                                color: white,
                                fontSize: 13,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              'Ayo mulai transaksi mu sekarang juga di RekBer!',
                              style: GoogleFonts.poppins(
                                  color: white,
                                  fontSize: 7,
                                  fontWeight: FontWeight.w500
                              ),
                            ),
                          ],
                        ),
                      ),
                      Image.asset('assets/img/bg-header.png', width: 90)
                    ],
                  ),
                ),
                //END HEADER CARD 

                //SEARCH
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.05,
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    margin: EdgeInsets.symmetric(horizontal: 23, vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
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
                          fontSize: 12
                        ),
                        )
                      ],
                    ),
                  ),
                  //END SEARCH

                //SCROLL HORIZONTAL
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    margin: EdgeInsets.only(left: 21),
                    child: Row(
                      children: [
                  
                        //CARD DIKIRIM
                        Container(
                          width: 68,
                          height: 71,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 5, right: 14),
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 30,
                                child: Image.asset('assets/img/sent_icon.png'),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Di Kirim',
                                style: GoogleFonts.poppins(
                                  color: white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600
                                ),
                                )
                            ],
                          ),
                        ),
                        //END CARD DI KIRIM
                  
                        //CARD DITERIMA
                        Container(
                          width: 68,
                          height: 71,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 5, right: 14),
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 30,
                                child: Image.asset('assets/img/accepted_icon.png'),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Di Terima',
                                style: GoogleFonts.poppins(
                                  color: white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600
                                ),
                                )
                            ],
                          ),
                        ),
                        //END CARD DITERIMA
                  
                        //CARD REFUND
                        Container(
                          width: 68,
                          height: 71,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 5, right: 14),
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 30,
                                child: Image.asset('assets/img/refunds_icon.png'),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Refund',
                                style: GoogleFonts.poppins(
                                  color: white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600
                                ),
                                )
                            ],
                          ),
                        ),
                        //END CARD REFUND
                  
                        //CARD SELESAI
                        Container(
                          width: 68,
                          height: 71,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 5, right: 14),
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 30,
                                child: Image.asset('assets/img/finished_icon.png'),
                              ),
                              
                              SizedBox(height: 5),
                              Text(
                                'Selesai',
                                style: GoogleFonts.poppins(
                                  color: white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600
                                ),
                                )
                            ],
                          ),
                        ),
                        //END CARD SELESAI
                  
                        //CARD 
                        Container(
                          width: 68,
                          height: 71,
                          padding: EdgeInsets.all(10),
                          margin: EdgeInsets.only(left: 5, right: 14),
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(18)
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.security,
                                color: white,
                                size: 30,
                                ),
                              SizedBox(height: 5),
                              Text(
                                'Pending',
                                style: GoogleFonts.poppins(
                                  color: white,
                                  fontSize: 9,
                                  fontWeight: FontWeight.w600
                                ),
                                )
                            ],
                          ),
                        ),
                        //END CARD 
                  
                      ],
                    ),
                  ),
                ),
                //END SCROLL HORIZONTAL

                //GROUP CARD TRANSAKSI TERAKHIR
                Container(
                  margin: EdgeInsets.only(left: 25, right: 25, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Transaksi Terakhir',
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: black,
                        ),
                      ),
                      SizedBox(height: 7),
                
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
                      //CARD TRANSAKSI TERAKHIR

                      
                    ],
                    //END CARD TRANSAKSI TERAKHIR
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      //  END CONTAINER SCROLL
    );
  }
}
