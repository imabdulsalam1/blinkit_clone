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
    {"img": "Vegetables-Fruits", "text": "Vegetables &\nFruits"},
    {"img": "Atta-Dal-Rice", "text": "Atta, Dal & \nRice"},
    {"img": "Oil-Ghee-Masala", "text": "Oil, Ghee & \nMasala"},
    {"img": "Dairy-Bread-Milk", "text": "Dairy, Bread & \nMilk"},
    {"img": "Biscuits-Bakery", "text": "Biscuits & \nBakery"},
  ];

  final List<Map<String, String>> secondGrocery = [
    {"img": "Dry-Fruits-Cereals", "text": "Dry Fruits\n& Cereals"},
    {"img": "Kitchen-Appliances", "text": "Kitchen & \nAppliances"},
    {"img": "Tea-Coffees", "text": "Tea & \nCoffees"},
    {"img": "Ice Creams-much more", "text": "Ice Creams & \nMuch More"},
    {"img": "Noodles-Packet Food", "text": "Noodles & \nPacket Food"},
  ];

  final List<Map<String, String>> snacksAndDrinks = [
    {"img": "Chips-Namkeens", "text": "Chips & \nNamkeens"},
    {"img": "Sweets-Chocolates", "text": "Sweets & \nChocolates"},
    {"img": "Drinks-Juices", "text": "Drinks & \nJuices"},
    {"img": "Sauces-Spreads", "text": "Sauces & \nSpreads"},
    {"img": "Beauty-Cosmetics", "text": "Beauty & \nCosmetics"},
  ];

  final List<Map<String, String>> household = [
    {"img": "surf", "text": "N/A"},
    {"img": "skin-strands", "text": "N/A"},
    {"img": "sofa", "text": "N/A"},
    {"img": "black-spray", "text": "N/A"},
    {"img": "kesh-king", "text": "N/A"},
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
                          Icon(Icons.keyboard_arrow_down,size: 25,),
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

            ]),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: reusableText("Grocery & Kitchen", fontFamily: 'Poppins-Bold', fontSize: 14, fontWeight: FontWeight.w700,),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                itemCount: groceryKitchen.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _buildCategoryItem(groceryKitchen[index]);
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                itemCount: secondGrocery.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return _buildCategoryItem(secondGrocery[index]);
                },
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: reusableText("Snacks & Drinks", fontFamily: 'Poppins-Bold', fontSize: 14, fontWeight: FontWeight.w700,),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                itemCount: snacksAndDrinks.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => _buildCategoryItem(snacksAndDrinks[index]),
              ),
            ),
            // SizedBox(
            //   height: 20,
            // ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: reusableText("Household Essentials", fontFamily: 'Poppins-Bold', fontSize: 14, fontWeight: FontWeight.w700,),
            ),
            SizedBox(
              height: 110,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 20),
                itemCount: household.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => _buildCategoryItem(household[index]),
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
          // margin: EdgeInsets.only(left: 8),
          height: 78,
          width: 71,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(0xFFD9EBEB),
          ),
          child: ImgPath.customImage(img: category['img']!),
        ),
        reusableText(category['text']!, fontWeight: FontWeight.w400, fontSize: 10, fontFamily: 'Poppins-Regular', maxLines: 2, textAlign: TextAlign.center,
        ),
      ],
    );
  }
}