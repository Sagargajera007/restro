import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:restro/modules/registration/controller/createaccount_controller.dart';

import '../../../widget/textfield_text.dart';

class CreateAccountView extends GetView<CreateAccountController> {
  CreateAccountView({Key? key}) : super(key: key);

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Create Account"),
        ),
        body: body(),
      ),
    );
  }

  Widget body() {
    return Stack(
      children: [
        Column(
          children: [
            const SizedBox(
              height: 90,
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25, bottom: 10),
                  child: Text(
                    "Full Name",
                    style: TextStyle(
                        color: Color(0xff374151),
                        fontSize: 14,
                        fontFamily: "Inter-SemiBold",
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 48,
                width: Get.mediaQuery.size.width,
                child: TextFieldText(
                    controller: name, hinttext: "Enter your full name"),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 50, bottom: 10),
                  child: Text(
                    "Email address",
                    style: TextStyle(
                        color: Color(0xff374151),
                        fontSize: 14,
                        fontFamily: "Inter-SemiBold",
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 48,
                width: Get.mediaQuery.size.width,
                child: TextFieldText(
                    controller: email, hinttext: "Eg namaemail@emailkamu.com"),
              ),
            ),
            Row(
              children: const [
                Padding(
                  padding: EdgeInsets.only(left: 25, top: 50, bottom: 10),
                  child: Text(
                    "Password",
                    style: TextStyle(
                        color: Color(0xff374151),
                        fontSize: 14,
                        fontFamily: "Inter-SemiBold",
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SizedBox(
                height: 48,
                width: Get.mediaQuery.size.width,
                child: TextFieldText(
                    controller: password,
                    hinttext: "**** **** ****  ",
                    tohide: true),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: button(),
            ),
          ],
        )
      ],
    );
  }

  Widget button() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 55, right: 55),
          child: Container(
            height: 49,
            width: Get.mediaQuery.size.width,
            decoration: BoxDecoration(
                color: Color(0xffF4F4F4),
                borderRadius: BorderRadius.circular(10)),
            child: Center(
                child: Text(
              "Registration",
              style: TextStyle(
                  color: Color(0xff9CA3AF),
                  fontFamily: "Inter-SemiBold",
                  fontWeight: FontWeight.w700),
            )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 148,
            height: 1,
            decoration: BoxDecoration(color: Color(0xffD2D4D8)),
          ),
        ),
        Padding(
            padding: const EdgeInsets.only(left: 55, right: 55),
            child: Stack(
              children: [
                Container(
                  height: 49,
                  width: Get.mediaQuery.size.width,
                  decoration: BoxDecoration(
                      color: Color(0xffF4F4F4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Text(
                    "Sign up with Google",
                    style: TextStyle(
                        color: Color(0xff222222),
                        fontFamily: "Inter-Regular",
                        fontWeight: FontWeight.w600),
                  )),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 16, bottom: 16),
                  child: SvgPicture.asset(
                    "assets/icons/ic_google.svg",
                    height: 20,
                    width: 20,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            )),
      ],
    );
  }
}
