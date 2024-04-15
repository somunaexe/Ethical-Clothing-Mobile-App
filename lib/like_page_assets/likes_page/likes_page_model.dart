import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/like_page_assets/no_likes_view/no_likes_view_widget.dart';
import 'likes_page_widget.dart' show LikesPageWidget;
import 'package:flutter/material.dart';

class LikesPageModel extends FlutterFlowModel<LikesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbar component.
  late NavbarModel navbarModel;
  // Model for no_Likes_View component.
  late NoLikesViewModel noLikesViewModel;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProductsRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
    noLikesViewModel = createModel(context, () => NoLikesViewModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
    noLikesViewModel.dispose();
    textFieldFocusNode?.dispose();
  }
}
