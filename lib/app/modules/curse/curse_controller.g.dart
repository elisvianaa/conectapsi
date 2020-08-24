// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'curse_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$CurseController on _CurseControllerBase, Store {
  final _$titleAtom = Atom(name: '_CurseControllerBase.title');

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

  final _$descriptionAtom = Atom(name: '_CurseControllerBase.description');

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

  final _$localAtom = Atom(name: '_CurseControllerBase.local');

  @override
  String get local {
    _$localAtom.reportRead();
    return super.local;
  }

  @override
  set local(String value) {
    _$localAtom.reportWrite(value, super.local, () {
      super.local = value;
    });
  }

  final _$errorAtom = Atom(name: '_CurseControllerBase.error');

  @override
  bool get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(bool value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$createCurseAsyncAction =
      AsyncAction('_CurseControllerBase.createCurse');

  @override
  Future<dynamic> createCurse() {
    return _$createCurseAsyncAction.run(() => super.createCurse());
  }

  final _$createPublicCurseAsyncAction =
      AsyncAction('_CurseControllerBase.createPublicCurse');

  @override
  Future<dynamic> createPublicCurse() {
    return _$createPublicCurseAsyncAction.run(() => super.createPublicCurse());
  }

  @override
  String toString() {
    return '''
title: ${title},
description: ${description},
local: ${local},
error: ${error}
    ''';
  }
}
