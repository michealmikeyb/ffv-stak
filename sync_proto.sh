#!/usr/bin/env bash

protoc --dart_out=grpc:lib -Iprotos protos/tags.proto

protoc \
    --dart_out=grpc:lib \
    -I./protos ./protos/users.proto google/protobuf/timestamp.proto