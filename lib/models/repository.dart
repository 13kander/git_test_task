import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

import 'license.dart';
import 'owner.dart';

part 'repository.g.dart';

@JsonSerializable()
class Repository extends Equatable {
  @JsonKey(name: 'id')
  final int id;
  @JsonKey(name: 'node_id')
  final String nodeId;
  @JsonKey(name: 'name')
  final String name;
  @JsonKey(name: 'full_name')
  final String fullName;
  @JsonKey(name: 'private')
  final bool private;
  @JsonKey(name: 'owner')
  final Owner owner;
  @JsonKey(name: 'html_url')
  final String htmlUrl;
  @JsonKey(name: 'description')
  final String description;
  @JsonKey(name: 'fork')
  final bool fork;
  @JsonKey(name: 'url')
  final String url;
  @JsonKey(name: 'forks_url')
  final String forksUrl;
  @JsonKey(name: 'keys_url')
  final String keysUrl;
  @JsonKey(name: 'collaborators_url')
  final String collaboratorsUrl;
  @JsonKey(name: 'teams_url')
  final String teamsUrl;
  @JsonKey(name: 'hooks_url')
  final String hooksUrl;
  @JsonKey(name: 'issue_events_url')
  final String issueEventsUrl;
  @JsonKey(name: 'events_url')
  final String eventsUrl;
  @JsonKey(name: 'assignees_url')
  final String assigneesUrl;
  @JsonKey(name: 'branches_url')
  final String branchesUrl;
  @JsonKey(name: 'tags_url')
  final String tagsUrl;
  @JsonKey(name: 'blobs_url')
  final String blobsUrl;
  @JsonKey(name: 'git_tags_url')
  final String gitTagsUrl;
  @JsonKey(name: 'git_refs_url')
  final String gitRefsUrl;
  @JsonKey(name: 'trees_url')
  final String treesUrl;
  @JsonKey(name: 'statuses_url')
  final String statusesUrl;
  @JsonKey(name: 'languages_url')
  final String languagesUrl;
  @JsonKey(name: 'stargazers_url')
  final String stargazersUrl;
  @JsonKey(name: 'contributors_url')
  final String contributorsUrl;
  @JsonKey(name: 'subscribers_url')
  final String subscribersUrl;
  @JsonKey(name: 'subscription_url')
  final String subscriptionUrl;
  @JsonKey(name: 'commits_url')
  final String commitsUrl;
  @JsonKey(name: 'git_commits_url')
  final String gitCommitsUrl;
  @JsonKey(name: 'comments_url')
  final String commentsUrl;
  @JsonKey(name: 'issue_comment_url')
  final String issueCommentUrl;
  @JsonKey(name: 'contents_url')
  final String contentsUrl;
  @JsonKey(name: 'compare_url')
  final String compareUrl;
  @JsonKey(name: 'merges_url')
  final String mergesUrl;
  @JsonKey(name: 'archive_url')
  final String archiveUrl;
  @JsonKey(name: 'downloads_url')
  final String downloadsUrl;
  @JsonKey(name: 'issues_url')
  final String issuesUrl;
  @JsonKey(name: 'pulls_url')
  final String pullsUrl;
  @JsonKey(name: 'milestones_url')
  final String milestonesUrl;
  @JsonKey(name: 'notifications_url')
  final String notificationsUrl;
  @JsonKey(name: 'labels_url')
  final String labelsUrl;
  @JsonKey(name: 'releases_url')
  final String releasesUrl;
  @JsonKey(name: 'deployments_url')
  final String deploymentsUrl;
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @JsonKey(name: 'pushed_at')
  final DateTime pushedAt;
  @JsonKey(name: 'git_url')
  final String gitUrl;
  @JsonKey(name: 'ssh_url')
  final String sshUrl;
  @JsonKey(name: 'clone_url')
  final String cloneUrl;
  @JsonKey(name: 'svn_url')
  final String svnUrl;
  @JsonKey(name: 'homepage')
  final dynamic homepage;
  @JsonKey(name: 'size')
  final int size;
  @JsonKey(name: 'stargazers_count')
  final int stargazersCount;
  @JsonKey(name: 'watchers_count')
  final int watchersCount;
  @JsonKey(name: 'language')
  final String language;
  @JsonKey(name: 'has_issues')
  final bool hasIssues;
  @JsonKey(name: 'has_projects')
  final bool hasProjects;
  @JsonKey(name: 'has_downloads')
  final bool hasDownloads;
  @JsonKey(name: 'has_wiki')
  final bool hasWiki;
  @JsonKey(name: 'has_pages')
  final bool hasPages;
  @JsonKey(name: 'forks_count')
  final int forksCount;
  @JsonKey(name: 'mirror_url')
  final dynamic mirrorUrl;
  @JsonKey(name: 'archived')
  final bool archived;
  @JsonKey(name: 'disabled')
  final bool disabled;
  @JsonKey(name: 'open_issues_count')
  final int openIssuesCount;
  @JsonKey(name: 'license')
  final License license;
  @JsonKey(name: 'forks')
  final int forks;
  @JsonKey(name: 'open_issues')
  final int openIssues;
  @JsonKey(name: 'watchers')
  final int watchers;
  @JsonKey(name: 'default_branch')
  final String defaultBranch;
  @JsonKey(name: 'score')
  final double score;

