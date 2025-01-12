import 'package:blinkit_clone/domain/constants/app_colors.dart';
import 'package:blinkit_clone/repository/component/bottom_nav/bottom_nav.dart';
import 'package:blinkit_clone/repository/screens/authentications_screen/signup_screen/signup_screen.dart';
import 'package:blinkit_clone/repository/widgets/ui_helper.dart';
import 'package:blinkit_clone/repository/widgets/utility.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        body: Column(
      children: [
        ImgPath.customImage(img: "blinkit_onboarding_screen", width: 375),
        ImgPath.customImage(img: "blinkit-2"),
        reusableText("India's Last Minute App",fontFamily:  "Poppins-Bold",
            fontSize: 20, fontWeight: FontWeight.w700),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            child: Container(
              width: size.width,
              height: 200,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(20)),
              child: Column(
                children: [
                  SizedBox(height: size.height * .02),
                  reusableText("Abdul", fontFamily: "Poppins-Regular",
                      fontWeight: FontWeight.w500, fontSize: 14),
                  SizedBox(height: size.height*.003),
                  reusableText("8789XXXXXX", fontWeight: FontWeight.w700, fontSize: 14, color: AppColors.textGrey,fontFamily: ''),
                  SizedBox(height: size.height * .015),
                  SizedBox(
                      height: 48,
                      width: size.width * .8,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFFE23744)),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => BottomNav()),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              GlobalWidgets.customText("Login with", fontSize: 14, fontWeight: FontWeight.w700, fontFamily: "Poppins-Regular"),
                              SizedBox(width: size.width * 0.02,),
                              ImgPath.customImage(img: 'zomato')
                            ],
                          ))),
                  SizedBox(height: size.height * .005),
                  SizedBox(
                      width: size.width * .8,
                      child: reusableText("Access your saved addresses from Zomato automatically!", fontWeight: FontWeight.w400, fontSize: 10, color: AppColors.textGrey)),
                  SizedBox(height: size.height * .01),
                  TextButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  }, child:GlobalWidgets.customText("or login with phone number", fontFamily: "Poppins-Regular", fontSize: 14, fontWeight: FontWeight.w500, color: Color(0xFF269237))
                  )
                ],
              ),
            ),
          ),
        )
      ],
    ));
  }
}
