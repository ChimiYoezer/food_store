import 'package:food_store/state/stagemanage.dart';
import 'package:get/get.dart';

class BindingClass extends Bindings{
  @override
  void dependencies() {
    Get.put<ManageState>(ManageState());
  }
}