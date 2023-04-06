import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ContactModalModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtName widget.
  TextEditingController? txtNameController;
  String? Function(BuildContext, String?)? txtNameControllerValidator;
  String? _txtNameControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtEmail widget.
  TextEditingController? txtEmailController;
  String? Function(BuildContext, String?)? txtEmailControllerValidator;
  String? _txtEmailControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for txtPhone widget.
  TextEditingController? txtPhoneController;
  String? Function(BuildContext, String?)? txtPhoneControllerValidator;
  // State field(s) for txtSubject widget.
  TextEditingController? txtSubjectController;
  String? Function(BuildContext, String?)? txtSubjectControllerValidator;
  String? _txtSubjectControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtMessage widget.
  TextEditingController? txtMessageController;
  String? Function(BuildContext, String?)? txtMessageControllerValidator;
  String? _txtMessageControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNameControllerValidator = _txtNameControllerValidator;
    txtEmailControllerValidator = _txtEmailControllerValidator;
    txtSubjectControllerValidator = _txtSubjectControllerValidator;
    txtMessageControllerValidator = _txtMessageControllerValidator;
  }

  void dispose() {
    txtNameController?.dispose();
    txtEmailController?.dispose();
    txtPhoneController?.dispose();
    txtSubjectController?.dispose();
    txtMessageController?.dispose();
  }

  /// Additional helper methods are added here.

}
