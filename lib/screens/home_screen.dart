import 'package:flutter/material.dart';
import 'package:flutter_youtube_ui/widgets/custom_sliver_app_bar.dart';
import 'package:flutter_youtube_ui/widgets/video_card.dart';

import '../data.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          CustomSilverAppBar(),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final video = videos[index];
                return VideoCard(video: video);
              },
              childCount: videos.length,
            ),
          )
        ],
      ),
    );
  }
}
