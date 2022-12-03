///
//  Generated code. Do not modify.
//  source: users.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,constant_identifier_names,directives_ordering,library_prefixes,non_constant_identifier_names,prefer_final_fields,return_of_invalid_type,unnecessary_const,unnecessary_import,unnecessary_this,unused_import,unused_shown_name

import 'dart:async' as $async;

import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'users.pb.dart' as $0;
export 'users.pb.dart';

class UserServiceClient extends $grpc.Client {
  static final _$addUser =
      $grpc.ClientMethod<$0.AddUserRequest, $0.AddUserResponse>(
          '/ffv.user.UserService/AddUser',
          ($0.AddUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddUserResponse.fromBuffer(value));
  static final _$getUser =
      $grpc.ClientMethod<$0.GetUserRequest, $0.AddUserResponse>(
          '/ffv.user.UserService/GetUser',
          ($0.GetUserRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.AddUserResponse.fromBuffer(value));
  static final _$getPost =
      $grpc.ClientMethod<$0.GetPostRequest, $0.GetPostResponse>(
          '/ffv.user.UserService/GetPost',
          ($0.GetPostRequest value) => value.writeToBuffer(),
          ($core.List<$core.int> value) =>
              $0.GetPostResponse.fromBuffer(value));

  UserServiceClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options, interceptors: interceptors);

  $grpc.ResponseFuture<$0.AddUserResponse> addUser($0.AddUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$addUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.AddUserResponse> getUser($0.GetUserRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getUser, request, options: options);
  }

  $grpc.ResponseFuture<$0.GetPostResponse> getPost($0.GetPostRequest request,
      {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$getPost, request, options: options);
  }
}

abstract class UserServiceBase extends $grpc.Service {
  $core.String get $name => 'ffv.user.UserService';

  UserServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.AddUserRequest, $0.AddUserResponse>(
        'AddUser',
        addUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.AddUserRequest.fromBuffer(value),
        ($0.AddUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetUserRequest, $0.AddUserResponse>(
        'GetUser',
        getUser_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetUserRequest.fromBuffer(value),
        ($0.AddUserResponse value) => value.writeToBuffer()));
    $addMethod($grpc.ServiceMethod<$0.GetPostRequest, $0.GetPostResponse>(
        'GetPost',
        getPost_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.GetPostRequest.fromBuffer(value),
        ($0.GetPostResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.AddUserResponse> addUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.AddUserRequest> request) async {
    return addUser(call, await request);
  }

  $async.Future<$0.AddUserResponse> getUser_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetUserRequest> request) async {
    return getUser(call, await request);
  }

  $async.Future<$0.GetPostResponse> getPost_Pre(
      $grpc.ServiceCall call, $async.Future<$0.GetPostRequest> request) async {
    return getPost(call, await request);
  }

  $async.Future<$0.AddUserResponse> addUser(
      $grpc.ServiceCall call, $0.AddUserRequest request);
  $async.Future<$0.AddUserResponse> getUser(
      $grpc.ServiceCall call, $0.GetUserRequest request);
  $async.Future<$0.GetPostResponse> getPost(
      $grpc.ServiceCall call, $0.GetPostRequest request);
}
