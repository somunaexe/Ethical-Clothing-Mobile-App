import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/navbar/navbar_widget.dart';
import 'cart_checkout_widget.dart' show CartCheckoutWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CartCheckoutModel extends FlutterFlowModel<CartCheckoutWidget> {
  ///  Local state fields for this page.

  bool? showCart = false;

  String zipCode = '';

  AddressStruct? selectedAddress;
  void updateSelectedAddressStruct(Function(AddressStruct) updateFn) =>
      updateFn(selectedAddress ??= AddressStruct());

  bool showNewAddress = false;

  double discount = 0.0;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for Expandable widget.
  late ExpandableController expandableController;

  // State field(s) for Name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for Address widget.
  FocusNode? addressFocusNode;
  TextEditingController? addressController;
  String? Function(BuildContext, String?)? addressControllerValidator;
  // State field(s) for city widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityController;
  String? Function(BuildContext, String?)? cityControllerValidator;
  String? _cityControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter your city';
    }

    return null;
  }

  // State field(s) for state widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateController;
  String? Function(BuildContext, String?)? stateControllerValidator;
  String? _stateControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Choose a state';
    }

    return null;
  }

  // State field(s) for zipCodeMobile widget.
  FocusNode? zipCodeMobileFocusNode;
  TextEditingController? zipCodeMobileController;
  String? Function(BuildContext, String?)? zipCodeMobileControllerValidator;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? newOrder;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<ProductsRecord>? port;
  // Model for navbar component.
  late NavbarModel navbarModel;

  @override
  void initState(BuildContext context) {
    cityControllerValidator = _cityControllerValidator;
    stateControllerValidator = _stateControllerValidator;
    navbarModel = createModel(context, () => NavbarModel());
  }

  @override
  void dispose() {
    expandableController.dispose();
    nameFocusNode?.dispose();
    nameController?.dispose();

    addressFocusNode?.dispose();
    addressController?.dispose();

    cityFocusNode?.dispose();
    cityController?.dispose();

    stateFocusNode?.dispose();
    stateController?.dispose();

    zipCodeMobileFocusNode?.dispose();
    zipCodeMobileController?.dispose();

    navbarModel.dispose();
  }
}
