import 'package:flutter/material.dart';

class ListCard extends StatefulWidget {
  const ListCard({super.key});

  @override
  _ListCardState createState() => _ListCardState();
}

class _ListCardState extends State<ListCard> {
  bool _isSelected = false; // Controla si el Card está seleccionado

  void _resetPosition() {
    // Resetea el estado después de una acción
    setState(() {
      _isSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeOut,
      transform: Matrix4.translationValues(
        0,
        _isSelected ? -10 : 0, // Salta 10px hacia arriba si está seleccionado
        0,
      ),
      margin: EdgeInsets.symmetric(
        vertical: _isSelected ? 16.0 : 8.0, // Cambia el margen para el efecto
      ),
      child: Card(
        elevation: 3.0,
        child: ListTile(
          leading: Icon(Icons.person, size: 40, color: Colors.blue),
          title: Text('Título de ListTile'),
          subtitle: Text('Subtítulo descriptivo'),
          trailing: PopupMenuButton<int>(
            icon: Icon(Icons.more_vert),
            onOpened: () {
              // Marca el Card como seleccionado cuando el menú se abre
              setState(() {
                _isSelected = true;
              });
            },
            onSelected: (value) {
              // Realiza acciones según la opción seleccionada
              if (value == 1) {
                print('Editar seleccionado');
              } else if (value == 2) {
                print('Eliminar seleccionado');
              }
              // Resetea la posición del Card
              _resetPosition();
            },
            onCanceled: () {
              // Resetea la posición si el menú se cierra sin seleccionar nada
              _resetPosition();
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            itemBuilder: (context) => [
              PopupMenuItem<int>(
                value: 1,
                child: Row(
                  children: [
                    Icon(Icons.edit, color: Colors.blue),
                    SizedBox(width: 8.0),
                    Text('Editar'),
                  ],
                ),
              ),
              PopupMenuItem<int>(
                value: 2,
                child: Row(
                  children: [
                    Icon(Icons.delete, color: Colors.red),
                    SizedBox(width: 8.0),
                    Text('Eliminar'),
                  ],
                ),
              ),
            ],
          ),
          onTap: () {
            print('Tarjeta presionada');
          },
        ),
      ),
    );
  }
}
