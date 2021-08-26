List category = [
  Category(name: "All", isSelected: false),
  Category(name: "Sport", isSelected: false),
  Category(name: "News", isSelected: false),
  Category(name: "Lifestyle", isSelected: false),
  Category(name: "Healty", isSelected: false),
  Category(name: "Entertainment", isSelected: false),
];

List articles = [];

class Category {
  String name;
  bool isSelected;

  Category({required this.name, required this.isSelected});
}

class Article {
  String? title;
  String? author;
  int? likes;
  String? post;
  int? date;

  Article({this.title, this.author, this.likes, this.post, this.date});
}
