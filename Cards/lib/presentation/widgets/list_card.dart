import 'package:flutter/material.dart';

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3.0,
        child: ListTile(
          leading: Icon(Icons.person, size: 40, color: Colors.blue),
          title: Text('Título de ListTile'),
          subtitle: Text('Subtítulo descriptivo'),
          trailing: Icon(Icons.more_vert),
          onTap: () {
            print('Tarjeta presionada');
          },
        ),
      ),
    );
  }
}
