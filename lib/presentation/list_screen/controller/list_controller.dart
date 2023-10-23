import 'package:euclid_s_application4/core/app_export.dart';
import 'package:euclid_s_application4/presentation/list_screen/models/list_model.dart';

/// A controller class for the ListScreen.
///
/// This class manages the state of the ListScreen, including the
/// current listModelObj
class ListController extends GetxController {
  Rx<ListModel> listModelObj = ListModel().obs;
}
