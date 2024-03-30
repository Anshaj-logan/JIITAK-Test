import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jittak_test/controller/image_picker_controller.dart';

import 'package:jittak_test/widgets/custom_text.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = true;
  bool check7 = true;
  bool check8 = true;

  bool smkyes = true;
  bool smkNo = false;

  bool parkyes = true;
  bool parkNo = false;

  bool giftyes = true;
  bool giftNo = false;

  @override
  Widget build(BuildContext context) {
    final ImagePickerController storeext1 = ImagePickerController();
    final ImagePickerController storeext2 = ImagePickerController();
    final ImagePickerController storeext3 = ImagePickerController();
    final ImagePickerController storint1 = ImagePickerController();
    final ImagePickerController storeint2 = ImagePickerController();
    final ImagePickerController storeint3 = ImagePickerController();
    final ImagePickerController food1 = ImagePickerController();
    final ImagePickerController food2 = ImagePickerController();
    final ImagePickerController food3 = ImagePickerController();
    final ImagePickerController menu1 = ImagePickerController();
    final ImagePickerController menu2 = ImagePickerController();
    final ImagePickerController menu3 = ImagePickerController();

    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: double.maxFinite,
          // height: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, bottom: 7),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // Navigator.pop(context);
                      },
                      child: Image.asset(
                        "assets/images/grey_ios.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 70),
                      height: 22,
                      width: 150,
                      child: Text(
                        "店舗プロフィール編集",
                        style: TextStyle(
                            color: Color(0xff4B4948),
                            fontFamily: "Noto Sans JP",
                            fontSize: 15),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.pop(context);
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 50),
                        child: Image.asset(
                          "assets/images/notify.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 1,
              ),
              Container(
                margin: EdgeInsets.only(left: 26, right: 14, top: 30),
                width: double.infinity,
                child: Column(
                  children: [
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "店舗名",
                            fontSize: 14,
                            textColor: Color(
                              0xff4B4948,
                            )),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      initialValue: 'Mer キッチン',
                      // keyboardType: widget.isNumKeypad ? TextInputType.number : TextInputType.text,
                      // maxLength: widget.maxLength,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                      ),
                      // controller: userController,

                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                      // validator: ((value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      //     return "Enter user name";
                      //   } else {
                      //     return null;
                      //   }
                      // }),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "代表担当者名",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      initialValue: '林田　絵梨花', 
                      // keyboardType: widget.isNumKeypad ? TextInputType.number : TextInputType.text,
                      // maxLength: widget.maxLength,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                      ),
                      // controller: userController,

                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                      // validator: ((value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      //     return "Enter user name";
                      //   } else {
                      //     return null;
                      //   }
                      // }),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "店舗電話番号",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      initialValue: '123 - 4567 8910',  
                      // keyboardType: widget.isNumKeypad ? TextInputType.number : TextInputType.text,
                      // maxLength: widget.maxLength,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                      ),
                      // controller: userController,

                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                      // validator: ((value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      //     return "Enter user name";
                      //   } else {
                      //     return null;
                      //   }
                      // }),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "店舗住所",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      initialValue: '大分県豊後高田市払田791-13',   
                      // keyboardType: widget.isNumKeypad ? TextInputType.number : TextInputType.text,
                      // maxLength: widget.maxLength,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                      ),
                      // controller: userController,

                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                      // validator: ((value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      //     return "Enter user name";
                      //   } else {
                      //     return null;
                      //   }
                      // }),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Image.asset(
                      "assets/images/map.png",
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "店舗外観",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                        SizedBox(
                          width: 5,
                        ),
                        CustomTextWidget(
                            entertext: "(最大3枚まで)",
                            fontSize: 14,
                            textColor: Color(0xff9C9896)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              storeext1.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: storeext1.image.value.path.isNotEmpty
                                      ? Image.file(
                                          storeext1.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (storeext1.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        storeext1.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              storeext2.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: storeext2.image.value.path.isNotEmpty
                                      ? Image.file(
                                          storeext2.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (storeext2.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        storeext2.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              storeext3.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: storeext3.image.value.path.isNotEmpty
                                      ? Image.file(
                                          storeext3.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (storeext3.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        storeext3.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "店舗内観",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                        SizedBox(
                          width: 5,
                        ),
                        CustomTextWidget(
                            entertext: "(1枚〜3枚ずつ追加してください)",
                            fontSize: 14,
                            textColor: Color(0xff9C9896)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              storint1.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: storint1.image.value.path.isNotEmpty
                                      ? Image.file(
                                          storint1.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (storint1.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        storint1.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              storeint2.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: storeint2.image.value.path.isNotEmpty
                                      ? Image.file(
                                          storeint2.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (storeint2.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        storeint2.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              storeint3.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: storeint3.image.value.path.isNotEmpty
                                      ? Image.file(
                                          storeint3.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (storeint3.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        storeint3.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "料理写真",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                        SizedBox(
                          width: 5,
                        ),
                        CustomTextWidget(
                            entertext: "(1枚〜3枚ずつ追加してください)",
                            fontSize: 14,
                            textColor: Color(0xff9C9896)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              food1.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: food1.image.value.path.isNotEmpty
                                      ? Image.file(
                                          food1.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (food1.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        food1.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              food2.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: food2.image.value.path.isNotEmpty
                                      ? Image.file(
                                          food2.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (food2.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        food2.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              food3.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: food3.image.value.path.isNotEmpty
                                      ? Image.file(
                                          food3.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (food3.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        food3.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "メニュー写真",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                        SizedBox(
                          width: 5,
                        ),
                        CustomTextWidget(
                            entertext: "(1枚〜3枚ずつ追加してください)",
                            fontSize: 14,
                            textColor: Color(0xff9C9896)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              menu1.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: menu1.image.value.path.isNotEmpty
                                      ? Image.file(
                                          menu1.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (menu1.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        menu1.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              menu2.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 8, right: 8),
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: menu2.image.value.path.isNotEmpty
                                      ? Image.file(
                                          menu2.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (menu2.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        menu2.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                        Obx(
                          () => InkWell(
                            onTap: () {
                              // Call the method to pick an image
                              menu3.Imagepicker();
                            },
                            child: Stack(
                              children: [
                                Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.grey, // Color of the border
                                      width: 1, // Width of the border
                                      style: BorderStyle
                                          .solid, // Style of the border
                                    ),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: menu3.image.value.path.isNotEmpty
                                      ? Image.file(
                                          menu3.image.value,
                                          fit: BoxFit.cover,
                                        )
                                      : Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Image.asset(
                                              "assets/images/outline-image.png",
                                              fit: BoxFit.cover,
                                            ),
                                            CustomTextWidget(
                                              entertext: "(写真を追加)",
                                              fontSize: 12,
                                              textColor: Color(0xff9C9896),
                                            ),
                                          ],
                                        ),
                                ),
                                if (menu3.image.value.path.isNotEmpty)
                                  Positioned(
                                    top: -5,
                                    right: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.close,
                                        color: Colors.white,
                                      ),
                                      onPressed: () {
                                        // Clear the selected image
                                        menu3.image.value = File('');
                                      },
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "営業時間",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 125,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color:
                                  Colors.grey.shade300, // Color of the border
                              width: 1, // Width of the border
                              style: BorderStyle.solid, // Style of the border
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextWidget(
                                  entertext: "10 : 00",
                                  fontSize: 16,
                                  textColor: Color(0xff454545)),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/arrow_down.png",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Image.asset(
                            "assets/images/Placeholder.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 125,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color:
                                  Colors.grey.shade300, // Color of the border
                              width: 1, // Width of the border
                              style: BorderStyle.solid, // Style of the border
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextWidget(
                                  entertext: "20 : 00",
                                  fontSize: 16,
                                  textColor: Color(0xff454545)),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/arrow_down.png",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "ランチ時間",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 125,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color:
                                  Colors.grey.shade300, // Color of the border
                              width: 1, // Width of the border
                              style: BorderStyle.solid, // Style of the border
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextWidget(
                                  entertext: "11 : 00",
                                  fontSize: 16,
                                  textColor: Color(0xff454545)),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/arrow_down.png",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Image.asset(
                            "assets/images/Placeholder.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 125,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color:
                                  Colors.grey.shade300, // Color of the border
                              width: 1, // Width of the border
                              style: BorderStyle.solid, // Style of the border
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomTextWidget(
                                  entertext: "15 : 00",
                                  fontSize: 16,
                                  textColor: Color(0xff454545)),
                              SizedBox(
                                width: 10,
                              ),
                              Image.asset(
                                "assets/images/arrow_down.png",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "定休日",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: check1,
                          onChanged: (value) {
                            setState(() {
                              check1 = !check1;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "月",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: check2,
                          onChanged: (value) {
                            setState(() {
                              check2 = !check2;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "火",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: check3,
                          onChanged: (value) {
                            setState(() {
                              check3 = !check3;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "水",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: check4,
                          onChanged: (value) {
                            setState(() {
                              check4 = !check4;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "木",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: check5,
                          onChanged: (value) {
                            setState(() {
                              check5 = !check5;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "金",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: check6,
                          onChanged: (value) {
                            setState(() {
                              check6 = !check6;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "土",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: check7,
                          onChanged: (value) {
                            setState(() {
                              check7 = !check7;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "日",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: check8,
                          onChanged: (value) {
                            setState(() {
                              check8 = !check8;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "祝",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "料理カテゴリー",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        width: 195,
                        height: 38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Colors.grey.shade300, // Color of the border
                            width: 1, // Width of the border
                            style: BorderStyle.solid, // Style of the border
                          ),
                        ),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 5,
                            ),
                            CustomTextWidget(
                                entertext: "料理カテゴリー選択",
                                fontSize: 16,
                                textColor: Color(0xffC7C4C0)),
                            SizedBox(
                              width: 10,
                            ),
                            Image.asset(
                              "assets/images/arrow_down.png",
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "予算",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 125,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color:
                                  Colors.grey.shade300, // Color of the border
                              width: 1, // Width of the border
                              style: BorderStyle.solid, // Style of the border
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              CustomTextWidget(
                                  entertext: "¥ 1,000",
                                  fontSize: 16,
                                  textColor: Color(0xff454545)),
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 8, right: 8),
                          child: Image.asset(
                            "assets/images/Placeholder.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          width: 125,
                          height: 38,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color:
                                  Colors.grey.shade300, // Color of the border
                              width: 1, // Width of the border
                              style: BorderStyle.solid, // Style of the border
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: 8,
                              ),
                              CustomTextWidget(
                                  entertext: "¥ 2,000",
                                  fontSize: 16,
                                  textColor: Color(0xff454545)),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "キャッチコピー",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      initialValue: "美味しい！リーズナブルなオムライスランチ！", 
                      // keyboardType: widget.isNumKeypad ? TextInputType.number : TextInputType.text,
                      // maxLength: widget.maxLength,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                      ),
                      // controller: userController,

                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                      // validator: ((value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      //     return "Enter user name";
                      //   } else {
                      //     return null;
                      //   }
                      // }),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "座席数",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      initialValue: "40席", 
                      // keyboardType: widget.isNumKeypad ? TextInputType.number : TextInputType.text,
                      // maxLength: widget.maxLength,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                      ),
                      // controller: userController,

                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                      // validator: ((value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      //     return "Enter user name";
                      //   } else {
                      //     return null;
                      //   }
                      // }),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "喫煙席",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: smkyes,
                          onChanged: (value) {
                            setState(() {
                              smkyes = !smkyes;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "有",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: smkNo,
                          onChanged: (value) {
                            setState(() {
                              smkNo = !smkNo;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "無",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "駐車場",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: parkyes,
                          onChanged: (value) {
                            setState(() {
                              parkyes = !parkyes;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "有",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: parkNo,
                          onChanged: (value) {
                            setState(() {
                              parkNo = !parkNo;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "無",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "来店プレゼント",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: giftyes,
                          onChanged: (value) {
                            setState(() {
                              giftyes = !giftyes;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "有（最大３枚まで）",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                        Checkbox(
                          activeColor: Color(0xffEE7D42),
                          value: giftNo,
                          onChanged: (value) {
                            setState(() {
                              giftNo = !giftNo;
                            });
                          },
                        ),
                        CustomTextWidget(
                            entertext: "無",
                            fontSize: 16,
                            textColor: Color(0xff4B4948)),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          child: Image.asset(
                            "assets/images/icecream.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          // margin: EdgeInsets.only(left: 10,right: 10),
                          child: Image.asset(
                            "assets/images/green-can.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          child: Image.asset(
                            "assets/images/cola.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        CustomTextWidget(
                            entertext: "来店プレゼント名",
                            fontSize: 14,
                            textColor: Color(0xff4B4948)),
                        CustomTextWidget(
                            entertext: "*",
                            fontSize: 14,
                            textColor: Color(0xffEB5308)),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      initialValue: "いちごクリームアイスクリーム, ジュース", 
                      // keyboardType: widget.isNumKeypad ? TextInputType.number : TextInputType.text,
                      // maxLength: widget.maxLength,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        letterSpacing: 0.0,
                      ),
                      // controller: userController,

                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(
                            color: Colors.blue,
                            width: 3,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: Colors.grey,
                          ),
                        ),
                        contentPadding: EdgeInsets.all(16),
                      ),
                      // validator: ((value) {
                      //   if (value!.isEmpty ||
                      //       !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                      //     return "Enter user name";
                      //   } else {
                      //     return null;
                      //   }
                      // }),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    TextButton(
                      onPressed: () {
                        // Add your onPressed logic here
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color(0xffFFC8AB)), // Set the background color
                        minimumSize: MaterialStateProperty.all<Size>(
                            Size(double.infinity, 45)), // Set the minimum size
                      ),
                      child: Text(
                        "編集を保存",
                        style: TextStyle(
                          color: Color(0xffFFFFFF),
                          fontFamily: "Noto Sans JP",
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
