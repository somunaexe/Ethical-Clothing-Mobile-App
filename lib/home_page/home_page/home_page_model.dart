import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/navbar/navbar_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool showWomenClothing = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<ProductsRecord>? newInWomenClothesCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<ProductsRecord>? topWomenClothes;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<ProductsRecord>? bottomWomenClothees;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<ProductsRecord>? shoeWomenClothes;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<ProductsRecord>? jewellryWomenClothes;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<ProductsRecord>? newMenClothing;
  // Stores action output result for [Firestore Query - Query a collection] action in Container widget.
  List<ProductsRecord>? topMenClothing;
  // Stores action output result for [Firestore Query - Query a collection] action in menBottomsContainer widget.
  List<ProductsRecord>? bottomMenClothing;
  // Stores action output result for [Firestore Query - Query a collection] action in menShoeContainer widget.
  List<ProductsRecord>? shoeMenClohting;
  // Stores action output result for [Firestore Query - Query a collection] action in menjewelContainer widget.
  List<ProductsRecord>? jewellryMenClothes;
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
