import 'package:flutter/material.dart';

class BottonCard extends StatelessWidget {
  const BottonCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3.0,
        child: Column(
          children: [
            ListTile(
              title: Text('Tarjeta con Botones'),
              subtitle: Text('Descripción breve de la tarjeta.'),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('ACCIÓN 1'),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text('ACCIÓN 2'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
