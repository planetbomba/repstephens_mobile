import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_youtube_player.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SingleVideoWidget extends StatefulWidget {
  const SingleVideoWidget({
    Key? key,
    this.docRef,
  }) : super(key: key);

  final DocumentReference? docRef;

  @override
  _SingleVideoWidgetState createState() => _SingleVideoWidgetState();
}

class _SingleVideoWidgetState extends State<SingleVideoWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return StreamBuilder<VideosRecord>(
      stream: VideosRecord.getDocument(widget.docRef!),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(
                color: FlutterFlowTheme.of(context).alternate,
              ),
            ),
          );
        }
        final singleVideoVideosRecord = snapshot.data!;
        return YoutubeFullScreenWrapper(
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
            appBar: AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryColor,
              automaticallyImplyLeading: false,
              leading: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30,
                borderWidth: 1,
                buttonSize: 60,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).gray200,
                  size: 30,
                ),
                onPressed: () async {
                  context.pop();
                },
              ),
              title: Image.asset(
                'assets/images/logoHorizontal.png',
                height: 40,
                fit: BoxFit.cover,
              ),
              actions: [],
              centerTitle: true,
              elevation: 2,
            ),
            body: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      FlutterFlowYoutubePlayer(
                        url: singleVideoVideosRecord.youtubeLink!,
                        autoPlay: false,
                        looping: false,
                        mute: false,
                        showControls: true,
                        showFullScreen: true,
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            singleVideoVideosRecord.title!,
                            style: FlutterFlowTheme.of(context).title2.override(
                                  fontFamily: 'Poppins',
                                  color: Color(0xFF003366),
                                  fontSize: 20,
                                  lineHeight: 1.2,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 4, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Text(
                            dateTimeFormat('relative',
                                singleVideoVideosRecord.publishedDate!),
                            style:
                                FlutterFlowTheme.of(context).subtitle1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryColor,
                                      fontSize: 16,
                                      fontStyle: FontStyle.italic,
                                    ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(20, 12, 20, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                            child: Text(
                              singleVideoVideosRecord.description!,
                              style: FlutterFlowTheme.of(context)
                                  .bodyText2
                                  .override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryColor,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    lineHeight: 1.6,
                                  ),
                            ),
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
