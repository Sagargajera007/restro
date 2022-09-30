import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:restro/constants.dart';
import 'package:restro/modules/registration/view/createaccount_view.dart';
import 'package:restro/utils/app_theme.dart';
import '../../../widget/textbutton.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 100,
          ),
          Image.asset(
            "assets/images/Order Success.png",
            fit: BoxFit.cover,
          ),
         const SizedBox(
            height: 50,
          ),
          const Text(
            "Welcome",
            style: AppTheme.titleTextStyle,
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 60, left: 60),
            child: Text(
              "Before Enjoying Foodmedia Services Please Register First",
              textAlign: TextAlign.center,
              style: AppTheme.labelTextStyle,
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          SizedBox(
            width: 256,
            height: 49,
            child: MyTextButton(
              onpressed: () {
                Get.toNamed('/createaccount');
              },
              backgroundcolor: const MaterialStatePropertyAll(primaryButtonColor),
              buttontext: "Create Account",
              myfont: "Inter-SemiBold",
              textcolor: Colors.white,
              textweight: FontWeight.w700,
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
            width: 256,
            height: 49,
            child: MyTextButton(
                onpressed: () {},
                backgroundcolor:
                const MaterialStatePropertyAll(secondaryButtonColor),
                buttontext: "Login ",
                myfont: "Inter-SemiBold",
                textcolor: const Color(0xff10B981),
                textweight: FontWeight.w700),
          ),
          const SizedBox(
            height: 16,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 19, left: 19),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                const TextSpan(
                  text: 'By Logging In Or Registering, You Have Agreed To',
                  style: TextStyle(
                      color: Color(0xff242323),
                      fontSize: 10,
                      fontFamily: "Inter-Regular",
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                    text: ' The Terms And Conditions',
                    style: const TextStyle(
                        color: Color(0xff32B768),
                        fontSize: 10,
                        fontFamily: "Inter-Regular",
                        fontWeight: FontWeight.w400),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
                const TextSpan(
                  text: ' And ',
                  style: TextStyle(
                      color: Color(0xff242323),
                      fontSize: 10,
                      fontFamily: "Inter-Regular",
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                    text: 'Privacy Policy.',
                    style: const TextStyle(
                        color: Color(0xff32B768),
                        fontSize: 10,
                        fontFamily: "Inter-Regular",
                        fontWeight: FontWeight.w400),
                    recognizer: TapGestureRecognizer()..onTap = () {}),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
