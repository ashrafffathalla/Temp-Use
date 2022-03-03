abstract class NewsState{}
class NewsInitialState extends NewsState{}

class NewsBottomNavState extends NewsState{}

class NewsGetBusinessLoadingState extends NewsState{}

class NewsGetBusinessSuccessState extends NewsState{}

class NewsGetBusinessErrorState extends NewsState{
  final String error;
  NewsGetBusinessErrorState(this.error);
}
