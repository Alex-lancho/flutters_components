import 'package:flutter/material.dart';

class GridCards extends StatelessWidget {
  const GridCards({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      crossAxisSpacing: 8.0,
      mainAxisSpacing: 8.0,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      children: List.generate(4, (index) {
        return Card(
          elevation: 3.0,
          child: Center(
            child: Text('Card ${index + 1}'),
          ),
        );
      }),
    );
  }
}
