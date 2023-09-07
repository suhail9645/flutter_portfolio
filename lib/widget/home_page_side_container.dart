
import 'package:flutter/material.dart';

import '../core/const/widget.dart';

class HomePageSideContainer extends StatelessWidget {
  const HomePageSideContainer({
    super.key,
    required this.linkImageList,
  });

  final List<String> linkImageList;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: double.infinity,
      width: 100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(
                  color: const Color.fromARGB(
                      255, 3, 50, 89),
                  width: 2.5),
            ),
            child: const Center(
              child: Icon(
                Icons.menu,
                size: 22,
                color: Color.fromARGB(255, 3, 50, 89),
              ),
            ),
          ),
          spaceForHeight20,
          const RotatedBox(
            quarterTurns: 1,
            child: Text(
              'Follow Me',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w500),
            ),
          ),
          spaceForHeight20,
          Container(
            height: 50,
            width: 2,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.black),
          ),
          spaceForHeight20,
          Column(
            children: List.generate(
                4,
                (index) => Container(
                     margin:const EdgeInsets.only(bottom: 10),
                      height: 28,
                      width: 28,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                              linkImageList[index]),
                        ),
                      ),
                    )),
          )
        ],
      ),
    );
  }
}
