import 'package:flutter/material.dart';

import 'category_button.dart';

class MenuCategories extends StatelessWidget {
  const MenuCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Flexible(
          child: CategoryButton(
            imagePath: null,
            label: 'Kartu',
            onPressed: () {
            },
          ),
        ),
        Flexible(
          child: CategoryButton(
            imagePath: null,
            label: 'Nota',
            onPressed: () {
            },
          ),
        ),
        Flexible(
          child: CategoryButton(
            imagePath: null,
            label: 'Surat',
            onPressed: () {
            },
          ),
        ),
      ],
    );
  }
}
