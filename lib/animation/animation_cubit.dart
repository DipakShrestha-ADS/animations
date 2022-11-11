import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnimationCubit extends Cubit<AnimationState> {
  AnimationCubit() : super(AnimationState());

  void animate(Animation<double> animation) {
    emit(
      AnimationState(
        animation: animation,
        height: animation.value,
        width: animation.value,
      ),
    );
  }
}

class AnimationState {
  Animation? animation;
  double? height;
  double? width;
  AnimationState({
    this.animation,
    height = 100,
    width = 100,
  });
}
