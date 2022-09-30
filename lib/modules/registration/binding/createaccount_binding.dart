import 'package:get/get.dart';
import 'package:restro/modules/registration/controller/createaccount_controller.dart';

class CreateAccountBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
  Get.lazyPut<CreateAccountController>(() => CreateAccountController());
  }

}