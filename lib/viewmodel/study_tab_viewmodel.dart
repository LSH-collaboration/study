import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:study/model/card_model.dart';
import 'package:study/model/study_tab_model.dart';
import 'package:study/view/cardview.dart';
import 'package:study/view/dynamic_widget_list.dart';

part 'study_tab_viewmodel.g.dart';

@riverpod
class CurrentTabIndex extends _$CurrentTabIndex {
  @override
  int build() => 0;

  @override
  set state(int newState) => super.state = newState;
}

@riverpod
StudyTabModel? currentTab(ref) {
  final tabView = ref.watch(studyTabViewmodelProvider);
  final tabIndex = ref.watch(currentTabIndexProvider);
  return tabView?.elementAt(tabIndex);
}

@riverpod
class StudyTabViewmodel extends _$StudyTabViewmodel {
  @override
  List<StudyTabModel>? build() {
    init();
    return state;
  }

  void init() {
    List<StudyTabModel> tabData = [
      const StudyTabModel(
        title: "dynamic widget",
        tab: Tab(
          text: "dynamic widget",
        ),
        body: DynamicWidgetList(),
      ),
      const StudyTabModel(
        title: "card view",
        tab: Tab(
          text: "card view",
        ),
        body: CardView(),
      ),
    ];
    state = tabData;
  }

  void add(StudyTabModel tabData) {
    state = [...?state, tabData];
  }
}
