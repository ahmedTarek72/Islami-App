import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'hadeth-details-screen.dart';

class HadethScreen extends StatefulWidget {
  const HadethScreen({super.key});

  @override
  State<HadethScreen> createState() => _HadethScreenState();
}

class _HadethScreenState extends State<HadethScreen> {
  List<String> hadethNum =
      List.generate(50, (index) => "الحديث رقم ${index + 1}");
  String name = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset("assets/images/hadeth-title.png"),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height / 1.9,
          child: SingleChildScrollView(
            dragStartBehavior: DragStartBehavior.down,
            scrollDirection: Axis.vertical,
            child: Table(
              textDirection: TextDirection.rtl,
              border: TableBorder.symmetric(
                  outside: const BorderSide(color: Color(0xffB7935F)),
                  inside: const BorderSide(
                      color: Colors.brown)), // Inner border color
              defaultColumnWidth: FixedColumnWidth(
                  MediaQuery.of(context).size.width *
                      0.5), // Equal width for columns
              children: [
                for (int i = 0; i < hadethNum.length; i++)
                  TableRow(
                    children: [
                      TableCell(
                        child: GestureDetector(
                          onTap: () {
                            rootBundle
                                .loadString('assets/txt/hadeth/h${i + 1}.txt')
                                .then((value) {
                              name = value;
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          HadethDetailsScreen(
                                              hadethName: hadethNum[i],
                                              hadethContent: name)));
                            });
                          },
                          child: Center(
                            child: Text(
                              hadethNum[i],
                              style: const TextStyle(
                                  fontWeight: FontWeight.w500, fontSize: 25),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
