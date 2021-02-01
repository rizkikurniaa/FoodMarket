part of 'pages.dart';

class SuccessSignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "Yeay! Completed",
        subTitle: "Now you are able to order\nsome foods as a self reward",
        picturePath: "assets/food_wishes.png",
        buttonTitle1: "Find Foods",
        buttonTap1: () {},
      ),
    );
  }
}
