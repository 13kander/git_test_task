import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'owner.g.dart';

@JsonSerializable()
class Owner extends Equatable {
	@JsonKey(name: 'login')
	final String login;
	@JsonKey(name: 'id')
	final int id;
	@JsonKey(name: 'node_id')
	final String nodeId;
	@JsonKey(name: 'avatar_url')
	final String avatarUrl;
	@JsonKey(name: 'gravatar_id')
	final dynamic gravatarId;
	@JsonKey(name: 'url')
	final String url;
	@JsonKey(name: 'html_url')
	final String htmlUrl;
	@JsonKey(name: 'followers_url')
	final String followersUrl;
	@JsonKey(name: 'following_url')
	final String followingUrl;
	@JsonKey(name: 'gists_url')
	final String gistsUrl;
	@JsonKey(name: 'starred_url')
	final String starredUrl;
	@JsonKey(name: 'subscriptions_url')
	final String subscriptionsUrl;
	@JsonKey(name: 'organizations_url')
	final String organizationsUrl;
	@JsonKey(name: 'repos_url')
	final String reposUrl;
	@JsonKey(name: 'events_url')
	final String eventsUrl;
	@JsonKey(name: 'received_events_url')
	final String receivedEventsUrl;
	@JsonKey(name: 'type')
	final String type;
	@JsonKey(name: 'site_admin')
	final bool siteAdmin;

	const Owner({
		this.login,
		this.id,
		this.nodeId,
		this.avatarUrl,
		this.gravatarId,
		this.url,
		this.htmlUrl,
		this.followersUrl,
		this.followingUrl,
		this.gistsUrl,
		this.starredUrl,
		this.subscriptionsUrl,
		this.organizationsUrl,
		this.reposUrl,
		this.eventsUrl,
		this.receivedEventsUrl,
		this.type,
		this.siteAdmin,
	});

	factory Owner.fromJson(Map<String, dynamic> json) => _$OwnerFromJson(json);

	Map<String, dynamic> toJson() => _$OwnerToJson(this);	

	Owner copyWith({
		String login,
		int id,
		String nodeId,
		String avatarUrl,
		dynamic gravatarId,
		String url,
		String htmlUrl,
		String followersUrl,
		String followingUrl,
		String gistsUrl,
		String starredUrl,
		String subscriptionsUrl,
		String organizationsUrl,
		String reposUrl,
		String eventsUrl,
		String receivedEventsUrl,
		String type,
		bool siteAdmin,
	}) {
		return Owner(
			login: login ?? this.login,
			id: id ?? this.id,
			nodeId: nodeId ?? this.nodeId,
			avatarUrl: avatarUrl ?? this.avatarUrl,
			gravatarId: gravatarId ?? this.gravatarId,
			url: url ?? this.url,
			htmlUrl: htmlUrl ?? this.htmlUrl,
			followersUrl: followersUrl ?? this.followersUrl,
			followingUrl: followingUrl ?? this.followingUrl,
			gistsUrl: gistsUrl ?? this.gistsUrl,
			starredUrl: starredUrl ?? this.starredUrl,
			subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
			organizationsUrl: organizationsUrl ?? this.organizationsUrl,
			reposUrl: reposUrl ?? this.reposUrl,
			eventsUrl: eventsUrl ?? this.eventsUrl,
			receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
			type: type ?? this.type,
			siteAdmin: siteAdmin ?? this.siteAdmin,
		);
	}

	@override
	List<Object> get props {
		return [
			login,
			id,
			nodeId,
			avatarUrl,
			gravatarId,
			url,
			htmlUrl,
			followersUrl,
			followingUrl,
			gistsUrl,
			starredUrl,
			subscriptionsUrl,
			organizationsUrl,
			reposUrl,
			eventsUrl,
			receivedEventsUrl,
			type,
			siteAdmin,
		];
	}
}
