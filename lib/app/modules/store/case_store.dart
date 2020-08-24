import 'package:mobx/mobx.dart';

part 'case_store.g.dart';

class CaseStore = _CaseStoreBase with _$CaseStore;

abstract class _CaseStoreBase with Store {
  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  }
}
