import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/utils/InstagramUtil.dart';

class Avatar extends StatelessWidget {
  final AssetImage image;
  final bool hasStory;
  final bool isSeen;

  const Avatar({
    super.key,
    required this.image,
    required this.hasStory,
    required this.isSeen,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 98,
      height: 98,
      padding: const EdgeInsets.all(6),
      decoration: hasStory && !isSeen
          ? ShapeDecoration(
              gradient: LinearGradient(
                begin: Alignment(-0.71, -0.71),
                end: Alignment(0.71, 0.71),
                colors: [
                  Color(0xFF8A3BEE),
                  Color(0xFFF200B7),
                  Color(0xFFFE9402)
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4000),
              ),
            )
          : isSeen
              ? ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 3,
                      strokeAlign: BorderSide.strokeAlignOutside,
                      color: Instagramcolors.gray,
                    ),
                    borderRadius: BorderRadius.circular(112.50),
                  ),
                )
              : null,
      child: Row(
        children: [
          Container(
            width: 86,
            height: 86,
            child: Row(
              children: [
                Container(
                  width: 86,
                  height: 86,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      image: image,
                      fit: BoxFit.fill,
                    ),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 3,
                        strokeAlign: BorderSide.strokeAlignOutside,
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(112.50),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Numbers extends StatelessWidget {
  final String number;
  final String title;

  const Numbers({
    super.key,
    required this.number,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            number,
            style: Instagramtextstyle.semibold,
          ),
          Text(
            title,
            style: Instagramtextstyle.semibold.copyWith(fontSize: 13),
          )
        ],
      ),
    );
  }
}

class RequestorsImage extends StatelessWidget {
  final AssetImage image1;
  final AssetImage? image2;
  final AssetImage? image3;

  const RequestorsImage(
      {super.key, required this.image1, this.image2, this.image3});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64,
      child: Stack(
        children: [
          Positioned(
            child: requestor(image1),
          ),
          if (image2 != null)
            Positioned(
              left: 16,
              child: requestor(image2!),
            ),
          if (image3 != null)
            Positioned(
              left: 32,
              child: requestor(image3!),
            ),
        ],
      ),
    );
  }

  Container requestor(AssetImage image) {
    return Container(
      width: 28,
      height: 28,
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: image,
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: Colors.white,
          ),
          borderRadius: BorderRadius.circular(112.50),
        ),
      ),
    );
  }
}
