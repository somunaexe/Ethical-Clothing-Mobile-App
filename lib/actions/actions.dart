import '/global_components/feedback/feedback_widget.dart';
import 'package:flutter/material.dart';

Future feedback(BuildContext context) async {
  await showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    enableDrag: false,
    context: context,
    builder: (context) {
      return Padding(
        padding: MediaQuery.viewInsetsOf(context),
        child: SizedBox(
          height: 520.5,
          child: FeedbackWidget(
            buttonAction: () async {},
          ),
        ),
      );
    },
  );
}
