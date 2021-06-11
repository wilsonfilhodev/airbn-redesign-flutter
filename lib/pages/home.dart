import 'package:airbnb/widgets/home_page_template.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  PageController controller = PageController();
  int currentPage = 0;

  @override
  void initState() {
    controller.addListener(() {
      setState(() {
        currentPage = controller.page!.round();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PageView(
          controller: controller,
          children: [
            HomePageTemplate(
                activePage: currentPage,
                imagePath: "assets/images/page1.png",
                title: "Let's Find Peace with Confort"),
            HomePageTemplate(
                activePage: currentPage,
                imagePath: "assets/images/page2.png",
                title: "Let's Find Peace with Confort"),
            HomePageTemplate(
                activePage: currentPage,
                imagePath: "assets/images/page1.png",
                title: "Let's Find Peace with Confort"),
          ],
        ),
      ),
    );
  }
}
