import 'package:code_challenge/list_screen/data/model/item_model.dart';
import 'package:code_challenge/list_screen/domain/usecase/list_item_usecase.dart';
import 'package:code_challenge/list_screen/domain/usecase/update_item_usecase.dart';
import 'package:get/get.dart';
import '../../../helpers/get_di_instance.dart';
import 'list_item_controller.dart';
import 'list_item_states.dart';

class ListItemControllerImp extends GetxController implements ListItemController {

  InitialState listItemState = InitialState();
  final ListItemUseCase listItemUseCase = diInstance();
  final UpdateItemUseCase updateItemUseCase = diInstance();


  @override
  void iniTStatus() {
    listItemState.isLoading = true;
    listItemState.success = false;
    listItemState.error = "";
  }

  @override
  void startLoading() {
    listItemState.isLoading = true;
    update();
  }

  @override
  void endLoading() {
    listItemState.isLoading = false;
    update();
  }

  @override
  void showError(value) {
    listItemState.error = value;
    update();
  }

  @override
  Future<void> getListItem() async {
    startLoading();
    var result = await listItemUseCase(ListItemUseCaseParams());
   return result.fold((error) async {
        endLoading();
        showError("Error !!");
    }, (successData) async {
        listItemState.items = successData;
        listItemState.success = true;
        endLoading();
    });
  }

  @override
  Future<void> updateItem(ItemModel itemModel,int index) async {
    startLoading();
    var result = await updateItemUseCase(UpdateItemUseCaseParams(itemModel,index));
     result.fold((error) async {
      endLoading();
      showError("Error !!");
    }, (successData) async {
      listItemState.items = successData;
      listItemState.success = true;
      endLoading();
    });
  }
}