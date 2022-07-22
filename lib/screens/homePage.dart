import 'package:flutter/material.dart';
import 'package:testimonials_grid_section/layouts/desktopLayout.dart';
import 'package:testimonials_grid_section/layouts/mobileLayout.dart';
import 'package:testimonials_grid_section/providers/rootSizeProvider.dart';
import 'package:testimonials_grid_section/styling.dart';
import 'package:provider/provider.dart';
import 'package:testimonials_grid_section/utils/determineRootSize.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    determineRootSize(context);
    final double rootSize = Provider.of<RootSizeProvider>(context).rootSize;
    final double deviceWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            debugPrint("${constraints.maxWidth}");
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              color: COLOR_WHITE.toColor(),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: deviceWidth < deviceWidths['md']!
                    ? MobileLayout()
                    : DesktopLayout(),
              ),
            );
          },
        ),
      ),
    );
  }
}
