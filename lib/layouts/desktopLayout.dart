import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testimonials_grid_section/components/cardMobile.dart';
import 'package:testimonials_grid_section/providers/rootSizeProvider.dart';
import 'package:testimonials_grid_section/styling.dart';
import 'package:testimonials_grid_section/utils/addSpacing.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double rootSize = Provider.of<RootSizeProvider>(context).rootSize;
    return Padding(
      padding: EdgeInsets.all(rootSize * 3),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return Container(
            width: constraints.maxWidth,
            // color: COLOR_BLACK_BLUE_DARK.toColor(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 2,
                            child: CardMobile(
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
                          ),
                          addHorizontalSpacing(rootSize * 2),
                          Expanded(
                            flex: 1,
                            child: CardMobile(
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
                          ),
                        ],
                      ),
                      addVerticalSpacing(rootSize * 2),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 1,
                            child: CardMobile(
                              personName: "Jeanette Harmon",
                              personImg: "image-jeanette.jpg",
                              personDescription: "Verified Graduate",
                              header:
                                  "An overall wonderful and rewarding experience",
                              body:
                                  "Thank you for the wonderful experience! I now have a job I really enjoy, and make a good living while doing something I love.",
                              backgroundColor: COLOR_WHITE,
                              textColor: COLOR_BLACK_BLUE_DARK,
                            ),
                          ),
                          addHorizontalSpacing(rootSize * 2),
                          Expanded(
                            flex: 2,
                            child: CardMobile(
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
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                addHorizontalSpacing(rootSize * 2),
                Expanded(
                  child: CardMobile(
                    personName: "Kira Whittle",
                    personImg: "image-kira.jpg",
                    personDescription: "Verified Graduate",
                    header:
                        "Such a life-changing experience. Highly recommended!",
                    body:
                        "Before joining the bootcamp, I’ve never written a line of code. I needed some structure from professionals who can help me learn programming step by step. I was encouraged to enroll by a former student of theirs who can only say wonderful things about the program. The entire curriculum and staff did not disappoint. They were very hands-on and I never had to wait long for assistance. The agile team project, in particular, was outstanding. It took my learning to the next level in a way that no tutorial could ever have. In fact, I’ve often referred to it during interviews as an example of my developent experience. It certainly helped me land a job as a full-stack developer after receiving multiple offers. 100% recommend!",
                    backgroundColor: COLOR_WHITE,
                    textColor: COLOR_BLACK_BLUE_DARK,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
