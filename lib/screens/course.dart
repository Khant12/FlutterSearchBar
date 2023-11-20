class Course {
  final String title;
  final String urlImage;

  const Course({
    required this.title,
    required this.urlImage,
  });
}

const categories = [
  Course(
      title: 'Java Programming',
      urlImage:
          'https://upload.wikimedia.org/wikipedia/en/thumb/3/30/Java_programming_language_logo.svg/800px-Java_programming_language_logo.svg.png'),
  Course(
    title: 'Website Development',
    urlImage:
        'https://img.freepik.com/free-photo/person-front-computer-working-html_23-2150040428.jpg',
  ),
  Course(
      title: 'C++',
      urlImage:
          'https://img.freepik.com/premium-photo/programming-code-abstract-technology-background_272306-158.jpg'),
  Course(
      title: 'Python',
      urlImage:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Python.svg/640px-Python.svg.png'),
  Course(
      title: 'Graphic Design',
      urlImage:
          'https://img.freepik.com/free-vector/design-tools-concept-illustration_114360-1227.jpg'),
  Course(
      title: 'Arts',
      urlImage:
          'https://img.freepik.com/free-photo/woman-art-school-wearing-apron-drawing-easel_1157-46856.jpg'),
  Course(
      title: 'Mobile Development',
      urlImage:
          'https://img.freepik.com/premium-vector/man-with-laptop-application-development-illustration-ui-ux-designer-mobile-apps-developer-vector-flat-design-background_128772-1254.jpg'),
  Course(
      title: 'UI/UX',
      urlImage:
          'https://img.freepik.com/free-vector/mobile-ui-ux-concept-illustration_114360-11697.jpg'),
  Course(
      title: 'Music',
      urlImage:
          'https://img.freepik.com/free-photo/woman-playing-guitar-home-during-quarantine_23-2149374507.jpg'),
  Course(
      title: 'Business',
      urlImage:
          'https://img.freepik.com/premium-photo/group-young-asian-business-team-creative-businesspeople-coworker-office-meeting-presentation-analysis-graph-company-financial_533890-2561.jpg'),
  Course(
      title: 'Laravel',
      urlImage:
          'https://www.e-spincorp.com/wp-content/uploads/2020/06/laravel-php-framework.jpg'),
  Course(
      title: 'Marketing',
      urlImage:
          'https://img.freepik.com/free-photo/man-suit-standing-office-with-clipboard-pointing-poster-with-words_1098-17121.jpg'),
];
