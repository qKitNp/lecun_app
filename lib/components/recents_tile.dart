import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecun_app/theme/pallete.dart';

class RecentTile extends StatefulWidget {
  @override
  State<RecentTile> createState() => _RecentTileState();
}

class _RecentTileState extends State<RecentTile> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 0,
      color: Pallete.whiteColor,
      child: ExpansionTile(
        shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12))),
        onExpansionChanged: (value) {
          setState(() {
            isExpanded = !isExpanded;
          });
        },
        leading: CircleAvatar(
          backgroundColor: Colors.blue[300],
          child: SvgPicture.network(
              "https://api.dicebear.com/9.x/adventurer/svg?seed=Cali"),
        ),
        title: const Text('Mr. Singh',
            style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: const Text('20 July 2024'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('₹ 1204.34',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontFamily: GoogleFonts.jua().fontFamily,
                  fontSize: 12,
                )),
            const SizedBox(width: 8),
            Icon(isExpanded
                ? Icons.arrow_drop_up_rounded
                : Icons.arrow_drop_down_rounded),
          ],
        ),
        children: const [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ID: 20987',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 12,
                        color: Pallete.greyColor),
                  ),
                  Text('Phone: 8652736915',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Pallete.greyColor)),
                  Text('Address: Ranchi',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Pallete.greyColor)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('CGST: ₹ 60.21',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Pallete.greyColor)),
                  Text('SGST: ₹ 60.21',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Pallete.greyColor)),
                  Text('GST: ₹ 120.43',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 12,
                          color: Pallete.greyColor)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
