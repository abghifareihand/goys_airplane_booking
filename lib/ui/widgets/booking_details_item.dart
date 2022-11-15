import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class BookingDetailsItem extends StatelessWidget {
  const BookingDetailsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: const EdgeInsets.only(right: 6),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/icon_check.png'),
              ),
            ),
          ),
          Text(
            'Traveler',
            style: blackTextStyle,
          ),
          Spacer(),
          Text(
            '2 Person',
            style: blackTextStyle.copyWith(
              fontWeight: bold,
            ),
          ),
        ],
      ),
    );
  }
}
