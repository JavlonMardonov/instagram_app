import 'package:flutter/material.dart';
import 'package:instagram_app/utils/InstagramImages.dart';
import 'package:instagram_app/utils/InstagramUtil.dart';

class Profilescreen extends StatelessWidget {
  const Profilescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Instagramicons.back_arrow,
            Row(
              children: [
                Text(
                  "codefive",
                  style: Instagramtextstyle.bold,
                ),
                SizedBox(width: 6),
                Instagramicons.verified,
              ],
            ),
            Instagramicons.group,
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Avatar(
                    image: Instagramimages.avatar,
                    hasStory: true,
                    isSeen: false),
                Numbers(number: "6956", title: "Posts"),
                Numbers(number: "27.7m", title: "Followers"),
                Numbers(number: "6956", title: "Following"),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Codefive",
                      style:
                          Instagramtextstyle.semibold.copyWith(fontSize: 14)),
                  Text("Agency",
                      style: Instagramtextstyle.semibold
                          .copyWith(fontSize: 14, color: Instagramcolors.gray)),
                  Text("O seu site de sonhos, está no sitio certo. 💻",
                      style: Instagramtextstyle.regular),
                  Text("codefive.pt",
                      style: Instagramtextstyle.regular.copyWith(
                        color: Instagramcolors.blueLink,
                      )),
                  Row(
                    children: [
                      RequestorsImage(
                        image1: Instagramimages.user1,
                        image2: Instagramimages.user2,
                        image3: Instagramimages.user3,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width - 96,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text: 'Seguido por',
                                  style: Instagramtextstyle.regular),
                              TextSpan(
                                text: ' joaocorreia09, vanda.carvalho',
                                style: Instagramtextstyle.semibold
                                    .copyWith(fontSize: 14),
                              ),
                              TextSpan(
                                  text: ' e ',
                                  style: Instagramtextstyle.regular),
                              TextSpan(
                                text: '16 outros amigos',
                                style: Instagramtextstyle.semibold
                                    .copyWith(fontSize: 14),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Image(image: Instagramimages.bottom),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.shifting,
          currentIndex: 4,
          items: [
            BottomNavigationBarItem(
                icon: InstagramNavigationIcons.home, label: "Home"),
            BottomNavigationBarItem(
                icon: InstagramNavigationIcons.search, label: "Search"),
            BottomNavigationBarItem(
                icon: InstagramNavigationIcons.reels, label: "Reels"),
            BottomNavigationBarItem(
                icon: InstagramNavigationIcons.search, label: "Search"),
            BottomNavigationBarItem(
                icon: InstagramNavigationIcons.profile, label: "Profile"),
          ]),
    );
  }
}
