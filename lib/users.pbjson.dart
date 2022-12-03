///
//  Generated code. Do not modify.
//  source: users.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use postDescriptor instead')
const Post$json = const {
  '1': 'Post',
  '2': const [
    const {'1': 'url', '3': 1, '4': 1, '5': 9, '10': 'url'},
    const {'1': 'tags', '3': 2, '4': 3, '5': 9, '10': 'tags'},
    const {'1': 'source', '3': 3, '4': 1, '5': 9, '10': 'source'},
    const {'1': 'author', '3': 4, '4': 1, '5': 9, '10': 'author'},
    const {'1': 'content', '3': 5, '4': 1, '5': 9, '10': 'content'},
    const {'1': 'likes', '3': 6, '4': 1, '5': 5, '10': 'likes'},
  ],
};

/// Descriptor for `Post`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List postDescriptor = $convert.base64Decode('CgRQb3N0EhAKA3VybBgBIAEoCVIDdXJsEhIKBHRhZ3MYAiADKAlSBHRhZ3MSFgoGc291cmNlGAMgASgJUgZzb3VyY2USFgoGYXV0aG9yGAQgASgJUgZhdXRob3ISGAoHY29udGVudBgFIAEoCVIHY29udGVudBIUCgVsaWtlcxgGIAEoBVIFbGlrZXM=');
@$core.Deprecated('Use addUserRequestDescriptor instead')
const AddUserRequest$json = const {
  '1': 'AddUserRequest',
  '2': const [
    const {'1': 'mastodon_id', '3': 2, '4': 1, '5': 9, '10': 'mastodonId'},
    const {'1': 'mastodon_username', '3': 3, '4': 1, '5': 9, '10': 'mastodonUsername'},
  ],
};

/// Descriptor for `AddUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserRequestDescriptor = $convert.base64Decode('Cg5BZGRVc2VyUmVxdWVzdBIfCgttYXN0b2Rvbl9pZBgCIAEoCVIKbWFzdG9kb25JZBIrChFtYXN0b2Rvbl91c2VybmFtZRgDIAEoCVIQbWFzdG9kb25Vc2VybmFtZQ==');
@$core.Deprecated('Use addUserResponseDescriptor instead')
const AddUserResponse$json = const {
  '1': 'AddUserResponse',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `AddUserResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List addUserResponseDescriptor = $convert.base64Decode('Cg9BZGRVc2VyUmVzcG9uc2USFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklk');
@$core.Deprecated('Use getUserRequestDescriptor instead')
const GetUserRequest$json = const {
  '1': 'GetUserRequest',
  '2': const [
    const {'1': 'mastodon_id', '3': 1, '4': 1, '5': 9, '10': 'mastodonId'},
  ],
};

/// Descriptor for `GetUserRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getUserRequestDescriptor = $convert.base64Decode('Cg5HZXRVc2VyUmVxdWVzdBIfCgttYXN0b2Rvbl9pZBgBIAEoCVIKbWFzdG9kb25JZA==');
@$core.Deprecated('Use userBaseResponseDescriptor instead')
const UserBaseResponse$json = const {
  '1': 'UserBaseResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `UserBaseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List userBaseResponseDescriptor = $convert.base64Decode('ChBVc2VyQmFzZVJlc3BvbnNlEhYKBnN0YXR1cxgBIAEoCVIGc3RhdHVzEhQKBWVycm9yGAIgASgJUgVlcnJvcg==');
@$core.Deprecated('Use getPostRequestDescriptor instead')
const GetPostRequest$json = const {
  '1': 'GetPostRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
  ],
};

/// Descriptor for `GetPostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPostRequestDescriptor = $convert.base64Decode('Cg5HZXRQb3N0UmVxdWVzdBIXCgd1c2VyX2lkGAEgASgJUgZ1c2VySWQ=');
@$core.Deprecated('Use getPostResponseDescriptor instead')
const GetPostResponse$json = const {
  '1': 'GetPostResponse',
  '2': const [
    const {'1': 'post', '3': 1, '4': 1, '5': 11, '6': '.ffv.user.Post', '10': 'post'},
  ],
};

/// Descriptor for `GetPostResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List getPostResponseDescriptor = $convert.base64Decode('Cg9HZXRQb3N0UmVzcG9uc2USIgoEcG9zdBgBIAEoCzIOLmZmdi51c2VyLlBvc3RSBHBvc3Q=');
