import 'package:mobx/mobx.dart';

part 'list_profile_controller.g.dart';

class ListProfileController = _ListProfileControllerBase
    with _$ListProfileController;

abstract class _ListProfileControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
