// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alerts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlertsRecord> _$alertsRecordSerializer =
    new _$AlertsRecordSerializer();

class _$AlertsRecordSerializer implements StructuredSerializer<AlertsRecord> {
  @override
  final Iterable<Type> types = const [AlertsRecord, _$AlertsRecord];
  @override
  final String wireName = 'AlertsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, AlertsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
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
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.link;
    if (value != null) {
      result
        ..add('link')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.published;
    if (value != null) {
      result
        ..add('published')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
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
  AlertsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlertsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'link':
          result.link = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'published':
          result.published = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
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

class _$AlertsRecord extends AlertsRecord {
  @override
  final DateTime? date;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final String? link;
  @override
  final bool? published;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$AlertsRecord([void Function(AlertsRecordBuilder)? updates]) =>
      (new AlertsRecordBuilder()..update(updates))._build();

  _$AlertsRecord._(
      {this.date,
      this.title,
      this.description,
      this.link,
      this.published,
      this.ffRef})
      : super._();

  @override
  AlertsRecord rebuild(void Function(AlertsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlertsRecordBuilder toBuilder() => new AlertsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlertsRecord &&
        date == other.date &&
        title == other.title &&
        description == other.description &&
        link == other.link &&
        published == other.published &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, date.hashCode);
    _$hash = $jc(_$hash, title.hashCode);
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, published.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AlertsRecord')
          ..add('date', date)
          ..add('title', title)
          ..add('description', description)
          ..add('link', link)
          ..add('published', published)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class AlertsRecordBuilder
    implements Builder<AlertsRecord, AlertsRecordBuilder> {
  _$AlertsRecord? _$v;

  DateTime? _date;
  DateTime? get date => _$this._date;
  set date(DateTime? date) => _$this._date = date;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  bool? _published;
  bool? get published => _$this._published;
  set published(bool? published) => _$this._published = published;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  AlertsRecordBuilder() {
    AlertsRecord._initializeBuilder(this);
  }

  AlertsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _title = $v.title;
      _description = $v.description;
      _link = $v.link;
      _published = $v.published;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlertsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AlertsRecord;
  }

  @override
  void update(void Function(AlertsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AlertsRecord build() => _build();

  _$AlertsRecord _build() {
    final _$result = _$v ??
        new _$AlertsRecord._(
            date: date,
            title: title,
            description: description,
            link: link,
            published: published,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
