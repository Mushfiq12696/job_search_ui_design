class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;

  Job(this.company, this.logoUrl, this.isMark, this.location, this.req,
      this.time, this.title);

  static List<Job> generateJobs() {
    return [
      Job(
          'Google LLc',
          "assets/images/google_logo.png",
          false,
          "417 Marion, New York\nUnited States",
          [
            'Creative with an eye for shap and colour',
            'Understand different materials and production method',
            'Interested in the way people choose and use product',
            'Have technical, practical and scientific knowledge and ability'
          ],
          'Full time',
          "Principle Product Design"),
      Job(
          'Airbnb inc',
          'assets/images/airbnb_logo.png',
          true,
          '50 harminia Stravenue\nCanada',
          [
            'Creative with an eye for shap and colour',
            'Understand different materials and production method',
            'Interested in the way people choose and use product',
            'Have technical, practical and scientific knowledge and ability'
          ],
          'Full time',
          'VP Business Intelegence'),
      Job(
          'Google LLc',
          "assets/images/google_logo.png",
          false,
          "417 Marion, New York\nUnited States",
          [
            'Creative with an eye for shap and colour',
            'Understand different materials and production method',
            'Interested in the way people choose and use product',
            'Have technical, practical and scientific knowledge and ability'
          ],
          'Full time',
          "Principle Product Design"),
      Job(
          'Airbnb inc',
          'assets/images/airbnb_logo.png',
          true,
          '50 harminia Stravenue\nCanada',
          [
            'Creative with an eye for shap and colour',
            'Understand different materials and production method',
            'Interested in the way people choose and use product',
            'Have technical, practical and scientific knowledge and ability'
          ],
          'Full time',
          'VP Business Intelegence')
    ];
  }
}
