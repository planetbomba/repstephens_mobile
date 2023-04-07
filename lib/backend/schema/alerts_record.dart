import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'alerts_record.g.dart';

abstract class AlertsRecord
    implements Built<AlertsRecord, AlertsRecordBuilder> {
  static Serializer<AlertsRecord> get serializer => _$alertsRecordSerializer;

  DateTime? get date;

  String? get title;

  String? get description;

  String? get link;

  bool? get published;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(AlertsRecordBuilder builder) => builder
    ..title = ''
    ..description = ''
    ..link = ''
    ..published = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('alerts');

  static Stream<AlertsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<AlertsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  AlertsRecord._();
  factory AlertsRecord([void Function(AlertsRecordBuilder) updates]) =
      _$AlertsRecord;

  static AlertsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createAlertsRecordData({
  DateTime? date,
  String? title,
  String? description,
  String? link,
  bool? published,
}) {
  final firestoreData = serializers.toFirestore(
    AlertsRecord.serializer,
    AlertsRecord(
      (a) => a
        ..date = date
        ..title = title
        ..description = description
        ..link = link
        ..published = published,
    ),
  );

  return firestoreData;
}
