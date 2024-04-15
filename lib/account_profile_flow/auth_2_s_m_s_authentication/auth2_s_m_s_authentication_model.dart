import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'auth2_s_m_s_authentication_widget.dart'
    show Auth2SMSAuthenticationWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class Auth2SMSAuthenticationModel
    extends FlutterFlowModel<Auth2SMSAuthenticationWidget> {
  ///  Local state fields for this page.

  int reqTime = 60000;

  String? codeParam = '';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeController;
  String? Function(BuildContext, String?)? codeControllerValidator;
  // State field(s) for RequestTimer widget.
  int requestTimerMilliseconds = 0;
  String requestTimerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController requestTimerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // State field(s) for CodeTimer widget.
  int codeTimerMilliseconds = 180000;
  String codeTimerValue = StopWatchTimer.getDisplayTime(
    180000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController codeTimerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    codeFocusNode?.dispose();
    codeController?.dispose();

    requestTimerController.dispose();
    codeTimerController.dispose();
  }
}
