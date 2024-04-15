import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/navbar/navbar_widget.dart';
import 'cart_details_widget.dart' show CartDetailsWidget;
import 'package:flutter/material.dart';

class CartDetailsModel extends FlutterFlowModel<CartDetailsWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for Row widget.
  ScrollController? rowController;
  // State field(s) for ListView widget.
  ScrollController? listViewController;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    columnController = ScrollController();
    rowController = ScrollController();
    listViewController = ScrollController();
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    columnController?.dispose();
    rowController?.dispose();
    listViewController?.dispose();
    navbarModel.dispose();
  }
}
