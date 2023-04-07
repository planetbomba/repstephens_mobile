import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'about_brad_model.dart';
export 'about_brad_model.dart';

class AboutBradWidget extends StatefulWidget {
  const AboutBradWidget({Key? key}) : super(key: key);

  @override
  _AboutBradWidgetState createState() => _AboutBradWidgetState();
}

class _AboutBradWidgetState extends State<AboutBradWidget> {
  late AboutBradModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AboutBradModel());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<PagesRecord>>(
      stream: queryPagesRecord(
        queryBuilder: (pagesRecord) =>
            pagesRecord.where('slug', isEqualTo: 'about'),
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
          );
        }
        List<PagesRecord> aboutBradPagesRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final aboutBradPagesRecord = aboutBradPagesRecordList.isNotEmpty
            ? aboutBradPagesRecordList.first
            : null;
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primary,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).gray200,
                  size: 30.0,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Image.asset(
                'assets/images/STEPHENSLogo2.png',
                height: 35.0,
                fit: BoxFit.cover,
              ),
              actions: [],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CachedNetworkImage(
                    imageUrl: aboutBradPagesRecord!.image!,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 16.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          aboutBradPagesRecord!.title!,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).secondary,
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 40.0),
                          child: Html(
                            data:
                                '<style> html, body { Font-size:17pt !important; line-height:1.4; margin:0; padding:0; } </style>${aboutBradPagesRecord!.content}',
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
