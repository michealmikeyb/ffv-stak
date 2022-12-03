///
//  Generated code. Do not modify.
//  source: tags.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'tags.pb.dart' as $0;
export 'tags.pb.dart';

class TagServiceClient extends $grpc.Client {
  static final _$likePost =
      $grpc.ClientMethod<$0.RatePostRequest, $0.TagBaseResponse>(
          '/ffv.tags.TagService/LikePost',
          ($0.RatePostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TagBaseResponse.fromBuffer(value));
  static final _$disikePost =
      $grpc.ClientMethod<$0.RatePostRequest, $0.TagBaseResponse>(
          '/ffv.tags.TagService/DisikePost',
          ($0.RatePostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.TagBaseResponse.fromBuffer(value));

  TagServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.TagBaseResponse> likePost($0.RatePostRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$likePost, request, options: options);
  }

  $grpc.ResponseFuture<$0.TagBaseResponse> disikePost(
      $0.RatePostRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$disikePost, request, options: options);
  }
}

abstract class TagServiceBase extends $grpc.Service {
  $core.String get $name => 'ffv.tags.TagService';

  TagServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.RatePostRequest, $0.TagBaseResponse>(
        'LikePost',
        likePost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RatePostRequest.fromBuffer(value),
        ($0.TagBaseResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.RatePostRequest, $0.TagBaseResponse>(
        'DisikePost',
        disikePost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.RatePostRequest.fromBuffer(value),
        ($0.TagBaseResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.TagBaseResponse> likePost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RatePostRequest> request) async {
    return likePost(call, await request);
  }

  $async.Future<$0.TagBaseResponse> disikePost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.RatePostRequest> request) async {
    return disikePost(call, await request);
  }

  $async.Future<$0.TagBaseResponse> likePost(
      $grpc.ServiceCall call, $0.RatePostRequest request);
  $async.Future<$0.TagBaseResponse> disikePost(
      $grpc.ServiceCall call, $0.RatePostRequest request);
}
