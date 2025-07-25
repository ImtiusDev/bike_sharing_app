import 'package:flutter/material.dart';
import 'package:bike_sharing_app/utils/text_style.dart';

class EventsUiDesign extends StatelessWidget {
  final String backgroundImagePath;
  final String eventName;
  const EventsUiDesign({
    super.key,
    required this.backgroundImagePath,
    required this.eventName,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      width: 145,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                height: 95,
                // width: 145,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  backgroundImagePath,
                  fit: BoxFit.cover,
                ),
              ),
      
              // user avatar 1,
              Positioned(
                bottom: 8.0,
                left: 8.0,
                child: Container(
                  width: 35.0,
                  height: 35.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2.0),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/event_participants (2).png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
      
              // user avatar 2,
              Positioned(
                bottom: 8.0,
                left: 31.0,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2.0),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/event_participants (3).png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
      
              // user avatar 3,
              Positioned(
                bottom: 8.0,
                left: 50.0,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2.0),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/event_participants (1).png',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
      
              // (+x) more avatar badge
              Positioned(
                bottom: 8.0,
                left: 70,
                child: Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xFF584CF4),
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2.0),
                  ),
                  child: Center(
                    child: Text(
                      '+12',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w600,
                        fontSize: 12,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Text(eventName, style: AppTextStyle.subHeading),
        ],
      ),
    );
  }
}
