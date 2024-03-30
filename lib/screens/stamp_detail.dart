

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

final List<String> imgList = [
  "assets/images/stamp_tick.png",
  "assets/images/stamp_tick.png",
];

class StampDetailScreen extends StatefulWidget {
  const StampDetailScreen({super.key});

  @override
  State<StampDetailScreen> createState() => _StampDetailScreenState();
}

class _StampDetailScreenState extends State<StampDetailScreen> {
  final List<Widget> imageSliders = imgList
      .map((item) => Container(
            child: Container(
              margin: EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Image.asset(
                  item,
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
              ),
            ),
          ))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            child: Stack(
              children: [
                Positioned(
                    left: 0,
                    right: 0,
                    child: Container(
                      width: double.maxFinite,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xffA8B1FF),
                      ),
                    )),
                Positioned(
                    left: 20,
                    top: 50,
                    child: Column(
                      children: [
                        Row(
                          children: [
                             InkWell(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Image.asset(
                                  "assets/images/purple_ios.png", 
                                  fit: BoxFit.cover,
                                ),
                              ),
                            Container(
                              margin: EdgeInsets.only(left: 70),
                              height: 20,
                              width: 125,
                              child: Text(
                                "スタンプカード詳細",
                                style: TextStyle(
                                    color: Color(0xffFFFFFF),
                                    fontFamily: "Noto Sans JP",
                                    fontSize: 14),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 83),
                              child: Image.asset(
                                "assets/images/minus-circle.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height: 20,
                                width: 96,
                                child: Text(
                                  "Mer キッチン",
                                  style: TextStyle(
                                      color: Color(0xffFFFFFF),
                                      fontFamily: "Noto Sans JP",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 110),
                                height: 28,
                                width: 140,
                                child: Row(
                                  children: [
                                    Text(
                                      "現在の獲得数",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontFamily: "Noto Sans JP",
                                          fontSize: 14),
                                    ),
                                    Text(
                                      "30",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontFamily: "Noto Sans JP",
                                          fontSize: 28,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      "個",
                                      style: TextStyle(
                                          color: Color(0xffFFFFFF),
                                          fontFamily: "Noto Sans JP",
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    )),
                Positioned(
                    top: 170,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 700,     
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),
                          )),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
      
                          // Container(child: Image.asset(
                          //   "assets/images/stamp_tick.png",
                          //   fit: BoxFit.cover,
                          // ),)
                          Container(
                            child: CarouselSlider(
                              options: CarouselOptions(
                                // autoPlay: true,
                                aspectRatio: 2.0,
                                enlargeCenterPage: true,
                              ),
                              items: imageSliders,
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Container(
                              margin: EdgeInsets.only(right: 40),
                              width: 70,
                              height: 20,
                              child: Text(
                                "  2 / 2枚目",
                                style: TextStyle(
                                    color: Color(0xff303030),
                                    fontFamily: "Noto Sans JP",
                                    fontSize: 14),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Container(
                              margin: EdgeInsets.only(left: 12),
                              child: Text(
                                "スタンプ獲得履歴",
                                style: TextStyle(
                                    color: Color(0xff303030),
                                    fontFamily: "Noto Sans JP",
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          Expanded(
                            child: ListView.builder(
                              // scrollDirection: Axis.vertical, 
                              itemCount: 5,   
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    ListTile(
                                      title: Padding(
                                       padding: const EdgeInsets.only(bottom: 10.0), 
                                        child: Text(
                                          "2021 / 11 / ${18 - index}",
                                          style: TextStyle(
                                            color: Color(0xffB5B5B5),
                                            fontFamily: "Noto Sans JP",
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      subtitle: Text(
                                        "スタンプを獲得しました。",
                                        style: TextStyle(
                                          color: Color(0xff454545),
                                          fontFamily: "Noto Sans JP",
                                          fontSize: 14,
                                        ),
                                      ),
                                      trailing:Text(
                                        "1 個",
                                        style: TextStyle(
                                          color: Color(0xff454545),
                                          fontFamily: "Noto Sans JP",
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                        ),
                                      ) ,
                                    ),
                                    Divider(
                                      thickness: 1, 
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ))
              ],
            )),
      ),
    );
  }
}
