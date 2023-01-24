import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'videos_record.g.dart';

abstract class VideosRecord
    implements Built<VideosRecord, VideosRecordBuilder> {
  static Serializer<VideosRecord> get serializer => _$videosRecordSerializer;

  @BuiltValueField(wireName: 'published_date')
  DateTime? get publishedDate;

  String? get title;

  @BuiltValueField(wireName: 'youtube_link')
  String? get youtubeLink;

  String? get thumbnail;

  String? get description;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VideosRecordBuilder builder) => builder
    ..title = ''
    ..youtubeLink = ''
    ..thumbnail = ''
    ..description = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('videos');

  static Stream<VideosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VideosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VideosRecord._();
  factory VideosRecord([void Function(VideosRecordBuilder) updates]) =
      _$VideosRecord;

  static VideosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVideosRecordData({
  DateTime? publishedDate,
  String? title,
  String? youtubeLink,
  String? thumbnail,
  String? description,
}) {
  final firestoreData = serializers.toFirestore(
    VideosRecord.serializer,
    VideosRecord(
      (v) => v
        ..publishedDate = publishedDate
        ..title = title
        ..youtubeLink = youtubeLink
        ..thumbnail = thumbnail
        ..description = description,
    ),
  );

  return firestoreData;
}
