// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideosRecord> _$videosRecordSerializer =
    new _$VideosRecordSerializer();

class _$VideosRecordSerializer implements StructuredSerializer<VideosRecord> {
  @override
  final Iterable<Type> types = const [VideosRecord, _$VideosRecord];
  @override
  final String wireName = 'VideosRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VideosRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.publishedDate;
    if (value != null) {
      result
        ..add('published_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.youtubeLink;
    if (value != null) {
      result
        ..add('youtube_link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.thumbnail;
    if (value != null) {
      result
        ..add('thumbnail')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  VideosRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'published_date':
          result.publishedDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'youtube_link':
          result.youtubeLink = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'thumbnail':
          result.thumbnail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$VideosRecord extends VideosRecord {
  @override
  final DateTime? publishedDate;
  @override
  final String? title;
  @override
  final String? youtubeLink;
  @override
  final String? thumbnail;
  @override
  final String? description;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VideosRecord([void Function(VideosRecordBuilder)? updates]) =>
      (new VideosRecordBuilder()..update(updates))._build();

  _$VideosRecord._(
      {this.publishedDate,
      this.title,
      this.youtubeLink,
      this.thumbnail,
      this.description,
      this.ffRef})
      : super._();

  @override
  VideosRecord rebuild(void Function(VideosRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosRecordBuilder toBuilder() => new VideosRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideosRecord &&
        publishedDate == other.publishedDate &&
        title == other.title &&
        youtubeLink == other.youtubeLink &&
        thumbnail == other.thumbnail &&
        description == other.description &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publishedDate.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, youtubeLink.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VideosRecord')
          ..add('publishedDate', publishedDate)
          ..add('title', title)
          ..add('youtubeLink', youtubeLink)
          ..add('thumbnail', thumbnail)
          ..add('description', description)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VideosRecordBuilder
    implements Builder<VideosRecord, VideosRecordBuilder> {
  _$VideosRecord? _$v;

  DateTime? _publishedDate;
  DateTime? get publishedDate => _$this._publishedDate;
  set publishedDate(DateTime? publishedDate) =>
      _$this._publishedDate = publishedDate;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _youtubeLink;
  String? get youtubeLink => _$this._youtubeLink;
  set youtubeLink(String? youtubeLink) => _$this._youtubeLink = youtubeLink;

  String? _thumbnail;
  String? get thumbnail => _$this._thumbnail;
  set thumbnail(String? thumbnail) => _$this._thumbnail = thumbnail;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VideosRecordBuilder() {
    VideosRecord._initializeBuilder(this);
  }

  VideosRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publishedDate = $v.publishedDate;
      _title = $v.title;
      _youtubeLink = $v.youtubeLink;
      _thumbnail = $v.thumbnail;
      _description = $v.description;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideosRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VideosRecord;
  }

  @override
  void update(void Function(VideosRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VideosRecord build() => _build();

  _$VideosRecord _build() {
    final _$result = _$v ??
        new _$VideosRecord._(
            publishedDate: publishedDate,
            title: title,
            youtubeLink: youtubeLink,
            thumbnail: thumbnail,
            description: description,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
