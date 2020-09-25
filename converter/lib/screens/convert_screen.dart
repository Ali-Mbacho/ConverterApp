import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../models/unit.dart';

/// Converter screen where users can input amounts to convert.

class ConvertScreen extends StatelessWidget {
  final Color color;
  final List<Unit> units;

  /// This [ConverterRoute] requires the color and units to not be null
  const ConvertScreen({
    @required this.color,
    @required this.units,
  }) : assert(units != null);

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = units.map((Unit unit) {
      return Container(
        color: color,
        margin: EdgeInsets.all(8.0),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              unit.name,
              style: Theme.of(context).textTheme.headline5,
            ),
            Text(
              'Conversion:${unit.conversion}',
              style: Theme.of(context).textTheme.subtitle1,
            )
          ],
        ),
      );
    }).toList();
    return ListView(
      children: unitWidgets,
    );
  }
}
