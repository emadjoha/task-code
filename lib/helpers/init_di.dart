

import 'package:code_challenge/list_screen/domain/usecase/update_item_usecase.dart';

import '../list_screen/data/data_source/list_item_data_source.dart';
import '../list_screen/data/data_source/list_item_data_source_imp.dart';
import '../list_screen/data/repository/list_item_repository_imp.dart';
import '../list_screen/domain/reposiory/list_item_repository.dart';
import '../list_screen/domain/usecase/list_item_usecase.dart';
import 'get_di_instance.dart';

initSingletonInstances() {
  _registerDataSources();

  _registerRepositories();

  _registerUseCases();
}

void _registerDataSources() {
  diInstance.registerLazySingleton<ListItemDataSource>(
          () => ListItemDataSourceImp());

}

void _registerRepositories() {
  diInstance.registerLazySingleton<ListItemRepository>(
          () => ListItemRepositoryImp(listItemDataSource: diInstance()));
}

void _registerUseCases() {
  diInstance.registerLazySingleton(() => ListItemUseCase(diInstance()));
  diInstance.registerLazySingleton(() => UpdateItemUseCase(diInstance()));
}