import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/navbar/navbar_widget.dart';
import 'auth2_edit_profile_widget.dart' show Auth2EditProfileWidget;
import 'package:flutter/material.dart';

class Auth2EditProfileModel extends FlutterFlowModel<Auth2EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for phoneNumber widget.
  FocusNode? phoneNumberFocusNode;
  TextEditingController? phoneNumberController;
  String? Function(BuildContext, String?)? phoneNumberControllerValidator;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    nameFocusNode?.dispose();
    nameController?.dispose();

    phoneNumberFocusNode?.dispose();
    phoneNumberController?.dispose();

    navbarModel.dispose();
  }
}
