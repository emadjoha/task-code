
import 'package:dartz/dartz.dart';

import '../../data/model/item_model.dart';

abstract class ListItemRepository {
  Future<Either<dynamic, List<ItemModel>>> getListItem();
  Future<Either<dynamic, List<ItemModel>>> updateItem(ItemModel itemModel,int index);
}