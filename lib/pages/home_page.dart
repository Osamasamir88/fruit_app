import 'package:flutter/material.dart';
import 'package:fruit/widgets/banner_slider.dart';
import 'package:fruit/widgets/categorys_slider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
          child: SizedBox(
            height: 73,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 206,
                  height: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset('assets/images/bike.png',width: 24,height: 24,),
                      Image.asset('assets/images/61 Hopper street...png',width: 138,height: 19,),
                      Image.asset('assets/images/Icons.png',width: 24,height: 24,),
                    ],
                  ),
                ),
            
                Image.asset('assets/images/sala.png',width: 24,height: 24,),
              ],
            ),
          ),
        ),
      ),
     
      body: Column(
        children: [
          BannerSlider(),

          CategorysSlider(),
        ],
      ),
    );
  }
}