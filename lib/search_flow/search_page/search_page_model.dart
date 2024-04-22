import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/global_components/navbar/navbar_widget.dart';
import '/search_flow/email_not_verified/email_not_verified_widget.dart';
import 'search_page_widget.dart' show SearchPageWidget;
import 'package:flutter/material.dart';

class SearchPageModel extends FlutterFlowModel<SearchPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  List<ProductsRecord> simpleSearchResults1 = [];
  List<ProductsRecord> simpleSearchResults2 = [];
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<ProductsRecord>? recommendedSortFilter;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<ProductsRecord>? recommendedSort;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<ProductsRecord>? priceLowToHighFilter;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<ProductsRecord>? priceLowToHigh;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<ProductsRecord>? priceHighToLowFilter;
  // Stores action output result for [Firestore Query - Query a collection] action in DropDown widget.
  List<ProductsRecord>? priceHighToLow;
  // Model for email_Not_Verified component.
  late EmailNotVerifiedModel emailNotVerifiedModel;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    emailNotVerifiedModel = createModel(context, () => EmailNotVerifiedModel());
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();

    emailNotVerifiedModel.dispose();
    navbarModel.dispose();
  }
}