  const Repository({
    this.id,
    this.nodeId,
    this.name,
    this.fullName,
    this.private,
    this.owner,
    this.htmlUrl,
    this.description,
    this.fork,
    this.url,
    this.forksUrl,
    this.keysUrl,
    this.collaboratorsUrl,
    this.teamsUrl,
    this.hooksUrl,
    this.issueEventsUrl,
    this.eventsUrl,
    this.assigneesUrl,
    this.branchesUrl,
    this.tagsUrl,
    this.blobsUrl,
    this.gitTagsUrl,
    this.gitRefsUrl,
    this.treesUrl,
    this.statusesUrl,
    this.languagesUrl,
    this.stargazersUrl,
    this.contributorsUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.commitsUrl,
    this.gitCommitsUrl,
    this.commentsUrl,
    this.issueCommentUrl,
    this.contentsUrl,
    this.compareUrl,
    this.mergesUrl,
    this.archiveUrl,
    this.downloadsUrl,
    this.issuesUrl,
    this.pullsUrl,
    this.milestonesUrl,
    this.notificationsUrl,
    this.labelsUrl,
    this.releasesUrl,
    this.deploymentsUrl,
    this.createdAt,
    this.updatedAt,
    this.pushedAt,
    this.gitUrl,
    this.sshUrl,
    this.cloneUrl,
    this.svnUrl,
    this.homepage,
    this.size,
    this.stargazersCount,
    this.watchersCount,
    this.language,
    this.hasIssues,
    this.hasProjects,
    this.hasDownloads,
    this.hasWiki,
    this.hasPages,
    this.forksCount,
    this.mirrorUrl,
    this.archived,
    this.disabled,
    this.openIssuesCount,
    this.license,
    this.forks,
    this.openIssues,
    this.watchers,
    this.defaultBranch,
    this.score,
  });

  factory Repository.fromJson(Map<String, dynamic> json) =>
      _$RepositoryFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryToJson(this);

