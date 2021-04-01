import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'repository.dart';

part 'data.g.dart';

@JsonSerializable()
class Data extends Equatable {
  @JsonKey(name: 'total_count')
  final int totalCount;
  @JsonKey(name: 'incomplete_results')
  final bool incompleteResults;
  @JsonKey(name: 'items')
  final List<Repository> items;

  const Data({
    this.totalCount,
    this.incompleteResults,
    this.items,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);

  Data copyWith({
    int totalCount,
    bool incompleteResults,
    List<Repository> items,
  }) {
    return Data(
      totalCount: totalCount ?? this.totalCount,
      incompleteResults: incompleteResults ?? this.incompleteResults,
      items: items ?? this.items,
    );
  }

  @override
  List<Object> get props => [totalCount, incompleteResults, items];
}
