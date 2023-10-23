import '../albums_screen/widgets/albums_item_widget.dart';
import 'controller/albums_controller.dart';
import 'models/albums_item_model.dart';
import 'package:euclid_s_application4/core/app_export.dart';
import 'package:euclid_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:euclid_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:euclid_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:euclid_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class AlbumsScreen extends GetWidget<AlbumsController> {
  const AlbumsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 24.h, top: 22.v, right: 24.h),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 16.v);
                    },
                    itemCount: controller
                        .albumsModelObj.value.albumsItemList.value.length,
                    itemBuilder: (context, index) {
                      AlbumsItemModel model = controller
                          .albumsModelObj.value.albumsItemList.value[index];
                      return AlbumsItemWidget(model, onTapAlbum: () {
                        onTapAlbum();
                      });
                    })))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 13.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_albums".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMenu,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 13.v))
        ]);
  }

  /// Navigates to the loginScreen when the action is triggered.
  onTapAlbum() {
    Get.toNamed(AppRoutes.loginScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
