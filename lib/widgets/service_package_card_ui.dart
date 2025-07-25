import 'package:bike_sharing_app/utils/text_style.dart';
import 'package:flutter/material.dart';

class ServicePackageCardUi extends StatelessWidget {

  final String bgImageUrl;
  final String serviceName;
  final int servicePrice;
  final int prevPrice;

  const ServicePackageCardUi({
    super.key,
    required this.bgImageUrl,
    required this.serviceName,
    required this.servicePrice,
    required this.prevPrice
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 112,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(bgImageUrl,
            height: 90,
            width: 130,
            fit: BoxFit.cover,
          ),

          Text(serviceName,
            style: AppTextStyle.subHeading,
          ),

          Row(
            spacing: 2.0,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('₹ $servicePrice',
                style: AppTextStyle.subHeading,
              ),
              Text('₹ $prevPrice',
                style: AppTextStyle.miniSubTextWithLineThrough,
              ),


            ],
          ),
          Text('10% Off',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 10,
              color: Color(0xFF584CF4),
            ),
          ),
        ],
      ),
    );
  }
}