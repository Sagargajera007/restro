import 'package:get/get.dart';
import 'package:restro/modules/registration/binding/createaccount_binding.dart';
import 'package:restro/modules/registration/view/createaccount_view.dart';
import 'package:restro/modules/registration/view/first_screen_view.dart';

class AppPage {
  static final routes = [
    GetPage(
      name: '/first',
      page: () => const FirstScreen(),
    ),
    GetPage(
      name: '/createaccount',
      page: () =>  CreateAccountView(),
      binding: CreateAccountBinding(),
    ),
  ];
}
