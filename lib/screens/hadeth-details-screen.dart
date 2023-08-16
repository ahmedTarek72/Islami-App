import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HadethDetailsScreen extends StatefulWidget {
  const HadethDetailsScreen(
      {super.key, required this.hadethName, required this.hadethContent});
  final String hadethName;
  final String hadethContent;

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(alignment: Alignment.center, children: [
        Image.asset(
          "assets/images/back_ground.png",
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Positioned(
          top: 30.h,
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "إسلامي",
                    style:
                        TextStyle(fontSize: 30.sp, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Container(
                width: 310.w,
                height: 580.h,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15.r),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " ${widget.hadethName}",
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    ),
                    Container(
                      width: 200.w,
                      height: 1.h,
                      color: const Color(0xffB7935F),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      height: 500.h,
                      child: ListView(
                        children: [
                          Text(
                            widget.hadethContent,
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 20.sp, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
