// import 'package:collection/collection.dart';
// import 'package:flutter/material.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:mcq_std/common_widget/ur_21_main_card.dart';
// import 'package:mcq_std/common_widget/ur_3_or_5_main_card.dart';
// import 'package:mcq_std/common_widget/ur_main_card.dart';
// import 'package:mcq_std/configs/app_execute_config_singleton.dart';
// import 'package:mcq_std/services/device_manager/device_manager_service_provider.dart';
// import 'package:mcq_std/shared/theme/theme_extensions/card_decoration.dart';
// import 'package:mcq_std/shared/utils/theme_util.dart';
// import 'package:mcq_std/views_renew/task_main/device_task/deivce_grid_list_view_model_provider.dart';
// import 'package:reorderable_grid/reorderable_grid.dart';

// class GridDeviceScreen extends HookConsumerWidget {
//   const GridDeviceScreen({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     int deviceCount = ref.watch(
//         deviceManagerServiceProvider.select((value) => value.deviceCount));
//     final slotMaxCnt = AppExecuteConfigSingleton().config.slotMaxCnt;

//     void _onReorder(int oldIndex, int newIndex) {
//       ref
//           .read(deviceManagerServiceProvider.notifier)
//           .deviceIndexChange(oldIndex: oldIndex, newIndex: newIndex);
//     }

//     /// 3/5포트 메인 카드 리스트
//     List<UrMainCard> getDeviceList() {
//       return List<int>.generate(3, (index) => index).mapIndexed((idx, item) {
//         return UrMainCard(
//           key: ValueKey(item),
//           index: idx,
//           taskDeviceItemType: TaskDeviceItemModelType.taskBaseDevice,
//           mainCardType: MainCardType.card3or5,
//         );
//       }).toList();
//     }

//     /// 21포트 메인 카드 리스트
//     List<UrMainCard> get21DeviceList() {
//       return List<int>.generate(deviceCount, (index) => index)
//           .mapIndexed((idx, item) {
//         return UrMainCard(
//           key: ValueKey(item),
//           index: idx,
//           taskDeviceItemType: TaskDeviceItemModelType.taskBaseDevice,
//           mainCardType: MainCardType.card21,
//         );
//       }).toList();
//     }

//     Widget slot3() {
//       return Container(
//         color: context.appColors.bg00,
//         child: Padding(
//           padding:
//               const EdgeInsets.symmetric(horizontal: 284.0, vertical: 67.0),
//           // padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
//           child: ReorderableGridView.extent(
//             crossAxisSpacing: 120.0,
//             mainAxisSpacing: 24.0,
//             // crossAxisCount: 3,
//             maxCrossAxisExtent: 380,
//             onReorder: _onReorder,
//             childAspectRatio: 348 / 660,
//             children: getDeviceList(),
//           ),
//         ),
//       );
//     }

//     Widget slotTill5(int slotMaxCnt) {
//       const crossAxisSpacing = (slotMaxCnt == 5) ? 28.0 : 120.0;
//       return Container(
//         color: context.appColors.bg00,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 34.0, vertical: 67.0),
//           // padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0),
//           child: ReorderableGridView.extent(
//             crossAxisSpacing: crossAxisSpacing,
//             mainAxisSpacing: 24,
//             maxCrossAxisExtent: 380,
//             // mainAxisSpacing: 0.0,
//             // crossAxisCount: 5,
//             onReorder: _onReorder,
//             childAspectRatio: 348 / 660,
//             children: getDeviceList(),
//           ),
//         ),
//       );
//     }

//     Widget slot21() {
//       return Container(
//         color: context.appColors.bg00,
//         child: Padding(
//           padding: const EdgeInsets.all(34.0),
//           child: ReorderableGridView.extent(
//             crossAxisSpacing: 20.0,
//             mainAxisSpacing: 24.0,
//             childAspectRatio: 244 / 254,
//             // crossAxisCount: 7,
//             onReorder: _onReorder,
//             maxCrossAxisExtent: 270,
//             children: get21DeviceList(),
//           ),
//         ),
//       );
//     }

//     Widget changeSlotScreen(slotMaxCnt) {
//       switch (slotMaxCnt) {
//         case 3:
//           return slotTill5(slotMaxCnt);
//         case 5:
//           return slot5();
//         case 21:
//           return slot21();
//         default:
//           return slot21();
//       }
//     }

//     return changeSlotScreen(slotMaxCnt);
//   }
// }

import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:study/theme/custom_theme_extentions.dart';
import 'package:study/viewmodel/card_viewmodel.dart';

class MyCard extends ConsumerWidget {
  const MyCard.large({
    super.key,
    required this.index,
    this.width = 100,
    this.height = 300,
  });

  const MyCard.small({
    super.key,
    required this.index,
    this.width = 100,
    this.height = 100,
  });

  final int index;
  final double width;
  final double height;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      width: width,
      height: height,
      child: Card(
        child: Text(
          "Card $index",
          style: TextStyle(
            color: Theme.of(context).userColorTheme.textPrimary,
          ),
        ),
      ),
    );
  }
}

class CardViewFloatingButton extends ConsumerWidget {
  const CardViewFloatingButton({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        FloatingActionButton(
          onPressed: () =>
              ref.read(cardViewmodelProvider.notifier).increamentCard(),
          child: const Icon(Icons.add),
        ),
        const SizedBox(height: 8),
        FloatingActionButton(
          onPressed: () =>
              ref.read(cardViewmodelProvider.notifier).decreamentCard(),
          child: const Icon(Icons.remove),
        ),
      ],
    );
  }
}

enum MyEnum {
  port3(3),
  port5(5),
  port21(21);

  final int value;

  // 생성자
  const MyEnum(this.value);

  static MyEnum byValue(int value) {
    switch (value) {
      case 3:
        return MyEnum.port3;
      case 5:
        return MyEnum.port5;
      case 21:
        return MyEnum.port21;
      default:
        return MyEnum.port3;
    }
  }

  bool isSmall() {
    return value == 21;
  }
}

class CardView extends ConsumerWidget {
  const CardView({super.key});
  final maxHorizontalCard = 7;

  List<MyCard> _deviceList({required MyEnum portMode}) {
    MyCard Function({
      Key? key,
      required int index,
      double width,
      double height,
    }) constructor = MyCard.large;

    if (portMode.isSmall()) {
      constructor = MyCard.small;
    }

    return List.generate(
      portMode.value,
      (index) => constructor(index: index),
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int numCards = ref.watch(cardViewmodelProvider).length;
    final cards = _deviceList(portMode: MyEnum.byValue(numCards));
    final firstCard = cards.isNotEmpty ? cards.first : null;
    late double gridPadding;
    if (firstCard != null) {
      final numHorizontalCards = min<int>(numCards, maxHorizontalCard);
      gridPadding = (MediaQuery.of(context).size.width -
              firstCard.width * numHorizontalCards) /
          (numHorizontalCards + 1);
    }
    return numCards == 0
        ? const Center(
            child: Text("No card found"),
          )
        : GridView.extent(
            padding: EdgeInsets.symmetric(horizontal: gridPadding),
            shrinkWrap: true,
            crossAxisSpacing: gridPadding,
            mainAxisSpacing: 10,
            childAspectRatio: (firstCard!.width / firstCard.height),
            maxCrossAxisExtent: firstCard.width,
            children: cards,
          );
  }
}
