import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restro/constants.dart';
import 'package:restro/routes/app_page.dart';

void main(){
runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
        debugShowCheckedModeBanner: false,
        initialRoute: '/first',
        getPages: AppPage.routes
    );
  }
}
