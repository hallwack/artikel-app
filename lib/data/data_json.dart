List category = [
  Category(name: "All", isSelected: false),
  Category(name: "Sport", isSelected: false),
  Category(name: "News", isSelected: false),
  Category(name: "Lifestyle", isSelected: false),
  Category(name: "Healty", isSelected: false),
  Category(name: "Entertainment", isSelected: false),
];

class Category {
  String name;
  bool isSelected;

  Category({required this.name, required this.isSelected});
}
