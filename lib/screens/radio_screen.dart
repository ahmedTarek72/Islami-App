import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RadioScreen extends StatefulWidget {
  const RadioScreen({super.key});

  @override
  State<RadioScreen> createState() => _RadioScreenState();
}

class _RadioScreenState extends State<RadioScreen> {
  // Create a player

  @override
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 100.h,
        ),
        Image.asset("assets/images/radio_item.png"),
        SizedBox(
          height: 30.h,
        ),
        Text(
          "اذاعه القران الكريم",
          style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 30.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/Icon metro-previous.png",
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/Icon awesome-play.png",
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                "assets/images/Icon metro-previous.png",
              ),
            ),
          ],
        )
      ],
    );
  }
}
