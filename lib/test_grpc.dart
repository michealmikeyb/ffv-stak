import 'package:grpc/grpc.dart';
import 'package:stak_swipe/users.pbgrpc.dart';

void main() {
  final channel = ClientChannel(
    '127.0.0.1',
    port: 50051,
    options: ChannelOptions(credentials: ChannelCredentials.insecure()),
  );
  final stub = UserServiceClient(channel);
  var res = stub.getPost(GetPostRequest(userId: "test"));
}
