import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import '../../../../../common/widgets/image_text_widgets/vertical_image_text.dart';
import '../../../../../utils/constants/image_strings.dart'; // Assuming this is where your image assets are defined
import '../../../../../utils/models/product_models.dart';
import '../../../controllers/products_controller.dart';

class THomeCategories extends StatelessWidget {
  THomeCategories({
    Key? key,
  }) : super(key: key);

  final ProductController productController = Get.put(ProductController());

  String getCategoryImage(Category category) {
    switch (category) {
      case Category.ELECTRONICS:
        return TImages.electronicsIcon;
      case Category.JEWELERY:
        return TImages.jeweleryIcon;
      case Category.MEN_S_CLOTHING:
        return TImages.shoeIcon;
      case Category.WOMEN_S_CLOTHING:
        return TImages.clothIcon;
      default:
        return '';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (productController.isLoading.value) {
        return Center(
          child: CircularProgressIndicator(),
        );
      } else {
        List<Category> categories = productController.productList.map((product) => product.category).toSet().toList();

        return SizedBox(
          height: 85,
          child: ListView.builder(
            shrinkWrap: false,
            itemCount: categories.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) {
              Category category = categories[index];
              String categoryImage = getCategoryImage(category);

              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: TVerticalImageText(
                  image: categoryImage,
                  title: category.toString().split('.').last,
                  onTap: () {
                    // Handle onTap event
                  },
                ),
              );
            },
          ),
        );
      }
    });
  }
}
