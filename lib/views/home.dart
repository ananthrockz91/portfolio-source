import 'package:flutter/material.dart';
import 'package:portfolio/utils/screen_helper.dart';
import 'package:portfolio/views/widgets/app_display.dart';
import 'package:portfolio/views/widgets/carousel.dart';
import 'package:portfolio/views/widgets/cv_section.dart';
import 'package:portfolio/views/widgets/footer.dart';
import 'package:portfolio/views/widgets/header.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      endDrawer: const Drawer(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0,
              vertical: 24.0,
            ),
            child: Text('Home'),
            // child: ListView.separated(
            //   itemBuilder: (BuildContext context, int index) {
            //     return headerItems[index].isButton
            //         ? MouseRegion(
            //       cursor: SystemMouseCursors.click,
            //       child: Container(
            //         decoration: BoxDecoration(
            //           color: kDangerColor,
            //           borderRadius: BorderRadius.circular(8.0),
            //         ),
            //         padding: EdgeInsets.symmetric(horizontal: 28.0),
            //         child: TextButton(
            //           onPressed: headerItems[index].onTap,
            //           child: Text(
            //             headerItems[index].title,
            //             style: const TextStyle(
            //               color: Colors.white,
            //               fontSize: 13.0,
            //               fontWeight: FontWeight.bold,
            //             ),
            //           ),
            //         ),
            //       ),
            //     )
            //         : ListTile(
            //       title: Text(
            //         headerItems[index].title,
            //         style: const TextStyle(
            //           color: Colors.white,
            //         ),
            //       ),
            //     );
            //   },
            //   separatorBuilder: (BuildContext context, int index) {
            //     return const SizedBox(
            //       height: 10.0,
            //     );
            //   },
            //   itemCount: headerItems.length,
            // ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Header(),
            Carousel(),
            const SizedBox(
              height: 20.0,
            ),
            const CvSection(),
            const IosAppAd(),
            // const SizedBox(
            //   height: 70.0,
            // ),
            // WebsiteAd(),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 28.0),
            //   child: PortfolioStats(),
            // ),
            // const SizedBox(
            //   height: 50.0,
            // ),
            // EducationSection(),
            // const SizedBox(
            //   height: 50.0,
            // ),
            // SkillSection(),
            // const SizedBox(
            //   height: 50.0,
            // ),
            // Sponsors(),
            // const SizedBox(
            //   height: 50.0,
            // ),
            // TestimonialWidget(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}