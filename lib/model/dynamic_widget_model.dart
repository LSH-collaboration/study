import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dynamic_widget_model.freezed.dart';

@freezed
class DynamicWidgetModel with _$DynamicWidgetModel {
  const factory DynamicWidgetModel({
    required String label,
    required Widget body,
  }) = _DynamicWidgetModel;
}
