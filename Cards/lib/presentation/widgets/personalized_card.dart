import 'package:flutter/material.dart';

class PersonalizedCard extends StatelessWidget {
  const PersonalizedCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3.0,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
            ),
          ),
          padding: EdgeInsets.all(16.0),
          child: Text(
            'Tarjeta con Fondo Personalizado',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
