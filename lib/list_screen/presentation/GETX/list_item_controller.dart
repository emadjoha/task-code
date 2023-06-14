import 'package:code_challenge/list_screen/data/model/item_model.dart';

abstract class ListItemController {
  void iniTStatus();
  void startLoading();
  void endLoading();
  void showError(value);
  Future<void> getListItem();
  Future<void> updateItem(ItemModel itemModel,int index);
}