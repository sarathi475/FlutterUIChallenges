import 'package:flutter/material.dart';
import 'package:flutter_challenge/constant.dart';

class GridCellContainer extends StatelessWidget {
  final String title;
  const GridCellContainer({
    required this.title,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.red,
          ),
      child: Column(
        children: [
          Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: Color(0xFFE6EFF6),
                  borderRadius: BorderRadius.circular(40),
                  border: Border.all(color: Color(0xFFE6EFF6), width: 1)),
              child: CircleAvatar(child: Image.asset("assets/card.png"))),
          SizedBox(height: 5),
          Expanded(
            child: Text(
              title,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              softWrap: true,
              textAlign: TextAlign.center,
              style: kTitle,
            ),
          ),
        ],
      ),
    );
  }
}
