import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_deletion_prompt_widget.dart' show Auth2DeletionPromptWidget;
import 'package:flutter/material.dart';

class Auth2DeletionPromptModel
    extends FlutterFlowModel<Auth2DeletionPromptWidget> {
  ///  Local state fields for this component.

  String? email;

  ///  State fields for stateful widgets in this component.

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
  }

  @override
  void dispose() {
    passwordFocusNode?.dispose();
    passwordController?.dispose();
  }
}
