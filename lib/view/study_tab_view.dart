import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:study/model/dynamic_widget_model.dart';
import 'package:study/model/study_tab_model.dart';
import 'package:study/view/cardview.dart';
import 'package:study/view/dynamic_widget_list.dart';
import 'package:study/viewmodel/dynamic_widget_list_viewmodel.dart';
import 'package:study/viewmodel/study_tab_viewmodel.dart';
import 'package:window_manager/window_manager.dart';

class StudyTabView extends ConsumerStatefulWidget {
  const StudyTabView({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _StudyTabViewState();
  }
}

class _StudyTabViewState extends ConsumerState<StudyTabView>
    with SingleTickerProviderStateMixin, WindowListener {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
        length: ref.read(studyTabViewmodelProvider)?.length ?? 0, vsync: this);
    windowManager.addListener(this);
    super.initState();
  }

  @override
  void onWindowResize() {
    // final minWidth =
    //     ref.read(dynamicWidgetListViewmodelProvider.notifier).minWidth + 110;
    // final minHeight =
    //     ref.read(dynamicWidgetListViewmodelProvider.notifier).minHeight;
    // windowManager.getSize().then((size) {
    //   print('Window resized to: $size');
    // });
    super.onWindowResize();
  }

  @override
  Widget build(BuildContext context) {
    final tabViewmodel = ref.watch(studyTabViewmodelProvider);
    final tabIndex = ref.watch(currentTabIndexProvider);
    log(tabIndex.toString());
    return Scaffold(
      appBar: AppBar(
        title: tabViewmodel == null
            ? null
            : TabBar(
                controller: _tabController,
                tabs:
                    tabViewmodel.map((tabPageData) => tabPageData.tab).toList(),
                onTap: (index) {
                  _tabController.index = index;
                  ref.read(currentTabIndexProvider.notifier).state = index;
                },
              ),
      ),
      body: tabViewmodel == null
          ? const Center(
              child: Text("No tabs found"),
            )
          : TabBarView(
              controller: _tabController,
              children:
                  tabViewmodel.map((tabPageData) => tabPageData.body).toList(),
            ),
      floatingActionButton: tabIndex > 0
          ? const CardViewFloatingButton()
          : const DynamicWidgetListFloatingButton(),
    );
  }
}
