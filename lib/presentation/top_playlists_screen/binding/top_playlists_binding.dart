import '../controller/top_playlists_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TopPlaylistsScreen.
///
/// This class ensures that the TopPlaylistsController is created when the
/// TopPlaylistsScreen is first loaded.
class TopPlaylistsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TopPlaylistsController());
  }
}
