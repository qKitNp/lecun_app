import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lecun_app/components/column_tile.dart';
import 'package:lecun_app/theme/pallete.dart';
import 'package:awesome_flutter_extensions/awesome_flutter_extensions.dart';

class UploadConfirmPage extends StatelessWidget {
  const UploadConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("add a table"),
      ),
      body: SafeArea(
          child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 80),
            child: ListView(
              children: [
                const ColumnTile(),
                ListTile(
                  title: const Text("Column Name:"),
                  subtitle: const Text("<Name of Column from JSON>"),
                  trailing: const Icon(
                    Icons.delete_rounded,
                    color: Pallete.borderGrey,
                  ),
                  tileColor: Pallete.pastelBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(color: Pallete.borderGrey)),
                ),
                const ColumnTile(),
                const ColumnTile(),
                const ColumnTile(),
                const ColumnTile(),
                const ColumnTile(),
                ListTile(
                  title: const Text("Column Name:"),
                  subtitle: const Text("<Name of Column from JSON>"),
                  trailing: const Icon(
                    Icons.delete_rounded,
                    color: Pallete.borderGrey,
                  ),
                  tileColor: Pallete.pastelBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(color: Pallete.borderGrey)),
                ),
                const ColumnTile(),
                const ColumnTile(),
                ListTile(
                  title: const Text("Column Name:"),
                  subtitle: const Text("<Name of Column from JSON>"),
                  trailing: const Icon(
                    Icons.delete_rounded,
                    color: Pallete.borderGrey,
                  ),
                  tileColor: Pallete.pastelBlue,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                      side: const BorderSide(color: Pallete.borderGrey)),
                ),
                const ColumnTile(),
              ].separatedBy(const Gap(16)),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Pallete.pastelGreen,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            fixedSize: const Size.fromHeight(64)),
                        child: Text(
                          'add a column',
                          style: TextStyle(
                              color: Pallete.whiteColor,
                              fontFamily: GoogleFonts.jua().fontFamily),
                        ),
                        onPressed: () {
                          // Button action
                        },
                      ),
                    ),
                    const Gap(8),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Pallete.borderGrey,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                            fixedSize: const Size.fromHeight(64)),
                        child: Text(
                          'Submit',
                          style: TextStyle(
                              color: Pallete.whiteColor,
                              fontFamily: GoogleFonts.jua().fontFamily),
                        ),
                        onPressed: () {
                          // Button action
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )),
    );
  }
}
