import '../controller/favorites_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FavoritesScreen.
///
/// This class ensures that the FavoritesController is created when the
/// FavoritesScreen is first loaded.
class FavoritesBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FavoritesController());
  }
}
