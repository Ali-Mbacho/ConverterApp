import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import '../models/unit.dart';
import '../wiggets/category.dart';

const _padding = EdgeInsets.all(16.0);

/// Converter screen where users can input amounts to convert.

class ConvertScreen extends StatefulWidget {
  final Color color;
  final List<Unit> units;

  /// This [ConverterRoute] requires the color and units to not be null
  const ConvertScreen({
    @required this.color,
    @required this.units,
  })  : assert(units != null),
        assert(units != null);

  @override
  _ConvertScreenState createState() => _ConvertScreenState();
}

class _ConvertScreenState extends State<ConvertScreen> {
  //Clean up conversion, trim trailing zeros ie 2.30 to 2.3
  String _format(double conversion) {
    var outputNum = conversion.toStringAsPrecision(7);
    if (outputNum.contains('.') && outputNum.endsWith('0')) {
      var i = outputNum.length - 1;
      while (outputNum[i] == '0') {
        i -= 1;
      }
      outputNum = outputNum.substring(0, i + 1);
    }
    if (outputNum.endsWith('.')) {
      return outputNum.substring(0, outputNum.length - 1);
    }
    return outputNum;
  }

  @override
  Widget build(BuildContext context) {
    // Here is just a placeholder for a list of mock units
    final unitWidgets = widget.units.map((Unit unit) {
      return Container(
        color: widget.color,
        margin: EdgeInsets.all(8.0),
        padding: _padding,
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
