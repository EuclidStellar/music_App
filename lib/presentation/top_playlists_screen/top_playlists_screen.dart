import '../top_playlists_screen/widgets/topplaylist_item_widget.dart';
import 'controller/top_playlists_controller.dart';
import 'models/topplaylist_item_model.dart';
import 'package:euclid_s_application4/core/app_export.dart';
import 'package:euclid_s_application4/presentation/favorites_screen/favorites_screen.dart';
import 'package:euclid_s_application4/presentation/top_playlists_screen/top_playlists_screen.dart';
import 'package:euclid_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:euclid_s_application4/widgets/app_bar/appbar_title.dart';
import 'package:euclid_s_application4/widgets/app_bar/appbar_trailing_image.dart';
import 'package:euclid_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:euclid_s_application4/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

class TopPlaylistsScreen extends GetWidget<TopPlaylistsController> {
  const TopPlaylistsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    children: [SizedBox(height: 20.v), _buildTopPlaylist()])),
            bottomNavigationBar: _buildBottomBar()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 53.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 24.h, top: 14.v, bottom: 15.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_top_playlists".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMenu,
              margin: EdgeInsets.fromLTRB(24.h, 14.v, 24.h, 15.v))
        ]);
  }

  /// Section Widget
  Widget _buildTopPlaylist() {
    return Expanded(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Obx(() => ListView.separated(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 24.v);
                },
                itemCount: controller.topPlaylistsModelObj.value
                    .topplaylistItemList.value.length,
                itemBuilder: (context, index) {
                  TopplaylistItemModel model = controller.topPlaylistsModelObj
                      .value.topplaylistItemList.value[index];
                  return TopplaylistItemWidget(model, onTapImgRenaissance: () {
                    onTapImgRenaissance();
                  });
                }))));
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Get.toNamed(getCurrentRoute(type), id: 1);
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return "/";
      case BottomBarEnum.Top:
        return AppRoutes.topPlaylistsScreen;
      case BottomBarEnum.Favorites:
        return AppRoutes.favoritesScreen;
      case BottomBarEnum.Search:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.topPlaylistsScreen:
        return TopPlaylistsScreen();
      case AppRoutes.favoritesScreen:
        return FavoritesScreen();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the listScreen when the action is triggered.
  onTapImgRenaissance() {
    Get.toNamed(AppRoutes.listScreen);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
