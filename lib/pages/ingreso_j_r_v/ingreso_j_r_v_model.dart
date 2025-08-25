import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ingreso_j_r_v_widget.dart' show IngresoJRVWidget;
import 'package:flutter/material.dart';

class IngresoJRVModel extends FlutterFlowModel<IngresoJRVWidget> {
  ///  Local state fields for this page.

  int? sumaActas = 0;

  int? vp1dc = 0;

  int? vp2libre = 0;

  int? vp3pinu = 0;

  int? vp4lib = 0;

  int? vp5nac = 0;

  int? vp6nulos = 0;

  int? vp7blancos = 0;

  /// Variable Estado ID JRV
  int? vsidjrv;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldJRV widget.
  FocusNode? textFieldJRVFocusNode;
  TextEditingController? textFieldJRVTextController;
  String? Function(BuildContext, String?)? textFieldJRVTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldJRVFocusNode?.dispose();
    textFieldJRVTextController?.dispose();
  }
}
