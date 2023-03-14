import 'package:flutter/material.dart';
import 'quote.dart';
class QuateCard extends StatelessWidget {
  final Quoteclass quote;
  final  Function delete;
   QuateCard({required this.quote,  required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 0),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                quote.text,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 6),
            Center(
              child: Text(
                quote.author,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[800],
                ),
              ),
            ),
            const SizedBox(height: 8),
            MaterialButton(
              onPressed: delete(),
              child: Row(
                children: const [
                  Icon(Icons.delete),
                  SizedBox(width: 1),
                  Text('delete'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}