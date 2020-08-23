import 'package:mobx/mobx.dart';

part 'card_profile_controller.g.dart';

class CardProfileController = _CardProfileControllerBase
    with _$CardProfileController;

abstract class _CardProfileControllerBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
