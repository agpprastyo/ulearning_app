import 'package:ulearning_app/core/usecases/usecases.dart';
import 'package:ulearning_app/core/utils/typedefs.dart';
import 'package:ulearning_app/src/course/features/videos/domain/entities/video.dart';
import 'package:ulearning_app/src/course/features/videos/domain/repos/video_repo.dart';

class AddVideo extends FutureUsecaseWithParams<void, Video> {
  const AddVideo(this._repo);

  final VideoRepo _repo;

  @override
  ResultFuture<void> call(Video params) => _repo.addVideo(params);
}
