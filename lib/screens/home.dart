import 'package:bike_sharing_app/models/users_model.dart';
import 'package:bike_sharing_app/utils/text_style.dart';
import 'package:bike_sharing_app/widgets/events_ui_design.dart';
import 'package:bike_sharing_app/widgets/service_package_card_ui.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<UsersModel> users = UsersModel.getUsers();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            appBar(),
            const SizedBox(height: 20),

            nearbyUsers(),
            const SizedBox(height: 20),

            dealsOfDay(),
            const SizedBox(height: 30),

            upCommingEvents(),
            const SizedBox(height: 30),

            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Buy Service\nPackages', style: AppTextStyle.heading),
                      Row(
                        children: [
                          Text(
                            'View all',
                            style: AppTextStyle.subHeadingDeepPurple,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xFF584CF4),
                          ),
                        ],
                      ),
                    ],
                  ),



                  SizedBox(
                    height: 600,
                    width: screenWidth - 33,

                    child: GridView(

                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 12,
                        mainAxisSpacing: 18,
                        childAspectRatio: 3/4,

                      ),
                      children: [
                        ServicePackageCardUi(
                          bgImageUrl: 'assets/images/services_ (1).png',
                          serviceName: 'Annual Maintenance',
                          servicePrice: 900,
                          prevPrice: 1000,
                        ),

                        ServicePackageCardUi(
                          bgImageUrl: 'assets/images/services_ (2).png',
                          serviceName: 'Teflon Coating',
                          servicePrice: 1350,
                          prevPrice: 1500,
                        ),

                        ServicePackageCardUi(
                          bgImageUrl: 'assets/images/services_ (3).png',
                          serviceName: 'Annual Maintenance',
                          servicePrice: 900,
                          prevPrice: 1000,
                        ),

                        ServicePackageCardUi(
                          bgImageUrl: 'assets/images/services_ (4).png',
                          serviceName: 'Teflon Coating',
                          servicePrice: 1350,
                          prevPrice: 1500,
                        ),

                      ],
                    ),
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }




  Container upCommingEvents() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Upcoming Events', style: AppTextStyle.heading),
              Row(
                children: [
                  Text('View all', style: AppTextStyle.subHeadingDeepPurple),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF584CF4),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 15),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 10,
              children: [
                EventsUiDesign(
                  backgroundImagePath: 'assets/images/Events_scenario (2).png',
                  eventName: 'Shimla to Manali',
                ),

                EventsUiDesign(
                  backgroundImagePath: 'assets/images/Events_scenario (3).png',
                  eventName: 'Goa to Gujarat',
                ),

                EventsUiDesign(
                  backgroundImagePath: 'assets/images/Events_scenario (4).png',
                  eventName: 'Kashmir Trip',
                ),

                EventsUiDesign(
                  backgroundImagePath: 'assets/images/Events_scenario (1).png',
                  eventName: 'Trip to Shimla',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container dealsOfDay() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Deals of the Day', style: AppTextStyle.heading),

              Row(
                children: [
                  Text('View all', style: AppTextStyle.subHeadingDeepPurple),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF584CF4),
                  ),
                ],
              ),
            ],
          ),

          const SizedBox(height: 15),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,

            child: Row(
              spacing: 15.0,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Image.asset(
                      'assets/images/helmet1.png',
                      height: 115,
                      width: 150,
                    ),

                    Text(
                      'Racing Dual Visor Helmet',
                      style: AppTextStyle.subHeading,
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        Text('₹ 4,079', style: AppTextStyle.heading),
                        Text(
                          '₹ 5,099',
                          style: AppTextStyle.miniSubTextWithLineThrough,
                        ),
                        Text(
                          '20% Off',
                          style: AppTextStyle.miniSubTextDeepPurple,
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 21,
                          width: 21,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Text('4.8(212)', style: AppTextStyle.subHeading),
                      ],
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Image.asset(
                      'assets/images/helmet1.png',
                      height: 115,
                      width: 150,
                    ),

                    Text(
                      'Racing Dual Visor Helmet',
                      style: AppTextStyle.subHeading,
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        Text('₹ 2,799', style: AppTextStyle.heading),
                        Text(
                          '₹ 3,499',
                          style: AppTextStyle.miniSubTextWithLineThrough,
                        ),
                        Text(
                          '20% Off',
                          style: AppTextStyle.miniSubTextDeepPurple,
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 21,
                          width: 21,
                          decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Icon(
                            Icons.star,
                            size: 18,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(width: 5.0),
                        Text('4.5(154)', style: AppTextStyle.subHeading),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container nearbyUsers() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Nearby Users', style: AppTextStyle.heading),

              Row(
                children: [
                  Text('View all', style: AppTextStyle.subHeadingDeepPurple),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                    color: Color(0xFF584CF4),
                  ),
                ],
              ),
            ],
          ),
          // Nearby users title & view all
          const SizedBox(height: 20),
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) => const SizedBox(width: 10),
              itemCount: users.length,
              itemBuilder: (context, index) {
                final user = users[index];
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(user.imageUrl),
                    ),
                    const SizedBox(height: 10),
                    Text(user.name, style: AppTextStyle.subHeading),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Container appBar() {
    return Container(
      // height: MediaQuery.of(context).size.height,
      // width: MediaQuery.of(context).size.width,
      // child: Text('height: ${MediaQuery.of(context).size.height}\n width: ${MediaQuery.of(context).size.width}',
      // style: TextStyle(
      //     color: Colors.white,
      //     fontSize: 50,
      // ),),
      color: Color(0xFF584CF4),
      height: 120,

      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                'assets/icons/ic-3line.png',
                height: 40,
                width: 40,
                color: Colors.white,
              ),
              const SizedBox(width: 8.0),
              Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Inter',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.only(bottom: 8.0, right: 25),
            child: Row(
              spacing: 4,
              children: [
                Image.asset('assets/icons/ic-search.png', height: 20, width: 20),
                Image.asset('assets/icons/ic-cart.png', height: 20, width: 20),
                Image.asset('assets/icons/ic-favourite.png', height: 20, width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
