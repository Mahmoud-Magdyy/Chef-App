
sealed class ProfileState {}

final class ProfileInitial extends ProfileState {}
final class GetChefDataLoadingState extends ProfileState {}
final class GetChefDataSuccessState extends ProfileState {}
final class GetChefDataErrorState extends ProfileState {}
