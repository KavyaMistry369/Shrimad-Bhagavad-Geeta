class Verses{

  final int chapter_number;
  final int verse_number;
  final String title;
  final String text;
  final String word_meanings;

  Verses({required this.chapter_number,required this.title,required this.text,required this.verse_number,required this.word_meanings}){}

  factory Verses.fromMap({required Map data}){
    return Verses(chapter_number: data['chapter_number'], title: data['title'], text: data['text'], verse_number: data['verse_number'], word_meanings: data['word_meanings']);
  }

}