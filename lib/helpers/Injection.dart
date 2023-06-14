
import 'package:code_challenge/list_screen/presentation/GETX/list_item_controller_impl.dart';
import 'package:get/get.dart';

Future iniGetX() async {
  Get.lazyPut<ListItemControllerImp>(() => ListItemControllerImp());
}
