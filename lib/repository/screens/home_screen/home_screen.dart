import 'package:blinkit_clone/repository/widgets/utility.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // App Heading
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        reusableText(
                          "Blinkit in",
                          fontWeight: FontWeight.w700,
                          fontSize: 12,
                          color: Colors.black,
                          fontFamily: 'Poppins-Regular',
                        ),
                        SizedBox(
                          height: size.height * 0.001,
                        ),
                        reusableText(
                          "16 Minutes",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Poppins-Bold',
                        ),
                        // HomeScreenBottom()
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
      // bottomNavigationBar: HomeScreenBottom(),
    );
  }
}