import 'package:code_challenge/list_screen/data/data_source/list_item_data_source.dart';
import 'package:code_challenge/list_screen/data/model/item_model.dart';
import 'package:dartz/dartz.dart';
import '../../domain/reposiory/list_item_repository.dart';
class ListItemRepositoryImp implements ListItemRepository{

  final ListItemDataSource listItemDataSource;

  ListItemRepositoryImp({
    required this.listItemDataSource,
  });
  @override
  Future<Either<dynamic, List<ItemModel>>> getListItem() async {
    var result;
    try {
      result = await listItemDataSource.getItemList();
      return Right(result);
    } catch (e) {
      return Left(result);
    }
  }
  @override
  Future<Either<dynamic, List<ItemModel>>> updateItem(ItemModel itemModel,int index) async {
    var result;
    try {
      result =await listItemDataSource.updateItem(itemModel,index);
      return Right(result);
    } catch (e) {
      return Left(result);
    }
  }
}
