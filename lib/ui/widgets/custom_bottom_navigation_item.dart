import 'package:flutter/material.dart';

import '../../shared/theme.dart';

class CustomBottomNavigationItem extends StatelessWidget {
  final String imageUrl;
  final bool isSelected;

  const CustomBottomNavigationItem({
    super.key,
    required this.imageUrl,
    this.isSelected =
        false, // defaultnya false, jadi jika kita tidak isi isSelected maka kondisi dia akan false
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                imageUrl,
              ),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? kPrimaryColor : kTransparentColor,
            // jika isSelect true(dipilih) maka tampil warna primary(ungu) jika engga maka transparant
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
