
import 'package:flutter/material.dart';
import 'package:lecun_app/theme/pallete.dart';

class ColumnTile extends StatelessWidget {
  const ColumnTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Pallete.pastelBlue,
      ),
      // height: 100,
      child: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Column Name:"),
                  Text("<Name of Column from JSON>"),
                ]),
            Icon(
              Icons.delete_rounded,
              color: Pallete.borderGrey,
            )
          ],
        ),
      ),
    );
  }
}
