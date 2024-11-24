import 'package:flutter/material.dart';

class SlideCard extends StatelessWidget {
  const SlideCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      onDismissed: (direction) {
        print('Tarjeta eliminada');
      },
      child: Card(
        elevation: 3.0,
        child: ListTile(
          title: Text('Tarjeta Deslizable'),
        ),
      ),
    );
  }
}
