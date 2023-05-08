import 'package:flutter/material.dart';
import 'package:market_hub/presentation/product_details/buy_now_footer.dart';
import 'package:market_hub/presentation/product_details/widget/about_product.dart';
import 'package:market_hub/presentation/product_details/widget/prodict_review_card.dart';
import 'package:market_hub/presentation/product_details/widget/product_details_image_section.dart';
import 'package:market_hub/presentation/product_details/widget/product_variants.dart';
import 'package:market_hub/presentation/product_details/widget/rating_bar.dart';
import 'package:market_hub/presentation/product_details/widget/recomdations.dart';
import 'package:market_hub/presentation/product_details/widget/shipment_and_seller_info.dart';
import 'package:market_hub/presentation/widgets/custom_app_bar.dart';
import 'package:market_hub/utils/colors.dart';
import 'package:market_hub/utils/text_style.dart';

class ProductDetailsPage extends StatelessWidget {
  final String productImageUrl;
  const ProductDetailsPage({required this.productImageUrl, super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: mktAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20),
            child: Column(
              children: [
                ProductDetailsImageSection(productImageUrl: productImageUrl),
                const SizedBox(height: 30),
                Row(
                  children: [
                    Icon(
                      Icons.dynamic_feed,
                      color: AppColors.textGrey,
                    ),
                    const SizedBox(width: 8),
                    Text(
                      "tokubaju.id",
                      style: AppTextStyle.caption(color: AppColors.textGrey),
                    )
                  ],
                ),
                const SizedBox(height: 10),
                Text(
                  "Essential Men's Short-Sleeve Crewneck T-Shirt",
                  style: AppTextStyle.subTitle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.star,
                      color: AppColors.ratingYellow,
                    ),
                    Text("4.9 Ratings",
                        style: AppTextStyle.medium(color: AppColors.textGrey)),
                    Text("+",
                        style: AppTextStyle.medium(color: AppColors.textGrey)),
                    Text("2.3+ Reviews",
                        style: AppTextStyle.medium(color: AppColors.textGrey)),
                    Text("+ 2.9k + Sold",
                        style: AppTextStyle.medium(color: AppColors.textGrey)),
                  ],
                ),
                const SizedBox(height: 40),
                const AboutProduct(),
                const SizedBox(height: 30),
                const ShipmentAndSellerInfo(),
                const SizedBox(height: 30),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Review & Ratings",
                      style: AppTextStyle.subTitle(fontSize: 20),
                    )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                "4.9",
                                style: AppTextStyle.title(fontSize: 48),
                              ),
                              const SizedBox(width: 4),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "/5.0",
                                    style: AppTextStyle.caption(
                                        color: AppColors.textGrey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                color: AppColors.ratingYellow,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.ratingYellow,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.ratingYellow,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.ratingYellow,
                                size: 18,
                              ),
                              Icon(
                                Icons.star,
                                color: AppColors.ratingYellow,
                                size: 18,
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Text(
                            "2.3k+ Reviews",
                            style: AppTextStyle.medium(color: AppColors.textGrey),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: const [
                          RatingBarWidget(
                            title: "5",
                            value: "1.5k",
                            percent: 65,
                          ),
                          RatingBarWidget(
                            title: "4",
                            value: "750",
                            percent: 20,
                          ),
                          RatingBarWidget(
                            title: "3",
                            value: "140",
                            percent: 10,
                          ),
                          RatingBarWidget(
                            title: "2",
                            value: "10",
                            percent: 4,
                          ),
                          RatingBarWidget(
                            title: "1",
                            value: "4",
                            percent: 1,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 40),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Review with Images and Video",
                      style: AppTextStyle.subTitle(fontSize: 20),
                    )),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ProductVariant(
                      imageUrl: productImageUrl,
                      variantColor: AppColors.textGrey.withOpacity(.4),
                    ),
                    ProductVariant(
                        imageUrl: productImageUrl,
                        variantColor: AppColors.ratingYellow.withOpacity(.4)),
                    ProductVariant(
                        imageUrl: productImageUrl,
                        variantColor: AppColors.black.withOpacity(.4)),
                    ProductVariant(
                        imageUrl: productImageUrl,
                        variantColor: AppColors.red.withOpacity(.4)),
                  ],
                ),
                const SizedBox(height: 30),
                Divider(
                  color: AppColors.textGrey,
                ),
                const SizedBox(height: 30),
                Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Top Reviews",
                      style: AppTextStyle.subTitle(fontSize: 20),
                    )),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Showing 3 of 2.3k+ reviews",
                      style: AppTextStyle.medium(color: AppColors.textGrey),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: AppColors.primaryColor.withOpacity(.5)),
                          borderRadius: BorderRadius.circular(8)
                          ),
                      child: Row(
                        children: [
                          Text(
                            "Popular",
                            style: AppTextStyle.subTitle(),
                          ),
                          const SizedBox(width: 8),
                          Icon(Icons.keyboard_arrow_down, color: AppColors.primaryColor,)
                        ],
                      ),
                    ),
                  ],
                ),
               const SizedBox(height: 30),
                const ProductReviewCard(),
                const ProductReviewCard(),
                const ProductReviewCard(),
                const SizedBox(height: 40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround, 
                        children: [
                        Container(
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: AppColors.textGrey.withOpacity(.2),
                            borderRadius: BorderRadius.circular(20)
                          ),
                          child: const Center(child: Icon(Icons.arrow_back_ios, size: 17)),
                        ),
                    
                        Text("1", style: AppTextStyle.medium(fontSize: 16, color: AppColors.textGrey),),
                        Text("2", style: AppTextStyle.medium(fontSize: 16, color: AppColors.textGrey),),
                        Text("3", style: AppTextStyle.medium(fontSize: 16, color: AppColors.textGrey),),
                        Text("...", style: AppTextStyle.medium(fontSize: 16, color: AppColors.textGrey),),
                      const Center(child: Icon(Icons.arrow_forward_ios, size: 17)),
                      ],),
                    ),
                    Expanded(child: Align(
                      alignment: Alignment.topRight,
                      child: Text("See More", style: AppTextStyle.medium(color: AppColors.primaryColor),)))
                  ],
                ),
                const SizedBox(height: 70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Recommendation", style: AppTextStyle.subTitle(),),
                  Text("See More", style: AppTextStyle.medium(color: AppColors.primaryColor),),
                ],),
                const SizedBox(height: 15),
                SizedBox(
                  height: 230,
                  child: Recommendations()),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const BuyNowBottomNav(),
    );
  }
}
