import 'package:flutter/material.dart';

class CustomUnderlying extends StatelessWidget {
  const CustomUnderlying({
    super.key, this.color,
  });
final Color? color;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(right: 7,top: 5),
          height: 2,
          width: 30,
          decoration: BoxDecoration(
              color:color?? Colors.black,
              borderRadius: BorderRadius.circular(5)),
        ),
        ...List.generate(
          3,
          (index) => Transform.rotate(
            angle: 2.5,
            child: Container(
              margin:const EdgeInsets.only(
                left: 5,
              ),
              height: 11,
              width: 2,
              decoration: BoxDecoration(
                color: color?? Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
        ...List.generate(
          3,
          (index) => Transform.rotate(
            angle: -2.5,
            child: Container(
              margin: EdgeInsets.only(
                  right: index == 0 ? 0 : 5, bottom: index == 0 ? 4 : 0),
              height: 11,
              width: 2,
              decoration: BoxDecoration(
                color: color?? Colors.black,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
         Container(
          margin: const EdgeInsets.only(left: 7,top: 5),
          height: 2,
          width: 30,
          decoration: BoxDecoration(
              color: color?? Colors.black,
              borderRadius: BorderRadius.circular(5)),
        ),
      ],
    );
  }
}
