class Translation{

  final String description;

  Translation({required this.description}){}

  factory Translation.fromMap({required Map Data}){
    return Translation(description: Data['description']);
  }

}