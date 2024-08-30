import 'package:responsive_framework/responsive_framework.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:study/model/dynamic_widget_model.dart';

part 'dynamic_widget_list_viewmodel.g.dart';

@riverpod
class DynamicWidgetListViewmodel extends _$DynamicWidgetListViewmodel {
  static const itemWidth = 100.0;
  static const itemHeight = 50.0;
  @override
  List<DynamicWidgetModel>? build() {
    return null;
  }

  void add(DynamicWidgetModel widgetData) {
    state = [...?state, widgetData];
  }

  bool get isRowMode {
    if (state == null) return true;
    return (state!.first.body as ResponsiveRowColumnItem).rowColumn;
  }

  double get minWidth {
    if (state == null) return double.infinity;
    return (isRowMode ? state!.length : 1) * itemWidth;
  }

  double get minHeight {
    if (state == null) return double.infinity;
    return (isRowMode ? 1 : state!.length) * itemHeight;
  }

  void remove({int? index, DynamicWidgetModel? widgetData}) {
    if (state == null) {
      throw Exception("state is null");
    }
    if (index != null) {
      state = [
        for (int i = 0; i < state!.length; i++)
          if (i != index) state![i]
      ];
    } else if (widgetData != null) {
      state = state!.where((item) => item != widgetData).toList();
    } else {
      throw Exception("ERROR");
    }
  }
}
