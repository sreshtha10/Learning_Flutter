import 'package:first_flutter_app/quote.dart';
import 'package:flutter/material.dart';

void main()  => runApp(const MaterialApp(
  home: QuoteList(),
));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote("Quote 1", "Author 1"),
    Quote("Quote 2", "Author 2"),
    Quote("Quote 3", "Author 3")
  ];

  Widget quoteTemplate(quote){
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
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey[800]
              ),
            )
          ],
        ),
      ),
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children:quotes.map((it) => quoteTemplate(it)).toList()
      ),
    );
  }
}
