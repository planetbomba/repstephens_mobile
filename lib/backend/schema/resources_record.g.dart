// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resources_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ResourcesRecord> _$resourcesRecordSerializer =
    new _$ResourcesRecordSerializer();

class _$ResourcesRecordSerializer
    implements StructuredSerializer<ResourcesRecord> {
  @override
  final Iterable<Type> types = const [ResourcesRecord, _$ResourcesRecord];
  @override
  final String wireName = 'ResourcesRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ResourcesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.website;
    if (value != null) {
      result
        ..add('website')
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
  ResourcesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ResourcesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
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

class _$ResourcesRecord extends ResourcesRecord {
  @override
  final String? category;
  @override
  final String? name;
  @override
  final String? phone;
  @override
  final String? website;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ResourcesRecord([void Function(ResourcesRecordBuilder)? updates]) =>
      (new ResourcesRecordBuilder()..update(updates))._build();

  _$ResourcesRecord._(
      {this.category, this.name, this.phone, this.website, this.ffRef})
      : super._();

  @override
  ResourcesRecord rebuild(void Function(ResourcesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ResourcesRecordBuilder toBuilder() =>
      new ResourcesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ResourcesRecord &&
        category == other.category &&
        name == other.name &&
        phone == other.phone &&
        website == other.website &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, website.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ResourcesRecord')
          ..add('category', category)
          ..add('name', name)
          ..add('phone', phone)
          ..add('website', website)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ResourcesRecordBuilder
    implements Builder<ResourcesRecord, ResourcesRecordBuilder> {
  _$ResourcesRecord? _$v;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ResourcesRecordBuilder() {
    ResourcesRecord._initializeBuilder(this);
  }

  ResourcesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _name = $v.name;
      _phone = $v.phone;
      _website = $v.website;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ResourcesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ResourcesRecord;
  }

  @override
  void update(void Function(ResourcesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ResourcesRecord build() => _build();

  _$ResourcesRecord _build() {
    final _$result = _$v ??
        new _$ResourcesRecord._(
            category: category,
            name: name,
            phone: phone,
            website: website,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
