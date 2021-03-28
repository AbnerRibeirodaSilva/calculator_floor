import '../core/constants.dart';
import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  static void show(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => ResultDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(kResult),
      content: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildTile(24.0, kAmountFloor),
            _buildTile(10.0, kAmountFloorToFooter),
            _buildTile(34.0, kTotalFloor),
            Divider(),
            _buildTile(8.64, kAreaWithoutFooter),
            _buildTile(12.24, kAreaWithFooter),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(double value, String description) {
    return ListTile(
      title: Text(value.toStringAsFixed(kDecimalPrecision)),
      subtitle: Text(description),
    );
  }
}
