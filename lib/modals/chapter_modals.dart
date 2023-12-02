class Chapters {

  final int chapter_number;
  final String chapter_summary;
  final String chapter_summary_hindi;
  final int id;
  final String name;
  final String name_meaning;
  final int verses_count;

  Chapters({required this.chapter_number,required this.chapter_summary,required this.chapter_summary_hindi,required this.id,required this.name,required this.name_meaning,required this.verses_count}){}

  factory Chapters.fromMap({required Map data}){
    return Chapters(chapter_number: data['chapter_number'], chapter_summary: data['chapter_summary'], chapter_summary_hindi: data['chapter_summary_hindi'], id: data['id'],name: data['name'], name_meaning: data['name_meaning'], verses_count: data['verses_count']);
  }

}