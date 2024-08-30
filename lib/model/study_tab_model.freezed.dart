// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'study_tab_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$StudyTabModel {
  String get title => throw _privateConstructorUsedError;
  Tab get tab => throw _privateConstructorUsedError;
  Widget get body => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StudyTabModelCopyWith<StudyTabModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StudyTabModelCopyWith<$Res> {
  factory $StudyTabModelCopyWith(
          StudyTabModel value, $Res Function(StudyTabModel) then) =
      _$StudyTabModelCopyWithImpl<$Res, StudyTabModel>;
  @useResult
  $Res call({String title, Tab tab, Widget body});
}

/// @nodoc
class _$StudyTabModelCopyWithImpl<$Res, $Val extends StudyTabModel>
    implements $StudyTabModelCopyWith<$Res> {
  _$StudyTabModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? tab = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as Tab,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Widget,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StudyTabModelImplCopyWith<$Res>
    implements $StudyTabModelCopyWith<$Res> {
  factory _$$StudyTabModelImplCopyWith(
          _$StudyTabModelImpl value, $Res Function(_$StudyTabModelImpl) then) =
      __$$StudyTabModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, Tab tab, Widget body});
}

/// @nodoc
class __$$StudyTabModelImplCopyWithImpl<$Res>
    extends _$StudyTabModelCopyWithImpl<$Res, _$StudyTabModelImpl>
    implements _$$StudyTabModelImplCopyWith<$Res> {
  __$$StudyTabModelImplCopyWithImpl(
      _$StudyTabModelImpl _value, $Res Function(_$StudyTabModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? tab = null,
    Object? body = null,
  }) {
    return _then(_$StudyTabModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      tab: null == tab
          ? _value.tab
          : tab // ignore: cast_nullable_to_non_nullable
              as Tab,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$StudyTabModelImpl implements _StudyTabModel {
  const _$StudyTabModelImpl(
      {required this.title, required this.tab, required this.body});

  @override
  final String title;
  @override
  final Tab tab;
  @override
  final Widget body;

  @override
  String toString() {
    return 'StudyTabModel(title: $title, tab: $tab, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StudyTabModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.tab, tab) || other.tab == tab) &&
            (identical(other.body, body) || other.body == body));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title, tab, body);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StudyTabModelImplCopyWith<_$StudyTabModelImpl> get copyWith =>
      __$$StudyTabModelImplCopyWithImpl<_$StudyTabModelImpl>(this, _$identity);
}

abstract class _StudyTabModel implements StudyTabModel {
  const factory _StudyTabModel(
      {required final String title,
      required final Tab tab,
      required final Widget body}) = _$StudyTabModelImpl;

  @override
  String get title;
  @override
  Tab get tab;
  @override
  Widget get body;
  @override
  @JsonKey(ignore: true)
  _$$StudyTabModelImplCopyWith<_$StudyTabModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
