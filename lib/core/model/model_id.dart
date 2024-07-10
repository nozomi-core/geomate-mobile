import 'package:uuid/uuid.dart';

sealed class ModelId {}

//ID that exists on server
class ServerId extends ModelId {
  final String id;

  ServerId(this.id);

  ModelId bindClient(String bindClientId) {
    return BoundedId(this, ClientId(bindClientId));
  }
}

//ID that only exists on client
class ClientId extends ModelId {
  final String uuid;

  ClientId(this.uuid);

  static ClientId create() {
    return ClientId(const Uuid().v4());
  }
}

//ID that exists on both the client and server with calls .bindXXX
class BoundedId extends ModelId {
  final ServerId serverId;
  final ClientId clientId;

  BoundedId(this.serverId, this.clientId);
}
