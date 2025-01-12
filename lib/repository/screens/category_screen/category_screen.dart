import 'package:blinkit_clone/repository/widgets/ui_helper.dart';
import 'package:blinkit_clone/repository/widgets/utility.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  TextEditingController searchController = TextEditingController();

  final List<Map<String, String>> groceryKitchen = [
    {"img": "Vegetables-Fruits", "text": "Vegetables & Fruits"},
    {"img": "Atta-Dal-Rice", "text": "Atta, Dal & Rice"},
    {"img": "Oil-Ghee-Masala", "text": "Oil, Ghee & Masala"},
    {"img": "Dairy-Bread-Milk", "text": "Dairy, Bread & Milk"},
    {"img": "Biscuits-Bakery", "text": "Biscuits & Bakery"},
  ];

  final List<Map<String, String>> secondGrocery = [
    {"img": "Dry-Fruits-Cereals", "text": "Dry Fruits & Cereals"},
    {"img": "Kitchen-Appliances", "text": "Kitchen & Appliances"},
    {"img": "Tea-Coffees", "text": "Tea & Coffees"},
    {"img": "Ice-Creams-much more", "text": "Ice Creams & Much More"},
    {"img": "Noodles-Packet Food", "text": "Noodles & Packet Food"},
  ];

  final List<Map<String, String>> snacksAndDrinks = [
    {"img": "Chips-Namkeens", "text": "Chips & Namkeens"},
    {"img": "Sweets-Chocolates", "text": "Sweets & Chocolates"},
    {"img": "Drinks-Juices", "text": "Drinks & Juices"},
    {"img": "Sauces-Spreads", "text": "Sauces & Spreads"},
    {"img": "Beauty-Cosmetics", "text": "Beauty & Cosmetics"},
  ];

  final List<Map<String, String>> household = [
    {"img": "surf"},
    {"img": "skin-strands"},
    {"img": "sofa"},
    {"img": "black-spray"},
    {"img": "kesh-king"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
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
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: reusableText(
                "Grocery & Kitchen",
                fontFamily: 'Poppins-Bold',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 110,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemCount: groceryKitchen.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return _buildCategoryItem(groceryKitchen[index]);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 110,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemCount: secondGrocery.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return _buildCategoryItem(secondGrocery[index]);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(28.0),
              child: reusableText(
                "Snacks & Drinks",
                fontFamily: 'Poppins-Bold',
                fontSize: 14,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 110,
              child: Padding(
                padding: const EdgeInsets.only(left: 20),
                child: ListView.builder(
                  itemCount: snacksAndDrinks.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return _buildCategoryItem(snacksAndDrinks[index]);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryItem(Map<String, String> category) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 8),
          height: 78,
          width: 71,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFD9EBEB),
          ),
          child: ImgPath.customImage(img: category['img']!),
        ),
        reusableText(
          category['text']!,
          fontWeight: FontWeight.w400,
          fontSize: 10,
          fontFamily: 'Poppins-Regular',
          maxLines: 2,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}