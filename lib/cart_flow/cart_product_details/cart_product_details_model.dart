import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/navbar/navbar_widget.dart';
import 'cart_product_details_widget.dart' show CartProductDetailsWidget;
import 'package:flutter/material.dart';

class CartProductDetailsModel
    extends FlutterFlowModel<CartProductDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navbarModel.dispose();
  }
}
