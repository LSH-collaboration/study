import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:study/model/dynamic_widget_model.dart';
import 'package:study/theme/custom_theme_extentions.dart';
import 'package:study/theme/user_theme.dart';
import 'package:study/viewmodel/dynamic_widget_list_viewmodel.dart';
import 'package:window_manager/window_manager.dart';

class DynamicWidget extends ConsumerWidget {
  const DynamicWidget({super.key, required this.widgetData});

  final DynamicWidgetModel widgetData;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Text(
      widgetData.label,
    );
    // return ListTile(
    //   leading: Text(widgetData.label),
    //   title: widgetData.body,
    // );
  }
}

class DynamicWidgetListFloatingButton extends ConsumerWidget {
  const DynamicWidgetListFloatingButton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () async {
          final dwvm = ref.read(dynamicWidgetListViewmodelProvider);
          final widgetData = DynamicWidgetModel(
            label: "${dwvm?.length ?? 1}",
            body: ResponsiveRowColumnItem(
              // child: Expanded(
              //   child: Card(
              //     child: Text("Widget"),
              //   ),
              // ),
              child: SizedBox(
                width: 100,
                height: 50,
                child: Card(
                  child: Text(
                    "Widget",
                    style: TextStyle(
                      color: Theme.of(context).appColorTheme.textPrimary,
                    ),
                  ),
                ),
              ),
            ),
          );
          ref.read(dynamicWidgetListViewmodelProvider.notifier).add(widgetData);
          final minWidth =
              ref.read(dynamicWidgetListViewmodelProvider.notifier).minWidth +
                  120;
          final minHeight =
              ref.read(dynamicWidgetListViewmodelProvider.notifier).minHeight;
          final size = Size(minWidth, minHeight);
          final currentSize = await windowManager.getSize();
          // await windowManager.setMinimumSize(size);
          if (size.width > currentSize.width) {
            final newSize = Size(size.width, currentSize.height);
            await windowManager.setSize(newSize);
          }
        });
  }
}

class DynamicWidgetList extends ConsumerWidget {
  const DynamicWidgetList({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final widgetDataList = ref.watch(dynamicWidgetListViewmodelProvider);
    // final mode = ResponsiveBreakpoints.of(context).largerThan(DESKTOP)
    //     ? ResponsiveRowColumnType.ROW
    //     : ResponsiveRowColumnType.COLUMN;
    final minWidth =
        ref.watch(dynamicWidgetListViewmodelProvider.notifier).minWidth + 100;
    final currentSize = MediaQuery.of(context).size;
    final mode = (currentSize.width > minWidth)
        ? ResponsiveRowColumnType.ROW
        : ResponsiveRowColumnType.COLUMN;
    return widgetDataList == null
        ? Container()
        : ResponsiveRowColumn(
            layout: mode,
            rowMainAxisAlignment: MainAxisAlignment.center,
            children: [
              for (final widgetData in widgetDataList)
                widgetData.body as ResponsiveRowColumnItem,
            ],
          );
  }
}
