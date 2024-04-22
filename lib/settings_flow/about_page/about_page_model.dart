import '/flutter_flow/flutter_flow_util.dart';
import '/global_components/navbar/navbar_widget.dart';
import 'about_page_widget.dart' show AboutPageWidget;
import 'package:flutter/material.dart';

class AboutPageModel extends FlutterFlowModel<AboutPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PollutionPageView widget.
  PageController? pollutionPageViewController;

  int get pollutionPageViewCurrentIndex =>
      pollutionPageViewController != null &&
              pollutionPageViewController!.hasClients &&
              pollutionPageViewController!.page != null
          ? pollutionPageViewController!.page!.round()
          : 0;
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
