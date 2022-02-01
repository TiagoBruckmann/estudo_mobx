// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'incremet_mobx.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$IncrementMobX on IncrementMobXBase, Store {
  Computed<String>? _$emailPasswordComputed;

  @override
  String get emailPassword =>
      (_$emailPasswordComputed ??= Computed<String>(() => super.emailPassword,
              name: 'IncrementMobXBase.emailPassword'))
          .value;

  final _$emailAtom = Atom(name: 'IncrementMobXBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: 'IncrementMobXBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$userLoginAtom = Atom(name: 'IncrementMobXBase.userLogin');

  @override
  bool get userLogin {
    _$userLoginAtom.reportRead();
    return super.userLogin;
  }

  @override
  set userLogin(bool value) {
    _$userLoginAtom.reportWrite(value, super.userLogin, () {
      super.userLogin = value;
    });
  }

  final _$loadingAtom = Atom(name: 'IncrementMobXBase.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('IncrementMobXBase.login');

  @override
  Future<void> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$IncrementMobXBaseActionController =
      ActionController(name: 'IncrementMobXBase');

  @override
  void setEmail(dynamic value) {
    final _$actionInfo = _$IncrementMobXBaseActionController.startAction(
        name: 'IncrementMobXBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$IncrementMobXBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(dynamic value) {
    final _$actionInfo = _$IncrementMobXBaseActionController.startAction(
        name: 'IncrementMobXBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$IncrementMobXBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password},
userLogin: ${userLogin},
loading: ${loading},
emailPassword: ${emailPassword}
    ''';
  }
}
