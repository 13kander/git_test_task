import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'license.g.dart';

@JsonSerializable()
class License extends Equatable {
	@JsonKey(name: 'key')
	final String key;
	@JsonKey(name: 'name')
	final String name;
	@JsonKey(name: 'spdx_id')
	final String spdxId;
	@JsonKey(name: 'url')
	final String url;
	@JsonKey(name: 'node_id')
	final String nodeId;

	const License({
		this.key,
		this.name,
		this.spdxId,
		this.url,
		this.nodeId,
	});

	factory License.fromJson(Map<String, dynamic> json) {
		return _$LicenseFromJson(json);
	}

	Map<String, dynamic> toJson() => _$LicenseToJson(this);	

	License copyWith({
		String key,
		String name,
		String spdxId,
		String url,
		String nodeId,
	}) {
		return License(
			key: key ?? this.key,
			name: name ?? this.name,
			spdxId: spdxId ?? this.spdxId,
			url: url ?? this.url,
			nodeId: nodeId ?? this.nodeId,
		);
	}

	@override
	List<Object> get props => [key, name, spdxId, url, nodeId];
}
