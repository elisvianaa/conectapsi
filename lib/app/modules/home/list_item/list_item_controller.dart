import 'package:mobx/mobx.dart';

part 'list_item_controller.g.dart';

class ListItemController = _ListItemControllerBase with _$ListItemController;

abstract class _ListItemControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
