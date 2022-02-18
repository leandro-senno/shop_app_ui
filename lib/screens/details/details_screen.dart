import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app_ui/constants.dart';
import 'package:shop_app_ui/models/Product.dart';

import 'components/color_dot.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const BackButton(
          color: Colors.black,
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/icons/Heart.svg",
                height: 20,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Image.asset(
            product.image,
            height: MediaQuery.of(context).size.height * 0.4,
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: defaultPadding,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.fromLTRB(defaultPadding,
                  defaultPadding * 2, defaultPadding, defaultPadding),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(defaultBorderRadius * 3),
                  topRight: Radius.circular(defaultBorderRadius * 3),
                ),
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            product.title,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                        const SizedBox(
                          width: defaultPadding,
                        ),
                        Text(
                          "\$" + product.price.toString(),
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultPadding),
                      child: Text(
                          "Uma camisa Henley é uma camisa de pulôver sem gola, com um decote redondo e uma carcela de cerca de 8 a 13 cm de comprimento e geralmente com 2 a 5 botões."),
                    ),
                    const Text(
                      "Cores",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: defaultPadding / 2,
                    ),
                    Row(
                      children: [
                        ColorDot(
                          color: const Color(0xFFBEE8EA),
                          isActive: false,
                          press: () {},
                        ),
                        ColorDot(
                          color: const Color(0xFF141B4A),
                          isActive: true,
                          press: () {},
                        ),
                        ColorDot(
                          color: const Color(0xFFF4E5C3),
                          isActive: false,
                          press: () {},
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: defaultPadding * 1.5,
                    ),
                    Center(
                      child: SizedBox(
                        width: 200,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              primary: primaryColor,
                              shape: const StadiumBorder()),
                          child: const Text("Adicionar ao Carrinho"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
