import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'resources_record.g.dart';

abstract class ResourcesRecord
    implements Built<ResourcesRecord, ResourcesRecordBuilder> {
  static Serializer<ResourcesRecord> get serializer =>
      _$resourcesRecordSerializer;

  String? get category;

  String? get name;

  String? get phone;

  String? get website;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ResourcesRecordBuilder builder) => builder
    ..category = ''
    ..name = ''
    ..phone = ''
    ..website = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('resources');

  static Stream<ResourcesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ResourcesRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ResourcesRecord._();
  factory ResourcesRecord([void Function(ResourcesRecordBuilder) updates]) =
      _$ResourcesRecord;

  static ResourcesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createResourcesRecordData({
  String? category,
  String? name,
  String? phone,
  String? website,
}) {
  final firestoreData = serializers.toFirestore(
    ResourcesRecord.serializer,
    ResourcesRecord(
      (r) => r
        ..category = category
        ..name = name
        ..phone = phone
        ..website = website,
    ),
  );

  return firestoreData;
}
