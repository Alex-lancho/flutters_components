import 'package:flutter/material.dart';

class ExpandableCard extends StatefulWidget {
  @override
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isExpanded = !_isExpanded;
        });
      },
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        height: _isExpanded ? 200 : 100,
        width: double.infinity,
        child: Card(
          elevation: 3.0,
          child: Center(
            child: Text(
              _isExpanded ? 'Contenido expandido' : 'Contraído',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ),
    );
  }
}
