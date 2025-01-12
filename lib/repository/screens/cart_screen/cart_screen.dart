import 'package:blinkit_clone/domain/constants/app_colors.dart';
import 'package:blinkit_clone/repository/widgets/ui_helper.dart';
import 'package:blinkit_clone/repository/widgets/utility.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 190,
                  width: double.infinity,
                  color: Color(0XFFF7CB45),
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          reusableText(
                            "Blinkit in",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            fontFamily: 'Poppins-Bold',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          reusableText(
                            "16 minutes",
                            color: Color(0XFF000000),
                            fontFamily: 'Poppins-Bold',
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          reusableText(
                            "HOME ",
                            color: Color(0XFF000000),
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                          reusableText(
                            "- Abdul, Greater Noida, Uttar Pradesh",
                            color: Color(0XFF000000),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ), Icon(Icons.keyboard_arrow_down,size: 25,),
                        ],
                      ),
                      SizedBox(height: 25,),
                      GlobalWidgets.customTextField(controller: searchController),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  top: 30,
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      color: Colors.black,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            ImgPath.customImage(img: "cart"),
            SizedBox(
              height: 20,
            ),
            reusableText(
              "Reordering will be easy",
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 12,
              fontFamily: 'Poppins-Bold',
            ),
            reusableText(
              "Items you order will show up here so you can buy",
              color: Color(0XFF000000),
              fontSize: 12,
              fontWeight: FontWeight.bold,
            ),
            reusableText(
              "them again easily.",
              color: Color(0XFF000000),
              fontWeight: FontWeight.bold,
              fontSize: 12,
              fontFamily: 'Poppins-Bold',
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                reusableText(
                  "Bestsellers",
                  color: Color(0XFF000000),
                  fontFamily: 'Poppins-Bold',
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                _productCard("milk"),
                SizedBox(
                  width: 15,
                ),
                _productCard("potato"),
                SizedBox(
                  width: 15,
                ),
                _productCard("tomato"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _productCard(String imageName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            ImgPath.customImage(img: imageName),
            Padding(
              padding: EdgeInsets.only(top: 95, left: 65),
              child: GlobalWidgets.customButton(() {}),
            ),
          ],
        ),
        Row(
          children: [
            ImgPath.customImage(img: 'timer'),
            reusableText(
              "16 mins",
              fontFamily: 'Poppins-Regular',
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: AppColors.textGrey,
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          children: [
            ImgPath.customImage(img: 'rupee'),
            reusableText(
              "27",
              fontWeight: FontWeight.w700,
              fontSize: 14,
              fontFamily: 'Poppins-Bold',
              color: Colors.black,
            ),
          ],
        ),
      ],
    );
  }
}