import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CorouselPageView extends StatefulWidget {
final List spidy;
int currentPage = 0;
CorouselPageView(this.spidy);
  @override
  _CorouselPageViewState createState() => _CorouselPageViewState();
}

class _CorouselPageViewState extends State<CorouselPageView> { 

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        AnimatedSwitcher(
          duration: Duration(milliseconds: 600),
          child: Container(
            key: ValueKey(widget.spidy[widget.currentPage]),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.spidy[widget.currentPage]),
                    fit: BoxFit.cover
                  )
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 12,
                sigmaY: 12
              ),
              child: Container(color: Colors.black.withOpacity(0.2),),
            ),
          ),
        ),
        FractionallySizedBox(
        heightFactor: 0.55,
        child: FractionallySizedBox(
          widthFactor: 0.8,
          child: PageView.builder(
            onPageChanged: (int index) {
              setState(() {
                widget.currentPage = index;
              });
            },
            itemCount: widget.spidy.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.spidy[index]),
                    fit: BoxFit.cover
                  ),
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 5
                    )
                  ]
                ),
              );
            }
            ),
        ),
      ),
      ]
    );
  }
}