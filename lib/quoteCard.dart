import 'package:first_flutter_app/quote.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {

  final Quote quote;
  final dynamic delete;

  const QuoteCard({
    Key? key,
    required this.quote,
    required this.delete
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(
        margin: const EdgeInsets.fromLTRB(16,16,16,0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              quote.text,
              style: TextStyle(
                  fontSize: 18.0,
                  color:Colors.grey[600]
              ),
            ),
            const SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[800]
              ),
            ),
            const SizedBox(height: 8.0),
            ElevatedButton(
              onPressed: delete ,
              child: const Text("Delete Quote")
            )
          ],
        ),
      ),
    );
  }
}