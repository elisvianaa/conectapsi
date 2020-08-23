// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'case_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CaseController on _CaseControllerBase, Store {
  final _$titleAtom = Atom(name: '_CaseControllerBase.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$descriptionAtom = Atom(name: '_CaseControllerBase.description');

  @override
  String get description {
    _$descriptionAtom.reportRead();
    return super.description;
  }

  @override
  set description(String value) {
    _$descriptionAtom.reportWrite(value, super.description, () {
      super.description = value;
    });
  }

  final _$createCaseAsyncAction = AsyncAction('_CaseControllerBase.createCase');

  @override
  Future<dynamic> createCase() {
    return _$createCaseAsyncAction.run(() => super.createCase());
  }

  final _$createPublicCaseAsyncAction =
      AsyncAction('_CaseControllerBase.createPublicCase');

  @override
  Future<dynamic> createPublicCase() {
    return _$createPublicCaseAsyncAction.run(() => super.createPublicCase());
  }

  @override
  String toString() {
    return '''
title: ${title},
description: ${description}
    ''';
  }
}
