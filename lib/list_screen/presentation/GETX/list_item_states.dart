import '../../data/model/item_model.dart';

class InitialState {
  bool? isLoading = false;
  bool? success = false;
  String? error = "";
  List<ItemModel>? items;

  @override
  String toString() {
    return 'InitialState{isLoading: $isLoading, success: $success, error: $error, items: $items}';
  }
}
