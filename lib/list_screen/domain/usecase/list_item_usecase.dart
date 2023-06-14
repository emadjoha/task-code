import 'package:code_challenge/list_screen/data/model/item_model.dart';
import 'package:code_challenge/list_screen/domain/reposiory/list_item_repository.dart';
import 'package:dartz/dartz.dart';
import '../../../helpers/usecase.dart';

class ListItemUseCase extends UseCase<List<ItemModel>,
    ListItemUseCaseParams> {
  final ListItemRepository listItemRepository;

  ListItemUseCase(this.listItemRepository);

  @override
  Future<Either<dynamic, List<ItemModel>>> call(
      ListItemUseCaseParams params) {
    return listItemRepository.getListItem();
  }
}

class ListItemUseCaseParams {

  ListItemUseCaseParams();
}
