part of 'layout_builder_cubit.dart';

@immutable
sealed class LayoutBuilderState {}

final class LayoutBuilderInitial extends LayoutBuilderState {}

final class LayoutBuilderMobile extends LayoutBuilderState {}

final class LayoutBuilderTablet extends LayoutBuilderState {}

final class LayoutBuilderDesktop extends LayoutBuilderState {}
