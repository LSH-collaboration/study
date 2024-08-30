// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dynamic_widget_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DynamicWidgetModel {
  String get label => throw _privateConstructorUsedError;
  Widget get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DynamicWidgetModelCopyWith<DynamicWidgetModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DynamicWidgetModelCopyWith<$Res> {
  factory $DynamicWidgetModelCopyWith(
          DynamicWidgetModel value, $Res Function(DynamicWidgetModel) then) =
      _$DynamicWidgetModelCopyWithImpl<$Res, DynamicWidgetModel>;
  @useResult
  $Res call({String label, Widget body});
}

/// @nodoc
class _$DynamicWidgetModelCopyWithImpl<$Res, $Val extends DynamicWidgetModel>
    implements $DynamicWidgetModelCopyWith<$Res> {
  _$DynamicWidgetModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DynamicWidgetModelImplCopyWith<$Res>
    implements $DynamicWidgetModelCopyWith<$Res> {
  factory _$$DynamicWidgetModelImplCopyWith(_$DynamicWidgetModelImpl value,
          $Res Function(_$DynamicWidgetModelImpl) then) =
      __$$DynamicWidgetModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String label, Widget body});
}

/// @nodoc
class __$$DynamicWidgetModelImplCopyWithImpl<$Res>
    extends _$DynamicWidgetModelCopyWithImpl<$Res, _$DynamicWidgetModelImpl>
    implements _$$DynamicWidgetModelImplCopyWith<$Res> {
  __$$DynamicWidgetModelImplCopyWithImpl(_$DynamicWidgetModelImpl _value,
      $Res Function(_$DynamicWidgetModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? body = null,
  }) {
    return _then(_$DynamicWidgetModelImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$DynamicWidgetModelImpl implements _DynamicWidgetModel {
  const _$DynamicWidgetModelImpl({required this.label, required this.body});

  @override
  final String label;
  @override
  final Widget body;

  @override
  String toString() {
    return 'DynamicWidgetModel(label: $label, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DynamicWidgetModelImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, label, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DynamicWidgetModelImplCopyWith<_$DynamicWidgetModelImpl> get copyWith =>
      __$$DynamicWidgetModelImplCopyWithImpl<_$DynamicWidgetModelImpl>(
          this, _$identity);
}

abstract class _DynamicWidgetModel implements DynamicWidgetModel {
  const factory _DynamicWidgetModel(
      {required final String label,
      required final Widget body}) = _$DynamicWidgetModelImpl;

  @override
  String get label;
  @override
  Widget get body;
  @override
  @JsonKey(ignore: true)
  _$$DynamicWidgetModelImplCopyWith<_$DynamicWidgetModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
