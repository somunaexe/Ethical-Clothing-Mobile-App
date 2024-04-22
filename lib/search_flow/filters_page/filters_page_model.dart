import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/navbar/navbar_widget.dart';
import 'filters_page_widget.dart' show FiltersPageWidget;
import 'package:flutter/material.dart';

class FiltersPageModel extends FlutterFlowModel<FiltersPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for maxPrice widget.
  FocusNode? maxPriceFocusNode;
  TextEditingController? maxPriceController;
  String? Function(BuildContext, String?)? maxPriceControllerValidator;
  // State field(s) for Slider widget.
  double? sliderValue;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ProductsRecord>? recommendedSortFilter;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ProductsRecord>? priceLowToHighFilter;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ProductsRecord>? priceHighToLowFilter;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    maxPriceFocusNode?.dispose();
    maxPriceController?.dispose();

    navbarModel.dispose();
  }
}
