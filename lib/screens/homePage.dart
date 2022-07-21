import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testimonials_grid_section/components/cardMobile.dart';
import 'package:testimonials_grid_section/providers/rootSizeProvider.dart';
import 'package:testimonials_grid_section/styling.dart';
import 'package:provider/provider.dart';
import 'package:testimonials_grid_section/utils/addSpacing.dart';
import 'package:testimonials_grid_section/utils/determineRootSize.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    determineRootSize(context);
    final double rootSize = Provider.of<RootSizeProvider>(context).rootSize;
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              width: constraints.maxWidth,
              height: constraints.maxHeight,
              color: COLOR_WHITE.toColor(),
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                physics: BouncingScrollPhysics(),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: rootSize,
                    vertical: rootSize * 5,
                  ),
                  child: Column(
                    children: [
                      // Container(
                      //   decoration: BoxDecoration(
                      //     color: COLOR_VIOLET.toColor(),
                      //     borderRadius: BorderRadius.circular(rootSize * 0.5),
                      //   ),
                      //   child: Stack(
                      //     children: [
                      //       Positioned(
                      //         right: rootSize * 2,
                      //         child: SvgPicture.asset(
                      //           "assets/images/bg-pattern-quotation.svg",
                      //           semanticsLabel: "Quotation marks",
                      //         ),
                      //       ),
                      //       Padding(
                      //         padding: EdgeInsets.symmetric(
                      //             horizontal: rootSize * 2,
                      //             vertical: rootSize * 2.3),
                      //         child: Column(
                      //           crossAxisAlignment: CrossAxisAlignment.start,
                      //           children: [
                      //             Row(
                      //               children: [
                      //                 Container(
                      //                   width: rootSize * 3,
                      //                   height: rootSize * 3,
                      //                   decoration: BoxDecoration(
                      //                     borderRadius: BorderRadius.circular(
                      //                         rootSize * 5),
                      //                     border: Border.all(
                      //                       color: COLOR_VIOLET
                      //                           .withLightness(0.75)
                      //                           .toColor(),
                      //                       width: rootSize * 0.15,
                      //                     ),
                      //                     image: DecorationImage(
                      //                       image: AssetImage(
                      //                         "assets/images/image-daniel.jpg",
                      //                       ),
                      //                     ),
                      //                   ),
                      //                 ),
                      //                 addHorizontalSpacing(rootSize * 1.2),
                      //                 Column(
                      //                   crossAxisAlignment:
                      //                       CrossAxisAlignment.start,
                      //                   children: [
                      //                     Text(
                      //                       "Daniel Clifford",
                      //                       style: TextStyle(
                      //                         color: COLOR_WHITE.toColor(),
                      //                         fontSize: rootSize,
                      //                         letterSpacing: rootSize * 0.01,
                      //                       ),
                      //                     ),
                      //                     addVerticalSpacing(rootSize * 0.1),
                      //                     Text(
                      //                       "Verified Graduate",
                      //                       style: TextStyle(
                      //                         color: COLOR_WHITE
                      //                             .toColor()
                      //                             .withOpacity(0.5),
                      //                         fontSize: rootSize * 0.85,
                      //                         letterSpacing: rootSize * 0.01,
                      //                       ),
                      //                     ),
                      //                   ],
                      //                 )
                      //               ],
                      //             ),
                      //             addVerticalSpacing(rootSize * 1.5),
                      //             Text(
                      //               "I received a job offer mid-course, and the subjects I learned were current, if not more so, in the company I joined. I honestly feel I got every penny’s worth.",
                      //               style: TextStyle(
                      //                 color: COLOR_WHITE.toColor(),
                      //                 fontWeight: FontWeight.w600,
                      //                 fontSize: rootSize * 1.47,
                      //                 letterSpacing: rootSize * 0.05,
                      //                 height: 1.3,
                      //               ),
                      //             ),
                      //             addVerticalSpacing(rootSize * 1.5),
                      //             Text(
                      //               "\“ I was an EMT for many years before I joined the bootcamp. I’ve been looking to make a transition and have heard some people who had an amazing experience here. I signed up for the free intro course and found it incredibly fun! I enrolled shortly thereafter. The next 12 weeks was the best - and most grueling - time of my life. Since completing the course, I’ve successfully switched careers, working as a Software Engineer at a VR startup. \”",
                      //               style: TextStyle(
                      //                 color: COLOR_WHITE
                      //                     .toColor()
                      //                     .withOpacity(0.7),
                      //                 fontSize: rootSize * 1.1,
                      //                 height: 1.5,
                      //               ),
                      //             ),
                      //           ],
                      //         ),
                      //       ),
                      //     ],
                      //   ),
                      // ),
                      CardMobile(
                        personName: "Daniel Clifford",
                        personImg: "image-daniel.jpg",
                        personDescription: "Verified Graduate",
                        header:
                            "I received a job offer mid-course, and the subjects I learned were current, if not more so, in the company I joined. I honestly feel I got every penny’s worth.",
                        body:
                            "I was an EMT for many years before I joined the bootcamp. I’ve been looking to make a transition and have heard some people who had an amazing experience here. I signed up for the free intro course and found it incredibly fun! I enrolled shortly thereafter. The next 12 weeks was the best - and most grueling - time of my life. Since completing the course, I’ve successfully switched careers, working as a Software Engineer at a VR startup.",
                        backgroundColor: COLOR_VIOLET,
                        textColor: COLOR_WHITE,
                      ),
                      addVerticalSpacing(rootSize * 2),
                      CardMobile(
                        personName: "Jonathan Walters",
                        personImg: "image-jonathan.jpg",
                        personDescription: "Verified Graduate",
                        header:
                            "The team was very supportive and kept me motivated",
                        body:
                            "I started as a total newbie with virtually no coding skills. I now work as a mobile engineer for a big company. This was one of the best investments I’ve made in myself.",
                        backgroundColor: COLOR_GRAY_BLUE_DARK,
                        textColor: COLOR_WHITE,
                      ),
                      addVerticalSpacing(rootSize * 2),
                      CardMobile(
                        personName: "Jeanette Harmon",
                        personImg: "image-jeanette.jpg",
                        personDescription: "Verified Graduate",
                        header: "An overall wonderful and rewarding experience",
                        body:
                            "Thank you for the wonderful experience! I now have a job I really enjoy, and make a good living while doing something I love.",
                        backgroundColor: COLOR_WHITE,
                        textColor: COLOR_BLACK_BLUE_DARK,
                      ),
                      addVerticalSpacing(rootSize * 2),
                      CardMobile(
                        personName: "Patrick Abrams",
                        personImg: "image-patrick.jpg",
                        personDescription: "Verified Graduate",
                        header:
                            "Awesome teaching support from TAs who did the bootcamp themselves. Getting guidance from them and learning from their experiences was easy.",
                        body:
                            "The staff seem genuinely concerned about my progress which I find really refreshing. The program gave me the confidence necessary to be able to go out in the world and present myself as a capable junior developer. The standard is above the rest. You will get the personal attention you need from an incredible community of smart and amazing people.",
                        backgroundColor: COLOR_BLACK_BLUE_DARK,
                        textColor: COLOR_WHITE,
                      ),
                      addVerticalSpacing(rootSize * 2),
                      CardMobile(
                        personName: "Kira Whittle",
                        personImg: "image-kira.jpg",
                        personDescription: "Verified Graduate",
                        header:
                            "Such a life-changing experience. Highly recommended!",
                        body:
                            "Before joining the bootcamp, I’ve never written a line of code. I needed some structure from professionals who can help me learn programming step by step. I was encouraged to enroll by a former student of theirs who can only say wonderful things about the program. The entire curriculum and staff did not disappoint. They were very hands-on and I never had to wait long for assistance. The agile team project, in particular, was outstanding. It took my learning to the next level in a way that no tutorial could ever have. In fact, I’ve often referred to it during interviews as an example of my developent experience. It certainly helped me land a job as a full-stack developer after receiving multiple offers. 100% recommend!",
                        backgroundColor: COLOR_WHITE,
                        textColor: COLOR_BLACK_BLUE_DARK,
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
