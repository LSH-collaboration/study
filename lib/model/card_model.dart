import 'package:freezed_annotation/freezed_annotation.dart';
part 'card_model.freezed.dart';

@freezed
class CardModel with _$CardModel {
  const factory CardModel({
    required String title,
    required String body,
  }) = _CardModel;
}
