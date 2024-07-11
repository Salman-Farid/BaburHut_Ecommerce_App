
import 'package:flutter/cupertino.dart';

import '../../utils/constants/colors.dart';

class TShadowStyle {
  static final verticalProductShadow = BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    blurRadius: 50.0,
    spreadRadius: 7.0,
    offset: const Offset(0, 2.0),
  );

  static final horizontalProductShadow = BoxShadow(
    color: TColors.darkGrey.withOpacity(0.1),
    blurRadius: 50.0,
    spreadRadius: 7.0,
    offset: const Offset(0, 2.0), // This line is different from the previous shadow
  );
}
