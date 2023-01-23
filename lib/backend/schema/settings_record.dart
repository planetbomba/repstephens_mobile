import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'settings_record.g.dart';

abstract class SettingsRecord
    implements Built<SettingsRecord, SettingsRecordBuilder> {
  static Serializer<SettingsRecord> get serializer =>
      _$settingsRecordSerializer;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get address;

  String? get email;

  String? get website;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SettingsRecordBuilder builder) => builder
    ..phoneNumber = ''
    ..address = ''
    ..email = ''
    ..website = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('settings');

  static Stream<SettingsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SettingsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SettingsRecord._();
  factory SettingsRecord([void Function(SettingsRecordBuilder) updates]) =
      _$SettingsRecord;

  static SettingsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSettingsRecordData({
  String? phoneNumber,
  String? address,
  String? email,
  String? website,
}) {
  final firestoreData = serializers.toFirestore(
    SettingsRecord.serializer,
    SettingsRecord(
      (s) => s
        ..phoneNumber = phoneNumber
        ..address = address
        ..email = email
        ..website = website,
    ),
  );

  return firestoreData;
}
