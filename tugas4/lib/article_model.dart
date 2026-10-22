class Article {
  final String title;
  final String description;
  final String urlToImage;

  Article({
    required this.title,
    required this.description,
    required this.urlToImage,
  });

  factory Article.fromJSON(Map<String, dynamic> json) {
    return Article(
      title: json['title'] as String? ?? 'Tidak ada judul',
      description: json['description'] as String? ?? 'Tidak ada deskripsi.',
      urlToImage: json['urlToImage'] as String? ?? '',
    );
  }
}
