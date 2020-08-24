// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CaseStore on _CaseStoreBase, Store {
  final _$valueAtom = Atom(name: '_CaseStoreBase.value');

  @override
  int get value {
    _$valueAtom.reportRead();
    return super.value;
  }

  @override
  set value(int value) {
    _$valueAtom.reportWrite(value, super.value, () {
      super.value = value;
    });
  }

  final _$_CaseStoreBaseActionController =
      ActionController(name: '_CaseStoreBase');

  @override
  void increment() {
    final _$actionInfo = _$_CaseStoreBaseActionController.startAction(
        name: '_CaseStoreBase.increment');
    try {
      return super.increment();
    } finally {
      _$_CaseStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
value: ${value}
    ''';
  }
}
