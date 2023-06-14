import 'package:code_challenge/list_screen/data/model/item_model.dart';
import 'package:code_challenge/list_screen/domain/reposiory/list_item_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../helpers/usecase.dart';

class UpdateItemUseCase extends UseCase<List<ItemModel>, UpdateItemUseCaseParams> {
  final ListItemRepository listItemRepository;

  UpdateItemUseCase(this.listItemRepository);

  @override
  Future<Either<dynamic, List<ItemModel>>> call(
      UpdateItemUseCaseParams params) {
    return listItemRepository.updateItem(params.itemModel,params.index);
  }
}

class UpdateItemUseCaseParams {
  final ItemModel itemModel;
  final int index;
  UpdateItemUseCaseParams(this.itemModel,this.index);
}
