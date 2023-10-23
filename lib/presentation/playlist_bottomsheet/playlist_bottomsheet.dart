import '../playlist_bottomsheet/widgets/playlist_item_widget.dart';
import 'controller/playlist_controller.dart';
import 'models/playlist_item_model.dart';
import 'package:euclid_s_application4/core/app_export.dart';
import 'package:flutter/material.dart';

class PlaylistBottomsheet extends StatelessWidget {
  PlaylistBottomsheet(
    this.controller, {
    Key? key,
  }) : super(
          key: key,
        );

  PlaylistController controller;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SizedBox(
      height: 728.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Align(
            alignment: Alignment.center,
            child: SizedBox(
              height: 729.v,
              width: double.maxFinite,
            ),
          ),
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(
                  left: 24.h,
                  top: 13.v,
                  right: 24.h,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Opacity(
                      opacity: 0.445,
                      child: Container(
                        height: 5.v,
                        width: 35.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(
                            2.h,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 35.v),
                    _buildPlaylist(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist() {
    return Expanded(
      child: Obx(
        () => ListView.separated(
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount:
              controller.playlistModelObj.value.playlistItemList.value.length,
          itemBuilder: (context, index) {
            PlaylistItemModel model =
                controller.playlistModelObj.value.playlistItemList.value[index];
            return PlaylistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
