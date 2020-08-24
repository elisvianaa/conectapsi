import 'package:mobx/mobx.dart';

part 'curse_controller.g.dart';

class CurseController = _CurseControllerBase with _$CurseController;

abstract class _CurseControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
