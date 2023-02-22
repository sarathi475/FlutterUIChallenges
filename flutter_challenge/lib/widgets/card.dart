import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
  final String title;
  final String subtitle;
  final Color color;
  final buttonColor;
  final buttonText;

  const CardDesign({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.buttonColor,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 200,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      title,
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(subtitle),
                    MaterialButton(
                      color: buttonColor,
                      // elevation: 5,
                      onPressed: () {},
                      child: Text(
                        buttonText,
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
                // flex: 2,
                child: Padding(
              padding: const EdgeInsets.all(0.0),
              child: Image.asset("assets/profile.png"),
            ))
          ],
        ),
      ),
    );
  }
}
