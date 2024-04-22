import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_backup_codes_model.dart';
export 'no_backup_codes_model.dart';

class NoBackupCodesWidget extends StatefulWidget {
  const NoBackupCodesWidget({super.key});

  @override
  State<NoBackupCodesWidget> createState() => _NoBackupCodesWidgetState();
}

class _NoBackupCodesWidgetState extends State<NoBackupCodesWidget> {
  late NoBackupCodesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoBackupCodesModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 584.0,
          height: 475.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
          ),
          child: Text(
            'Backup codes aren\'t loading.\nTry turning Two-Factor Authentication off and on again.',
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).bodyLarge.override(
                  fontFamily: 'Readex Pro',
                  letterSpacing: 0.0,
                ),
          ),
        ),
      ],
    );
  }
}
