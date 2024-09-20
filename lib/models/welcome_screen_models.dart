class WelcomeModel {
  final String firsttext;
  final String secondtext;
  final String discription;
  final String img;

  WelcomeModel({
    required this.firsttext,
    required this.secondtext,
    required this.discription,
    required this.img,
  });
}

List<WelcomeModel> welcomescreendata = [
  WelcomeModel(
      firsttext: 'Travel',
      secondtext: 'Roads',
      discription:
          'Lorem Ipsum is simply dummy t industry. Lorem Ipsum hadustry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      img: 'assets/1.jpg'),
  WelcomeModel(
      firsttext: 'Enjoy',
      secondtext: 'Seas',
      discription:
          'Lorem Ipsum is simply dummy  typesetting industry.  been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      img: 'assets/2.jpg'),
  WelcomeModel(
      firsttext: 'Discover',
      secondtext: 'Mountains',
      discription:
          'Lorem Ipsum is simply dummy te typesetting Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.',
      img: 'assets/3.jpg'),
];
