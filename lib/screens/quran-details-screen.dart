// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuranDetailsScreen extends StatefulWidget {
  const QuranDetailsScreen({
    Key? key,
    required this.suraName,
    required this.suraNumber,
    required this.suraDesc,
  }) : super(key: key);
  final String suraName;
  final String suraNumber;
  final dynamic suraDesc;
  @override
  State<QuranDetailsScreen> createState() => _QuranDetailsScreenState();
}

class _QuranDetailsScreenState extends State<QuranDetailsScreen> {
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
          top: 15.h,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30.h),
                child: Row(
                  children: [
                    Text(
                      "إسلامي",
                      style: TextStyle(
                          fontSize: 30.sp, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
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
                          "سورة ${widget.suraName}",
                          style: TextStyle(
                              fontSize: 25.sp, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 20.w,
                        ),
                        Image.asset("assets/images/play-icon.png")
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
                            widget.suraDesc,
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20.sp,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic),
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
