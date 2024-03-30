import 'package:flutter/material.dart';
import 'package:jittak_test/widgets/date_container.dart';

class SearchScreen extends StatelessWidget {
   SearchScreen({super.key});

    List<String> imagePaths = [
    'assets/images/list-1.png',
    'assets/images/list-2.png',
    'assets/images/list-3.png',
    'assets/images/list-4.png',
    'assets/images/list-5.png',
    'assets/images/list-6.png',

    // Add all your image asset paths here
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffF7F7F7),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    height: 40,
                    width: 250,
                    child: Row(
                      children: [
                        Text(
                          "北海道, 札幌市",
                          style: TextStyle(
                              color: Color(0xff303030),
                              fontFamily: "Noto Sans JP",
                              fontSize: 12),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/Filter_icon.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: Image.asset(
                      "assets/images/love.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 33,
              color: Color(0xffFAAA14),
              child: Center(
                  child: Text(
                "2022年 5月 26日（木）",
                style: TextStyle(
                    color: Color(0xff303030),
                    fontFamily: "Noto Sans JP",
                    fontSize: 14),
              )),
            ),
            SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              height: 67,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 67,
                    width: 44,
                    decoration: BoxDecoration(
                      color: Color(0xffFAAA14),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // SizedBox(height: 11,),
                        Text(
                          "木",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Noto Sans JP",
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "26",
                          style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Noto Sans JP",
                              fontSize: 17,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  DateContainer(
                    text1: "金",
                    text2: "27",
                  ),
                  DateContainer(
                    text1: "土",
                    text2: "28",
                  ),
                  DateContainer(
                    text1: "日",
                    text2: "29",
                  ),
                  DateContainer(
                    text1: "月",
                    text2: "30",
                  ),
                  DateContainer(
                    text1: "火",
                    text2: "31",
                  ),
                  DateContainer(
                    text1: "水",
                    text2: "1",
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: imagePaths.length,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(left: 25, right: 25),
                      width: double.infinity,
                      height: 388,
                      child: Column(
                        children: [
                          Image.asset(
                            imagePaths[index], 
                            fit: BoxFit.cover,
                          ),
                          Container(
                            margin:
                                EdgeInsets.only(left: 20, right: 12, top: 16),
                            width: double.infinity,
                            height: 36,
                            // color: Colors.amber,
                            child:
                                Text("介護有料老人ホームひまわり倶楽部の介護職／ヘ\nルパー求人（パート／バイト）"),
                          ),
                          SizedBox(
                            height: 7,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 20),
                                width: 130,
                                height: 25,
                                decoration: BoxDecoration(
                                  color: Color(0xffEEAB40).withOpacity(.1),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                    child: Text(
                                  "介護付き有料老人ホーム",
                                  style: TextStyle(
                                    color: Color(0xffFAAA14),
                                    fontFamily: "Noto Sans JP",
                                    fontSize: 10,
                                  ),
                                )),
                              ),
                              Container(
                                margin: EdgeInsets.only(right: 14),
                                width: 57,
                                height: 16,
                                decoration: BoxDecoration(
                                  // color: Color(0xffEEAB40).withOpacity(.1),
                                  borderRadius: BorderRadius.circular(3),
                                ),
                                child: Center(
                                    child: Text(
                                  "¥ 6,000",
                                  style: TextStyle(
                                      color: Color(0xff303030),
                                      fontFamily: "Noto Sans JP",
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "5月 31日（水）08 : 00 ~ 17 : 00",
                                  style: TextStyle(
                                    color: Color(0xff303030),
                                    fontFamily: "Noto Sans JP",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "北海道札幌市東雲町3丁目916番地17号",
                                  style: TextStyle(
                                    color: Color(0xff303030),
                                    fontFamily: "Noto Sans JP",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              children: [
                                Text(
                                  "交通費 300円",
                                  style: TextStyle(
                                    color: Color(0xff303030),
                                    fontFamily: "Noto Sans JP",
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "住宅型有料老人ホームひまわり倶楽部",
                                  style: TextStyle(
                                    color: Color(0xff303030).withOpacity(.35),
                                    fontFamily: "Noto Sans JP",
                                    fontSize: 12,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(right: 12),
                                  child: Image.asset(
                                    "assets/images/love-grey.png",
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );
  }
}
