import 'package:mobx/mobx.dart';

part 'material_Controller.g.dart';

class Material_Controller = Material_ControllerBase with _$Material_Controller;

abstract class Material_ControllerBase with Store {
  @observable
  bool buttonPressed = false;
  @action
  void alterarbuttonPressed() {
    if (buttonPressed) {
      buttonPressed = false;
    } else {
      buttonPressed = true;
    }
  }
}
