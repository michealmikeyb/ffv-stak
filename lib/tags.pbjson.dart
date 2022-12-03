///
//  Generated code. Do not modify.
//  source: tags.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,deprecated_member_use_from_same_package,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;
@$core.Deprecated('Use ratePostRequestDescriptor instead')
const RatePostRequest$json = const {
  '1': 'RatePostRequest',
  '2': const [
    const {'1': 'user_id', '3': 1, '4': 1, '5': 9, '10': 'userId'},
    const {'1': 'post', '3': 2, '4': 1, '5': 11, '6': '.ffv.tags.Post', '10': 'post'},
  ],
};

/// Descriptor for `RatePostRequest`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List ratePostRequestDescriptor = $convert.base64Decode('Cg9SYXRlUG9zdFJlcXVlc3QSFwoHdXNlcl9pZBgBIAEoCVIGdXNlcklkEiIKBHBvc3QYAiABKAsyDi5mZnYudGFncy5Qb3N0UgRwb3N0');
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
@$core.Deprecated('Use tagBaseResponseDescriptor instead')
const TagBaseResponse$json = const {
  '1': 'TagBaseResponse',
  '2': const [
    const {'1': 'status', '3': 1, '4': 1, '5': 9, '10': 'status'},
    const {'1': 'error', '3': 2, '4': 1, '5': 9, '10': 'error'},
  ],
};

/// Descriptor for `TagBaseResponse`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List tagBaseResponseDescriptor = $convert.base64Decode('Cg9UYWdCYXNlUmVzcG9uc2USFgoGc3RhdHVzGAEgASgJUgZzdGF0dXMSFAoFZXJyb3IYAiABKAlSBWVycm9y');
