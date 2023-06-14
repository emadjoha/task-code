// This file to implement abstract class for endpoint

import 'package:code_challenge/list_screen/data/model/item_model.dart';


abstract class ListItemDataSource  {
  Future<List<ItemModel>> getItemList();
  Future<List<ItemModel>> updateItem(ItemModel itemModel,int index);
}