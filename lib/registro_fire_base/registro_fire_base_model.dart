import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'registro_fire_base_widget.dart' show RegistroFireBaseWidget;
import 'package:flutter/material.dart';

class RegistroFireBaseModel extends FlutterFlowModel<RegistroFireBaseWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for nombre_Create widget.
  FocusNode? nombreCreateFocusNode;
  TextEditingController? nombreCreateTextController;
  String? Function(BuildContext, String?)? nombreCreateTextControllerValidator;
  // State field(s) for dni_Create widget.
  FocusNode? dniCreateFocusNode;
  TextEditingController? dniCreateTextController;
  String? Function(BuildContext, String?)? dniCreateTextControllerValidator;
  // State field(s) for telefono_Create widget.
  FocusNode? telefonoCreateFocusNode;
  TextEditingController? telefonoCreateTextController;
  String? Function(BuildContext, String?)?
      telefonoCreateTextControllerValidator;
  // State field(s) for password_Create widget.
  FocusNode? passwordCreateFocusNode;
  TextEditingController? passwordCreateTextController;
  late bool passwordCreateVisibility;
  String? Function(BuildContext, String?)?
      passwordCreateTextControllerValidator;
  // State field(s) for passwordConfirm widget.
  FocusNode? passwordConfirmFocusNode;
  TextEditingController? passwordConfirmTextController;
  late bool passwordConfirmVisibility;
  String? Function(BuildContext, String?)?
      passwordConfirmTextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    passwordCreateVisibility = false;
    passwordConfirmVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    nombreCreateFocusNode?.dispose();
    nombreCreateTextController?.dispose();

    dniCreateFocusNode?.dispose();
    dniCreateTextController?.dispose();

    telefonoCreateFocusNode?.dispose();
    telefonoCreateTextController?.dispose();

    passwordCreateFocusNode?.dispose();
    passwordCreateTextController?.dispose();

    passwordConfirmFocusNode?.dispose();
    passwordConfirmTextController?.dispose();
  }
}
