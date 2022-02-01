// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$MainMobX on MainMobXBase, Store {
  final _$newItemAtom = Atom(name: 'MainMobXBase.newItem');

  @override
  String get newItem {
    _$newItemAtom.reportRead();
    return super.newItem;
  }

  @override
  set newItem(String value) {
    _$newItemAtom.reportWrite(value, super.newItem, () {
      super.newItem = value;
    });
  }

  final _$MainMobXBaseActionController = ActionController(name: 'MainMobXBase');

  @override
  void setNewItem(String value) {
    final _$actionInfo = _$MainMobXBaseActionController.startAction(
        name: 'MainMobXBase.setNewItem');
    try {
      return super.setNewItem(value);
    } finally {
      _$MainMobXBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void addItem() {
    final _$actionInfo = _$MainMobXBaseActionController.startAction(
        name: 'MainMobXBase.addItem');
    try {
      return super.addItem();
    } finally {
      _$MainMobXBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
newItem: ${newItem}
    ''';
  }
}
