import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:google_fonts/google_fonts.dart';

class WebContentWidget extends StatefulWidget {
  const WebContentWidget({
    Key? key,
    this.content,
  }) : super(key: key);

  final String? content;

  @override
  _WebContentWidgetState createState() => _WebContentWidgetState();
}

class _WebContentWidgetState extends State<WebContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 1,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Html(
        data:
            '<style> html, body { Font-size:16pt; line-height:1.4; } </style>${widget.content}',
      ),
    );
  }
}
