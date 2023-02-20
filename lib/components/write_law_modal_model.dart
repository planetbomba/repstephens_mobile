import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:provider/provider.dart';

class WriteLawModalModel extends FlutterFlowModel {
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
  final txtPhoneMask = MaskTextInputFormatter(mask: '(###) ###-##-##');
  String? Function(BuildContext, String?)? txtPhoneControllerValidator;
  // State field(s) for txtAbout widget.
  TextEditingController? txtAboutController;
  String? Function(BuildContext, String?)? txtAboutControllerValidator;
  String? _txtAboutControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for txtLaw widget.
  TextEditingController? txtLawController;
  String? Function(BuildContext, String?)? txtLawControllerValidator;
  String? _txtLawControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Law Make)] action in Button widget.
  ApiCallResponse? apiResultau8;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    txtNameControllerValidator = _txtNameControllerValidator;
    txtEmailControllerValidator = _txtEmailControllerValidator;
    txtAboutControllerValidator = _txtAboutControllerValidator;
    txtLawControllerValidator = _txtLawControllerValidator;
  }

  void dispose() {
    txtNameController?.dispose();
    txtEmailController?.dispose();
    txtPhoneController?.dispose();
    txtAboutController?.dispose();
    txtLawController?.dispose();
  }

  /// Additional helper methods are added here.

}