  Repository copyWith({
    int id,
    String nodeId,
    String name,
    String fullName,
    bool private,
    Owner owner,
    String htmlUrl,
    String description,
    bool fork,
    String url,
    String forksUrl,
    String keysUrl,
    String collaboratorsUrl,
    String teamsUrl,
    String hooksUrl,
    String issueEventsUrl,
    String eventsUrl,
    String assigneesUrl,
    String branchesUrl,
    String tagsUrl,
    String blobsUrl,
    String gitTagsUrl,
    String gitRefsUrl,
    String treesUrl,
    String statusesUrl,
    String languagesUrl,
    String stargazersUrl,
    String contributorsUrl,
    String subscribersUrl,
    String subscriptionUrl,
    String commitsUrl,
    String gitCommitsUrl,
    String commentsUrl,
    String issueCommentUrl,
    String contentsUrl,
    String compareUrl,
    String mergesUrl,
    String archiveUrl,
    String downloadsUrl,
    String issuesUrl,
    String pullsUrl,
    String milestonesUrl,
    String notificationsUrl,
    String labelsUrl,
    String releasesUrl,
    String deploymentsUrl,
    DateTime createdAt,
    DateTime updatedAt,
    DateTime pushedAt,
    String gitUrl,
    String sshUrl,
    String cloneUrl,
    String svnUrl,
    dynamic homepage,
    int size,
    int stargazersCount,
    int watchersCount,
    String language,
    bool hasIssues,
    bool hasProjects,
    bool hasDownloads,
    bool hasWiki,
    bool hasPages,
    int forksCount,
    dynamic mirrorUrl,
    bool archived,
    bool disabled,
    int openIssuesCount,
    License license,
    int forks,
    int openIssues,
    int watchers,
    String defaultBranch,
    double score,
  }) {
    return Repository(
      id: id ?? this.id,
      nodeId: nodeId ?? this.nodeId,
      name: name ?? this.name,
      fullName: fullName ?? this.fullName,
      private: private ?? this.private,
      owner: owner ?? this.owner,
      htmlUrl: htmlUrl ?? this.htmlUrl,
      description: description ?? this.description,
      fork: fork ?? this.fork,
      url: url ?? this.url,
      forksUrl: forksUrl ?? this.forksUrl,
      keysUrl: keysUrl ?? this.keysUrl,
      collaboratorsUrl: collaboratorsUrl ?? this.collaboratorsUrl,
      teamsUrl: teamsUrl ?? this.teamsUrl,
      hooksUrl: hooksUrl ?? this.hooksUrl,
      issueEventsUrl: issueEventsUrl ?? this.issueEventsUrl,
      eventsUrl: eventsUrl ?? this.eventsUrl,
      assigneesUrl: assigneesUrl ?? this.assigneesUrl,
      branchesUrl: branchesUrl ?? this.branchesUrl,
      tagsUrl: tagsUrl ?? this.tagsUrl,
      blobsUrl: blobsUrl ?? this.blobsUrl,
      gitTagsUrl: gitTagsUrl ?? this.gitTagsUrl,
      gitRefsUrl: gitRefsUrl ?? this.gitRefsUrl,
      treesUrl: treesUrl ?? this.treesUrl,
      statusesUrl: statusesUrl ?? this.statusesUrl,
      languagesUrl: languagesUrl ?? this.languagesUrl,
      stargazersUrl: stargazersUrl ?? this.stargazersUrl,
      contributorsUrl: contributorsUrl ?? this.contributorsUrl,
      subscribersUrl: subscribersUrl ?? this.subscribersUrl,
      subscriptionUrl: subscriptionUrl ?? this.subscriptionUrl,
      commitsUrl: commitsUrl ?? this.commitsUrl,
      gitCommitsUrl: gitCommitsUrl ?? this.gitCommitsUrl,
      commentsUrl: commentsUrl ?? this.commentsUrl,
      issueCommentUrl: issueCommentUrl ?? this.issueCommentUrl,
      contentsUrl: contentsUrl ?? this.contentsUrl,
      compareUrl: compareUrl ?? this.compareUrl,
      mergesUrl: mergesUrl ?? this.mergesUrl,
      archiveUrl: archiveUrl ?? this.archiveUrl,
      downloadsUrl: downloadsUrl ?? this.downloadsUrl,
      issuesUrl: issuesUrl ?? this.issuesUrl,
      pullsUrl: pullsUrl ?? this.pullsUrl,
      milestonesUrl: milestonesUrl ?? this.milestonesUrl,
      notificationsUrl: notificationsUrl ?? this.notificationsUrl,
      labelsUrl: labelsUrl ?? this.labelsUrl,
      releasesUrl: releasesUrl ?? this.releasesUrl,
      deploymentsUrl: deploymentsUrl ?? this.deploymentsUrl,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      pushedAt: pushedAt ?? this.pushedAt,
      gitUrl: gitUrl ?? this.gitUrl,
      sshUrl: sshUrl ?? this.sshUrl,
      cloneUrl: cloneUrl ?? this.cloneUrl,
      svnUrl: svnUrl ?? this.svnUrl,
      homepage: homepage ?? this.homepage,
      size: size ?? this.size,
      stargazersCount: stargazersCount ?? this.stargazersCount,
      watchersCount: watchersCount ?? this.watchersCount,
      language: language ?? this.language,
      hasIssues: hasIssues ?? this.hasIssues,
      hasProjects: hasProjects ?? this.hasProjects,
      hasDownloads: hasDownloads ?? this.hasDownloads,
      hasWiki: hasWiki ?? this.hasWiki,
      hasPages: hasPages ?? this.hasPages,
      forksCount: forksCount ?? this.forksCount,
      mirrorUrl: mirrorUrl ?? this.mirrorUrl,
      archived: archived ?? this.archived,
      disabled: disabled ?? this.disabled,
      openIssuesCount: openIssuesCount ?? this.openIssuesCount,
      license: license ?? this.license,
      forks: forks ?? this.forks,
      openIssues: openIssues ?? this.openIssues,
      watchers: watchers ?? this.watchers,
      defaultBranch: defaultBranch ?? this.defaultBranch,
      score: score ?? this.score,
    );
  }

  @override
  List<Object> get props {
    return [
      id,
      nodeId,
      name,
      fullName,
      private,
      owner,
      htmlUrl,
      description,
      fork,
      url,
      forksUrl,
      keysUrl,
      collaboratorsUrl,
      teamsUrl,
      hooksUrl,
      issueEventsUrl,
      eventsUrl,
      assigneesUrl,
      branchesUrl,
      tagsUrl,
      blobsUrl,
      gitTagsUrl,
      gitRefsUrl,
      treesUrl,
      statusesUrl,
      languagesUrl,
      stargazersUrl,
      contributorsUrl,
      subscribersUrl,
      subscriptionUrl,
      commitsUrl,
      gitCommitsUrl,
      commentsUrl,
      issueCommentUrl,
      contentsUrl,
      compareUrl,
      mergesUrl,
      archiveUrl,
      downloadsUrl,
      issuesUrl,
      pullsUrl,
      milestonesUrl,
      notificationsUrl,
      labelsUrl,
      releasesUrl,
      deploymentsUrl,
      createdAt,
      updatedAt,
      pushedAt,
      gitUrl,
      sshUrl,
      cloneUrl,
      svnUrl,
      homepage,
      size,
      stargazersCount,
      watchersCount,
      language,
      hasIssues,
      hasProjects,
      hasDownloads,
      hasWiki,
      hasPages,
      forksCount,
      mirrorUrl,
      archived,
      disabled,
      openIssuesCount,
      license,
      forks,
      openIssues,
      watchers,
      defaultBranch,
      score,
    ];
  }
}
