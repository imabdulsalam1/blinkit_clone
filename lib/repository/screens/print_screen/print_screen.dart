import 'package:blinkit_clone/domain/constants/app_colors.dart';
import 'package:blinkit_clone/repository/widgets/ui_helper.dart';
import 'package:blinkit_clone/repository/widgets/utility.dart';
import 'package:flutter/material.dart';

class PrintScreen extends StatefulWidget {
  const PrintScreen({super.key});

  @override
  State<PrintScreen> createState() => _PrintScreenState();
}

class _PrintScreenState extends State<PrintScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFfbf0ce),
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
            SizedBox(height: 40,),
            reusableText("Print Store",fontFamily: 'Poppins-Bold',fontSize: 32,fontWeight: FontWeight.w700),
            reusableText("Blinkit ensures secure prints at every stage",fontFamily: 'Poppins-Regular',fontSize: 14,fontWeight: FontWeight.w700,color: AppColors.textGrey),
            SizedBox(height: 40,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.white
              ),
              child: Row(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                reusableText("Documents",fontWeight: FontWeight.w700,fontSize: 14,fontFamily: 'Poppins-Bold'),
                  _docText("Price starting at Rs 3/pages"),
                  _docText("Paper quality: 70 GSM"),
                  _docText("Single side prints"),
                    
                    SizedBox(height: 30,),
                   Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(5),
                         color: Colors.green
                       ),
                       child: TextButton(onPressed: (){}, child: reusableText('Upload Files',color: Colors.white,fontFamily: 'Poppins-Bold',fontSize: 13,fontWeight: FontWeight.bold)))
                ],),
                ImgPath.customImage(img: 'document')

              ],),
            )
          ],
        ),
      ),
    );
  }
}

Widget _docText(String title,){
  return Row(children: [
    Icon(Icons.star_rounded,size: 13,color: AppColors.textGrey,),
    SizedBox(width: 8,),
    reusableText(title,fontWeight: FontWeight.w400,fontSize: 14,fontFamily: 'Poppins-Regular',color: AppColors.textGrey)
  ],);
}