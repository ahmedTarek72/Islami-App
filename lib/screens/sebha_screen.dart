import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SebhaScreen extends StatefulWidget {
  const SebhaScreen({super.key});

  @override
  State<SebhaScreen> createState() => _SebhaScreenState();
}

class _SebhaScreenState extends State<SebhaScreen> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      verticalDirection: VerticalDirection.down,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const Image(image: AssetImage("assets/images/tasbeh.png")),
        SizedBox(
          height: 30.h,
        ),
        const Text(
          "   عدد التسبيحات  ",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 20.h,
        ),
        Container(
          padding: EdgeInsets.all(20.r),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 185, 159, 120),
              borderRadius: BorderRadius.circular(30)),
          child: Text(
            '$counter',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.sp),
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              counter++;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 20.h),
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
            decoration: BoxDecoration(
                color: const Color(0xffB7935F),
                borderRadius: BorderRadius.circular(50)),
            child: Text(
              counterText(),
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 25.sp),
            ),
          ),
        ),
      ],
    );
  }

  String counterText() {
    if (counter <= 33) {
      return ("سبحان الله ");
    } else if (counter <= 66) {
      return ("الحمد لله");
    } else if (counter <= 99) {
      return ("الله اكبر ");
    } else if (counter == 100) {
      ("استغفر الله");
      setState(() {
        counter = 0;
      });
      return ("ابدأ  ");
    } else {
      return "";
    }
  }
}
