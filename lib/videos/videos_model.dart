import '/flutter_flow/flutter_flow_util.dart';
import 'videos_widget.dart' show VideosWidget;
import 'package:flutter/material.dart';

class VideosModel extends FlutterFlowModel<VideosWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
