class ApiConst {
  static const String apiKey = 'd169f24b5f6e41a39372e540fb6485d2';
  static const String topNews =
      'https://newsapi.org/v2/top-headlines?country=us&apiKey=$apiKey';
  static String searchNews(String? title) =>
      'https://newsapi.org/v2/everything?q=${title ?? 'flutter'}&apiKey=$apiKey';
  static const String image =
      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN7c9YNU8-BL7li7aelS0ij4SzIY27-U0tvQ&usqp=CAU';
}
