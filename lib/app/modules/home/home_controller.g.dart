// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$openCardAtom = Atom(name: '_HomeControllerBase.openCard');

  @override
  bool get openCard {
    _$openCardAtom.reportRead();
    return super.openCard;
  }

  @override
  set openCard(bool value) {
    _$openCardAtom.reportWrite(value, super.openCard, () {
      super.openCard = value;
    });
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  void setOpenCard() {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.setOpenCard');
    try {
      return super.setOpenCard();
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
openCard: ${openCard}
    ''';
  }
}
