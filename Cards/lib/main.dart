import 'package:cards/presentation/widgets/basic_card.dart';
import 'package:cards/presentation/widgets/botton_card.dart';
import 'package:cards/presentation/widgets/expandable_card.dart';
import 'package:cards/presentation/widgets/grid_cards.dart';
import 'package:cards/presentation/widgets/image_card.dart';
import 'package:cards/presentation/widgets/list_card.dart';
import 'package:cards/presentation/widgets/personalized_card.dart';
import 'package:cards/presentation/widgets/slide_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todos los Cards',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Todos los Tipos de Cards'),
        ),
        body: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            // Tarjeta Básica
            BasicCard(),

            SizedBox(height: 16.0),

            // Tarjeta con Imagen
            ImageCard(),

            SizedBox(height: 16.0),

            // Tarjeta con ListTile
            ListCard(),

            SizedBox(height: 16.0),

            // Tarjeta con Botones
            BottonCard(),

            SizedBox(height: 16.0),

            // Tarjeta Expandible
            ExpandableCard(),
            SizedBox(height: 16.0),

            // Tarjetas en Grid
            Text(
              'Tarjetas en Grid:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),

            GridCards(),

            SizedBox(height: 16.0),

            // Tarjeta con Fondo Personalizado
            PersonalizedCard(),

            SizedBox(height: 16.0),

            // Tarjeta Interactiva (Deslizable)
            SlideCard(),
          ],
        ),
      ),
    );
  }
}
