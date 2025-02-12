import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'layout_builder_state.dart';

class LayoutBuilderCubit extends Cubit<LayoutBuilderState> {
  LayoutBuilderCubit() : super(LayoutBuilderInitial());
  void buildLayoutFun({required double width}) {
    if (width > 900) {
      emit(LayoutBuilderDesktop());
    } else if (width < 600) {
      emit(LayoutBuilderMobile());
    } else {
      emit(LayoutBuilderTablet());
    }
  }
}
