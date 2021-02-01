part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: "You've Made Order",
        subTitle: "Just stay at home while we are\npreparing your best foods",
        picturePath: "assets/bike.png",
        buttonTitle1: "Order Other Foods",
        buttonTap1: () {},
        buttonTitle2: "View My Order",
        buttonTap2: () {},
      ),
    );
  }
}
