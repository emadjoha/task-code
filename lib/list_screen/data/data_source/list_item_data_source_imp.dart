import 'package:code_challenge/list_screen/data/data_source/list_item_data_source.dart';
import 'package:code_challenge/list_screen/data/model/item_model.dart';

class ListItemDataSourceImp  implements ListItemDataSource {
  late List<ItemModel> itemResponseModel;
  @override
  Future<List<ItemModel>> getItemList() async {
    await Future.delayed(const Duration( seconds: 2));
    return items;
  }

  @override
  Future<List<ItemModel>> updateItem(ItemModel itemModel,int index) async{
      items[index] = itemModel;
      return items;

  }
}