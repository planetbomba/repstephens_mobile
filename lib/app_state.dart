import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _phonenumber = prefs.getString('ff_phonenumber') ?? _phonenumber;
    _address = prefs.getString('ff_address') ?? _address;
    _email = prefs.getString('ff_email') ?? _email;
    _website = prefs.getString('ff_website') ?? _website;
    _capitoladdress = prefs.getString('ff_capitoladdress') ?? _capitoladdress;
    _capitolphone = prefs.getString('ff_capitolphone') ?? _capitolphone;
    _surveyurl = prefs.getString('ff_surveyurl') ?? _surveyurl;
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _phonenumber = '773-444-0611';
  String get phonenumber => _phonenumber;
  set phonenumber(String _value) {
    _phonenumber = _value;
    prefs.setString('ff_phonenumber', _value);
  }

  String _address = '5515 N. East River Rd.\nChicago, IL 60656';
  String get address => _address;
  set address(String _value) {
    _address = _value;
    prefs.setString('ff_address', _value);
  }

  String _email = 'info@repbradstephens.com';
  String get email => _email;
  set email(String _value) {
    _email = _value;
    prefs.setString('ff_email', _value);
  }

  String _website = 'https://repbradstephens.com';
  String get website => _website;
  set website(String _value) {
    _website = _value;
    prefs.setString('ff_website', _value);
  }

  String _capitoladdress = '312 Capitol Building\nSpringfield, IL 62706';
  String get capitoladdress => _capitoladdress;
  set capitoladdress(String _value) {
    _capitoladdress = _value;
    prefs.setString('ff_capitoladdress', _value);
  }

  String _capitolphone = '217-782-8182';
  String get capitolphone => _capitolphone;
  set capitolphone(String _value) {
    _capitolphone = _value;
    prefs.setString('ff_capitolphone', _value);
  }

  String _surveyurl = 'https://repstephens.com';
  String get surveyurl => _surveyurl;
  set surveyurl(String _value) {
    _surveyurl = _value;
    prefs.setString('ff_surveyurl', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}
