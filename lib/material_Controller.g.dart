// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'material_Controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Material_Controller on Material_ControllerBase, Store {
  final _$buttonPressedAtom =
      Atom(name: 'Material_ControllerBase.buttonPressed');

  @override
  bool get buttonPressed {
    _$buttonPressedAtom.reportRead();
    return super.buttonPressed;
  }

  @override
  set buttonPressed(bool value) {
    _$buttonPressedAtom.reportWrite(value, super.buttonPressed, () {
      super.buttonPressed = value;
    });
  }

  final _$Material_ControllerBaseActionController =
      ActionController(name: 'Material_ControllerBase');

  @override
  void alterarbuttonPressed() {
    final _$actionInfo = _$Material_ControllerBaseActionController.startAction(
        name: 'Material_ControllerBase.alterarbuttonPressed');
    try {
      return super.alterarbuttonPressed();
    } finally {
      _$Material_ControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
buttonPressed: ${buttonPressed}
    ''';
  }
}
