import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:study/model/card_model.dart';

part 'card_viewmodel.g.dart';

@riverpod
class CardViewmodel extends _$CardViewmodel {
  @override
  List<CardModel> build() {
    return [];
  }

  void increamentCard() {
    final index = state.length;
    final card =
        CardModel(title: "Card $index", body: "This is $index th card");
    state = [...state, card];
  }

  void decreamentCard() {
    if (state.isEmpty) return;
    final newState = state..removeLast();
    state = [...newState];
  }
}
