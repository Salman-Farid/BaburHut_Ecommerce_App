import 'package:flutter/material.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class TRoundedImage extends StatelessWidget {
  TRoundedImage({
    super.key,
    this.border,
    this.padding,
    this.onPressed,
    this.width,
    this.height,
    this.applyImageRadius = true,
    required this.imageurl,
    this.fit = BoxFit.contain,
    this.backgroundColor = TColors.light,
    this.borderRadius = TSizes.md,
  }) : isNetworkImage = imageurl.startsWith('http');

  final double? width;
  final double? height;
  final String imageurl;
  final bool applyImageRadius;
  final BoxBorder? border;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onPressed;
  final BoxFit? fit;
  final Color backgroundColor;
  final bool isNetworkImage;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(TSizes.md)),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(TSizes.md),
        child: Image(
          fit: fit,
          image: isNetworkImage
              ? NetworkImage(imageurl)
              : AssetImage(imageurl) as ImageProvider,
        ),
      ),
    );
  }
}
