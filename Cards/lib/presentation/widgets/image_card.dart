import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  const ImageCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        elevation: 3.0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(15.0)),
              child: Image.network(
                'https://media.istockphoto.com/id/1409236261/es/foto/alimentaci%C3%B3n-saludable-antecedentes-de-alimentaci%C3%B3n-saludable-frutas-verduras-bayas.jpg?s=612x612&w=0&k=20&c=HV0f9edLCsmHyms0uBy1yQwJzdWkVGLYzyKeA65qEDE=',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text('Tarjeta con Imagen'),
            ),
          ],
        ),
      ),
    );
  }
}
