import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testimonials_grid_section/providers/rootSizeProvider.dart';
import 'package:provider/provider.dart';
import 'package:testimonials_grid_section/utils/addSpacing.dart';

class CardMobile extends StatelessWidget {
  final bool addSVG;
  final String personName;
  final String personImg;
  final String personDescription;
  final String header;
  final String body;
  final HSLColor backgroundColor;
  final HSLColor textColor;

  const CardMobile(
      {Key? key,
      required this.personName,
      required this.personImg,
      required this.personDescription,
      required this.header,
      required this.body,
      required this.backgroundColor,
      required this.textColor,
      this.addSVG = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double rootSize = Provider.of<RootSizeProvider>(context).rootSize;
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor.toColor(),
        borderRadius: BorderRadius.circular(rootSize * 0.5),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            offset: Offset(0, rootSize * 5 / 13),
            spreadRadius: rootSize * 5 / 13,
            blurRadius: rootSize * 7 / 13,
          ),
        ],
      ),
      child: Stack(
        children: [
          if (addSVG)
            Positioned(
              right: rootSize * 2,
              child: SvgPicture.asset(
                "assets/images/bg-pattern-quotation.svg",
                semanticsLabel: "Quotation marks",
              ),
            ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: rootSize * 2, vertical: rootSize * 2.3),
            // padding: EdgeInsets.symmetric(
            //     horizontal: rootSize * 2.5, vertical: rootSize * 3),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: rootSize * 2.5,
                      height: rootSize * 2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(rootSize * 5),
                        border: Border.all(
                          color: backgroundColor.withLightness(0.75).toColor(),
                          width: rootSize * 0.15,
                        ),
                        image: DecorationImage(
                          image: AssetImage(
                            "assets/images/${personImg}",
                          ),
                        ),
                      ),
                    ),
                    addHorizontalSpacing(rootSize * 1.2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${personName}",
                          style: TextStyle(
                            color: textColor.toColor(),
                            fontSize: rootSize * 1.1,
                            letterSpacing: rootSize * 0.01,
                          ),
                        ),
                        addVerticalSpacing(rootSize * 0.2),
                        Text(
                          "${personDescription}",
                          style: TextStyle(
                            color: textColor.toColor().withOpacity(0.5),
                            fontSize: rootSize * 0.95,
                            letterSpacing: rootSize * 0.01,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                addVerticalSpacing(rootSize * 1.5),
                Text(
                  "${header}",
                  style: TextStyle(
                    color: textColor.toColor(),
                    fontWeight: FontWeight.w600,
                    fontSize: rootSize * 1.62,
                    letterSpacing: rootSize * 0.05,
                    height: 1.3,
                  ),
                ),
                addVerticalSpacing(rootSize * 1.5),
                Text(
                  "\“ ${body} \”",
                  style: TextStyle(
                    color: textColor.toColor().withOpacity(0.7),
                    fontSize: rootSize * 1.14,
                    height: 1.5,
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
