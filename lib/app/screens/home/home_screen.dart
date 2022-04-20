import 'package:flutter/material.dart';
import 'package:food_app_ui/core/core.dart';
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
            floating: true,
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
                onPressed: () {},
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
                onTap: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                demoMediumCardData.length,
                (index) => Padding(
                  padding: const EdgeInsets.only(left: defaultPadding),
                  child: RestaurantInfoMediumCard(
                    title: demoMediumCardData[index]['name'],
                    image: demoMediumCardData[index]['image'],
                    deliveryTime: demoMediumCardData[index]['delivertTime'],
                    rating: demoMediumCardData[index]['rating'],
                    onPressed: () {},
                    location: demoMediumCardData[index]['location'],
                  ),
                ),
              )),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: Image.asset('assets/images/Banner.png'),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(defaultPadding),
            sliver: SliverToBoxAdapter(
              child: SectionTitle(
                title: 'Best Pick',
                onTap: () {},
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(
                    demoMediumCardData.length,
                        (index) => Padding(
                      padding: const EdgeInsets.only(left: defaultPadding),
                      child: RestaurantInfoMediumCard(
                        title: demoMediumCardData[index]['name'],
                        image: demoMediumCardData[index]['image'],
                        deliveryTime: demoMediumCardData[index]['delivertTime'],
                        rating: demoMediumCardData[index]['rating'],
                        onPressed: () {},
                        location: demoMediumCardData[index]['location'],
                      ),
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}


