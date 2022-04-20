import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app_ui/core/constants.dart';
import 'package:food_app_ui/model/demo_data.dart';
import '../components/components.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Using CustomScrollView for better scrollView
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Column(
              children: [
                Center(
                  child: Text(
                    'Text Delivery to'.toUpperCase(),
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: kAccentColor),
                  ),
                ),
                const Center(
                  child: Text(
                    'San Francisco',
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: (){},
                child: const Text(
                  'Filter',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          const SliverPadding(
            padding: EdgeInsets.symmetric(horizontal: defaultPadding),
            sliver: SliverToBoxAdapter(
              child: ImageCarousel(),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: 'Featured Partners',
                onTap: (){},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              children: [
                SizedBox(
                  width: 200,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AspectRatio(
                        aspectRatio: 1.25,
                        child: Image.asset('assets/images/medium_1.png'),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: defaultPadding / 2),
                        child: Text(
                            demoMediumCardData[0]['name'],
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      Text(
                          demoMediumCardData[0]['location'],
                        style: TextStyle(
                          color: kBodyTextColor,
                        ),
                      ),
                      DefaultTextStyle(
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        ),
                        child: Row(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: defaultPadding / 2,
                                vertical: defaultPadding / 8,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(6)),
                                color: kActiveColor,
                              ),
                              child: Text(
                                  '4.6',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                            Spacer(),
                            Text('25min'),
                            Spacer(),
                            CircleAvatar(
                              radius: 2,
                              backgroundColor: Color(0xFF868686),
                            ),
                            Spacer(),
                            Text('Free Delivery'),
                          ],
                        ),
                      ),
                    ],
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






