import 'package:bwa_airplane/shared/theme.dart';
import 'package:flutter/material.dart';

class SeatItem extends StatelessWidget {
  // TODO : 0. AVAILABLE, 1. SELECTED, 2. UNAVAILABLE
  final int statusSeat;

  const SeatItem({
    super.key,
    required this.statusSeat,
  });

  @override
  Widget build(BuildContext context) {
    backgroundColor() {
      switch (statusSeat) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    borderColor() {
      switch (statusSeat) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnavailableColor;
        default:
          return kUnavailableColor;
      }
    }

    childText() {
      switch (statusSeat) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: whiteTextStyle.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: backgroundColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          width: 2,
          color: borderColor(),
        ),
      ),
      child: childText(),
    );
  }
}
