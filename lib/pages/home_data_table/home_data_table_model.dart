import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'home_data_table_widget.dart' show HomeDataTableWidget;
import 'package:flutter/material.dart';

class HomeDataTableModel extends FlutterFlowModel<HomeDataTableWidget> {
  ///  Local state fields for this page.

  int? sumaActas = 0;

  int? vp1dc = 0;

  int? vp2libre = 0;

  int? vp3pinu = 0;

  int? vp4lib = 0;

  int? vp5nac = 0;

  int? vp6nulos = 0;

  int? vp7blancos = 0;

  ///  State fields for stateful widgets in this page.

  // State field(s) for vp1_dc widget.
  FocusNode? vp1DcFocusNode;
  TextEditingController? vp1DcTextController;
  String? Function(BuildContext, String?)? vp1DcTextControllerValidator;
  // State field(s) for vp2_libre widget.
  FocusNode? vp2LibreFocusNode;
  TextEditingController? vp2LibreTextController;
  String? Function(BuildContext, String?)? vp2LibreTextControllerValidator;
  // State field(s) for vp3_pinu widget.
  FocusNode? vp3PinuFocusNode;
  TextEditingController? vp3PinuTextController;
  String? Function(BuildContext, String?)? vp3PinuTextControllerValidator;
  // State field(s) for vp4_lib widget.
  FocusNode? vp4LibFocusNode;
  TextEditingController? vp4LibTextController;
  String? Function(BuildContext, String?)? vp4LibTextControllerValidator;
  // State field(s) for vp5_nac widget.
  FocusNode? vp5NacFocusNode;
  TextEditingController? vp5NacTextController;
  String? Function(BuildContext, String?)? vp5NacTextControllerValidator;
  // State field(s) for vp7_blancos widget.
  FocusNode? vp7BlancosFocusNode;
  TextEditingController? vp7BlancosTextController;
  String? Function(BuildContext, String?)? vp7BlancosTextControllerValidator;
  // State field(s) for vp6_nulos widget.
  FocusNode? vp6NulosFocusNode;
  TextEditingController? vp6NulosTextController;
  String? Function(BuildContext, String?)? vp6NulosTextControllerValidator;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // Stores action output result for [Backend Call - API (Llamada a AWS)] action in EnviarSuma widget.
  ApiCallResponse? apiResultznt;
  bool isDataUploading_uploadDataO0t = false;
  FFUploadedFile uploadedLocalFile_uploadDataO0t =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataO0t = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    vp1DcFocusNode?.dispose();
    vp1DcTextController?.dispose();

    vp2LibreFocusNode?.dispose();
    vp2LibreTextController?.dispose();

    vp3PinuFocusNode?.dispose();
    vp3PinuTextController?.dispose();

    vp4LibFocusNode?.dispose();
    vp4LibTextController?.dispose();

    vp5NacFocusNode?.dispose();
    vp5NacTextController?.dispose();

    vp7BlancosFocusNode?.dispose();
    vp7BlancosTextController?.dispose();

    vp6NulosFocusNode?.dispose();
    vp6NulosTextController?.dispose();
  }
}
