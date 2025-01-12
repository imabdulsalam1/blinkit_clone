import 'package:blinkit_clone/domain/constants/app_colors.dart';
import 'package:blinkit_clone/repository/widgets/ui_helper.dart';
import 'package:blinkit_clone/repository/widgets/utility.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> groceryKitchen = [
      {"img": "Vegetables-Fruits", "text": "Vegetables &\nFruits"},
      {"img": "Atta-Dal-Rice", "text": "Atta, Dal & \nRice"},
      {"img": "Oil-Ghee-Masala", "text": "Oil, Ghee & \nMasala"},
      {"img": "Dairy-Bread-Milk", "text": "Dairy, Bread & \nMilk"},
      {"img": "Biscuits-Bakery", "text": "Biscuits & \nBakery"},
    ];

    final List<Map<String, String>> megaDiwali =[
      {"img": "Diya", "text": "Lights, Diyas \n& Candles"},
      {"img": "gifts", "text": "Diwali Gifts"},
      {"img": "gadgets", "text": "Appliances\n& Gadgets"},
      {"img": "home living", "text": "Home\n& Living"},
    ];

    TextEditingController searchController = TextEditingController();
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 190,
                    width: double.infinity,
                    color: Color(0XFFEC0505),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            reusableText(
                              "Blinkit in",
                              color: Colors.white,
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
                              color: Colors.white,
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
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 12,
                            ),
                            reusableText(
                              "- Abdul, Greater Noida, Uttar Pradesh",
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            Icon(
                              Icons.keyboard_arrow_down,
                              size: 25,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        GlobalWidgets.customTextField(
                            controller: searchController),
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
              Divider(height: 1,color: Colors.grey,),
              Stack(
                children: [
                  Container(
                    // height: 295,
                    width: double.infinity,
                    color: Color(0XFFEC0505),
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            ImgPath.customImage(img: 'fire-cracker 1'),
                            ImgPath.customImage(img: 'fire-cracker-small'),
                            reusableText('Mega Diwali',fontWeight: FontWeight.w700,fontSize: 20,fontFamily: 'Poppins-Bold',color: Colors.white),
                            ImgPath.customImage(img: 'fire-cracker-small'),
                            ImgPath.customImage(img: 'fire-cracker 2'),
                          ],
                        ),
                        SizedBox(
                          height: 120,
                          child: ListView.builder(
                            // padding: const EdgeInsets.only(left: 20),
                            itemCount: megaDiwali.length,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => _buildCategoryItem(megaDiwali[index]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  _productCard("Golden Glass"),
                  SizedBox(
                    width: 15,
                  ),
                  _productCard("gulaab-jamun"),
                  SizedBox(
                    width: 15,
                  ),
                  _productCard("bikaji"),
                ],
              ),
              SizedBox(height: 20,),
              SizedBox(
                height: 120,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: 20),
                  itemCount: groceryKitchen.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => _buildCategoryItem2(groceryKitchen[index]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}



Widget _buildCategoryItem(Map<String, String> category) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        padding: EdgeInsets.symmetric(horizontal: 5,vertical: 2),
        margin:EdgeInsets.only(left: 5),
        height: 120,
        // width: 71,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Color(0xFFD9EBEB),
        ),
        child:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
      reusableText(category['text']!, fontWeight: FontWeight.w400, fontSize: 10, fontFamily: 'Poppins-Regular', maxLines: 2, textAlign: TextAlign.center,),
        Expanded(child: Container()),
          ImgPath.customImage(img: category['img']!)
        ],)
      ),
    ],
  );
}

Widget _buildCategoryItem2(Map<String, String> category) {
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
