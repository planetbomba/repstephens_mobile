import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'alert_list_model.dart';
export 'alert_list_model.dart';

class AlertListWidget extends StatefulWidget {
  const AlertListWidget({Key? key}) : super(key: key);

  @override
  _AlertListWidgetState createState() => _AlertListWidgetState();
}

class _AlertListWidgetState extends State<AlertListWidget> {
  late AlertListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AlertListModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 600.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
              child: InkWell(
                onTap: () async {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.close_outlined,
                  color: FlutterFlowTheme.of(context).grayIcon,
                  size: 30.0,
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 600.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 50.0),
                child: StreamBuilder<List<AlertsRecord>>(
                  stream: queryAlertsRecord(
                    queryBuilder: (alertsRecord) => alertsRecord
                        .where('published', isEqualTo: true)
                        .orderBy('date'),
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
                    List<AlertsRecord> listViewAlertsRecordList =
                        snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewAlertsRecordList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewAlertsRecord =
                            listViewAlertsRecordList[listViewIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              16.0, 12.0, 16.0, 0.0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 1.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 3.0,
                                  color: Color(0x25000000),
                                  offset: Offset(0.0, 2.0),
                                )
                              ],
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        12.0, 12.0, 16.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          listViewAlertsRecord.title!,
                                          style: TextStyle(
                                            color: FlutterFlowTheme.of(context)
                                                .info,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22.0,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 4.0, 0.0, 0.0),
                                          child: Text(
                                            dateTimeFormat('yMMMd',
                                                listViewAlertsRecord.date!),
                                            style: FlutterFlowTheme.of(context)
                                                .bodySmall,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 10.0, 0.0, 0.0),
                                          child: SelectionArea(
                                              child: AutoSizeText(
                                            listViewAlertsRecord.description!,
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium,
                                          )),
                                        ),
                                        if (listViewAlertsRecord.link != null &&
                                            listViewAlertsRecord.link != '')
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await launchURL(
                                                    listViewAlertsRecord.link!);
                                              },
                                              text: 'LEARN MORE',
                                              options: FFButtonOptions(
                                                width: 130.0,
                                                height: 30.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .gray200,
                                                textStyle: TextStyle(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15.0,
                                                ),
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
