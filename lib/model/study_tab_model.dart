import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'study_tab_model.freezed.dart';

@freezed
class StudyTabModel with _$StudyTabModel {
  const factory StudyTabModel({
    required String title,
    required Tab tab,
    required Widget body,
  }) = _StudyTabModel;
}
