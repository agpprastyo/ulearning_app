import 'package:ulearning_app/core/utils/typedefs.dart';
import 'package:ulearning_app/src/auth/domain/entities/user.dart';
import 'package:ulearning_app/src/chat/domain/entities/group.dart';
import 'package:ulearning_app/src/chat/domain/entities/message.dart';

abstract class ChatRepo {
  const ChatRepo();

  ResultFuture<void> sendMessage(Message message);

  ResultStream<List<Group>> getGroups();

  ResultStream<List<Message>> getMessages(String groupId);

  ResultFuture<void> joinGroup({
    required String groupId,
    required String userId,
  });

  ResultFuture<void> leaveGroup({
    required String groupId,
    required String userId,
  });

  ResultFuture<LocalUser> getUserById(String userId);
}
