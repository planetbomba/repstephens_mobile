// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SettingsRecord> _$settingsRecordSerializer =
    new _$SettingsRecordSerializer();

class _$SettingsRecordSerializer
    implements StructuredSerializer<SettingsRecord> {
  @override
  final Iterable<Type> types = const [SettingsRecord, _$SettingsRecord];
  @override
  final String wireName = 'SettingsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SettingsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
    value = object.capitolAddress;
    if (value != null) {
      result
        ..add('capitol_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.capitolPhone;
    if (value != null) {
      result
        ..add('capitol_phone')
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
  SettingsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SettingsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'website':
          result.website = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'capitol_address':
          result.capitolAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'capitol_phone':
          result.capitolPhone = serializers.deserialize(value,
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

class _$SettingsRecord extends SettingsRecord {
  @override
  final String? phoneNumber;
  @override
  final String? address;
  @override
  final String? email;
  @override
  final String? website;
  @override
  final String? capitolAddress;
  @override
  final String? capitolPhone;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SettingsRecord([void Function(SettingsRecordBuilder)? updates]) =>
      (new SettingsRecordBuilder()..update(updates))._build();

  _$SettingsRecord._(
      {this.phoneNumber,
      this.address,
      this.email,
      this.website,
      this.capitolAddress,
      this.capitolPhone,
      this.ffRef})
      : super._();

  @override
  SettingsRecord rebuild(void Function(SettingsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SettingsRecordBuilder toBuilder() =>
      new SettingsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SettingsRecord &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        email == other.email &&
        website == other.website &&
        capitolAddress == other.capitolAddress &&
        capitolPhone == other.capitolPhone &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, phoneNumber.hashCode), address.hashCode),
                        email.hashCode),
                    website.hashCode),
                capitolAddress.hashCode),
            capitolPhone.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SettingsRecord')
          ..add('phoneNumber', phoneNumber)
          ..add('address', address)
          ..add('email', email)
          ..add('website', website)
          ..add('capitolAddress', capitolAddress)
          ..add('capitolPhone', capitolPhone)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SettingsRecordBuilder
    implements Builder<SettingsRecord, SettingsRecordBuilder> {
  _$SettingsRecord? _$v;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _website;
  String? get website => _$this._website;
  set website(String? website) => _$this._website = website;

  String? _capitolAddress;
  String? get capitolAddress => _$this._capitolAddress;
  set capitolAddress(String? capitolAddress) =>
      _$this._capitolAddress = capitolAddress;

  String? _capitolPhone;
  String? get capitolPhone => _$this._capitolPhone;
  set capitolPhone(String? capitolPhone) => _$this._capitolPhone = capitolPhone;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SettingsRecordBuilder() {
    SettingsRecord._initializeBuilder(this);
  }

  SettingsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phoneNumber = $v.phoneNumber;
      _address = $v.address;
      _email = $v.email;
      _website = $v.website;
      _capitolAddress = $v.capitolAddress;
      _capitolPhone = $v.capitolPhone;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SettingsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SettingsRecord;
  }

  @override
  void update(void Function(SettingsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SettingsRecord build() => _build();

  _$SettingsRecord _build() {
    final _$result = _$v ??
        new _$SettingsRecord._(
            phoneNumber: phoneNumber,
            address: address,
            email: email,
            website: website,
            capitolAddress: capitolAddress,
            capitolPhone: capitolPhone,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
