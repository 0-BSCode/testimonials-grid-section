import 'package:flutter/material.dart';
import 'package:testimonials_grid_section/providers/rootSizeProvider.dart';
import 'package:provider/provider.dart';

const Map<String, double> deviceWidths = {
  'xs': 575,
  'sm': 767,
  'md': 991,
  'lg': 1119,
  'xl': 1399
};

void determineRootSize(BuildContext context) {
  final RootSizeProvider rootSizeProvider =
      Provider.of<RootSizeProvider>(context);
  final deviceWidth = MediaQuery.of(context).size.width;

  if (deviceWidth < deviceWidths['xs']!) {
    rootSizeProvider.setRootSize(13);
  } else if (deviceWidth < deviceWidths['sm']!) {
    rootSizeProvider.setRootSize(15);
  } else if (deviceWidth < deviceWidths['md']!) {
    rootSizeProvider.setRootSize(13);
  } else if (deviceWidth < deviceWidths['lg']!) {
    rootSizeProvider.setRootSize(15);
  } else if (deviceWidth < deviceWidths['xl']!) {
    rootSizeProvider.setRootSize(17);
  } else {
    rootSizeProvider.setRootSize(19);
  }
}
