// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecun_app/components/home_button.dart';
import 'package:lecun_app/components/home_chart.dart';
import 'package:lecun_app/components/recents_tile.dart';
import 'package:lecun_app/screens/chat_page.dart';
import 'package:lecun_app/theme/pallete.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void _onPressedChat() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ChatScreen()));
  }

  // bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Gap(16),
              const Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.more_vert_rounded)),
              CircleAvatar(
                radius: 52,
                child: SvgPicture.network(
                    "https://api.dicebear.com/9.x/adventurer/svg?seed=Cleo"),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Pranjal's Bookshop",
                  style: TextStyle(
                      color: Pallete.greyColor,
                      fontWeight: FontWeight.w900,
                      fontFamily: GoogleFonts.jua().fontFamily,
                      fontSize: 32),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      HomeButton(
                        onPressed: _onPressedChat,
                        buttonColor: Pallete.pastelBlue,
                        icon: Icon(
                          Icons.auto_awesome_rounded,
                          color: Pallete.bgColor,
                        ),
                      ),
                      Text(
                        "chat with ai",
                        style: TextStyle(
                            color: Pallete.greyColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.jua().fontFamily,
                            fontSize: 12),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      HomeButton(
                          onPressed: _onPressedChat,
                          buttonColor: Pallete.pastelYellow,
                          icon: Icon(
                            Icons.add_a_photo_outlined,
                            color: Pallete.bgColor,
                          )),
                      Text("scan an invoice",
                          style: TextStyle(
                              color: Pallete.greyColor,
                              fontWeight: FontWeight.w500,
                              fontFamily: GoogleFonts.jua().fontFamily,
                              fontSize: 12))
                    ],
                  ),
                  Column(
                    children: [
                      HomeButton(
                          onPressed: _onPressedChat,
                          buttonColor: Pallete.pastelGreen,
                          icon: Icon(
                            Icons.file_upload_rounded,
                            color: Pallete.bgColor,
                          )),
                      Text(
                        "upload database",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Pallete.greyColor,
                            fontWeight: FontWeight.w500,
                            fontFamily: GoogleFonts.jua().fontFamily,
                            fontSize: 12),
                      )
                    ],
                  ),
                ],
              ),
              Gap(24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "revenue:",
                    style: TextStyle(
                        color: Pallete.greyColor,
                        fontWeight: FontWeight.bold,
                        fontFamily: GoogleFonts.jua().fontFamily,
                        fontSize: 16),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "₹ 12603.23",
                        style: TextStyle(
                            color: Pallete.greyColor,
                            fontWeight: FontWeight.bold,
                            fontFamily: GoogleFonts.jua().fontFamily,
                            fontSize: 12),
                      ),
                      Text(
                        "▲ 0.68%",
                        style: TextStyle(
                            color: Pallete.profitGreen,
                            fontFamily: GoogleFonts.jua().fontFamily,
                            fontSize: 12),
                      ),
                    ],
                  ),
                  LineChartWidget(),
                ],
              ),
              Gap(24),
              Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "recent",
                      style: TextStyle(
                          color: Pallete.greyColor,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.jua().fontFamily,
                          fontSize: 16),
                    ),
                  ),
                  RecentTile(),
                  RecentTile(),
                  RecentTile(),
                  RecentTile(),
                  RecentTile(),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
