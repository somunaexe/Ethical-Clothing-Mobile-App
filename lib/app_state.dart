import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _myCart =
          prefs.getStringList('ff_myCart')?.map((path) => path.ref).toList() ??
              _myCart;
    });
    _safeInit(() {
      _myCartSummary =
          prefs.getStringList('ff_myCartSummary')?.map(double.parse).toList() ??
              _myCartSummary;
    });
    _safeInit(() {
      _likedItems = prefs
              .getStringList('ff_likedItems')
              ?.map((path) => path.ref)
              .toList() ??
          _likedItems;
    });
    _safeInit(() {
      _recentlyViewed = prefs
              .getStringList('ff_recentlyViewed')
              ?.map((path) => path.ref)
              .toList() ??
          _recentlyViewed;
    });
    _safeInit(() {
      _reviewedItems = prefs
              .getStringList('ff_reviewedItems')
              ?.map((path) => path.ref)
              .toList() ??
          _reviewedItems;
    });
    _safeInit(() {
      _fAEnabled = prefs.getBool('ff_fAEnabled') ?? _fAEnabled;
    });
    _safeInit(() {
      _backupCodes = prefs.getStringList('ff_backupCodes') ?? _backupCodes;
    });
    _safeInit(() {
      _recentSearches =
          prefs.getStringList('ff_recentSearches') ?? _recentSearches;
    });
    _safeInit(() {
      _displayType = prefs.getString('ff_displayType') ?? _displayType;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _myCart = [
    FirebaseFirestore.instance.doc('/products/count')
  ];
  List<DocumentReference> get myCart => _myCart;
  set myCart(List<DocumentReference> value) {
    _myCart = value;
    prefs.setStringList('ff_myCart', value.map((x) => x.path).toList());
  }

  void addToMyCart(DocumentReference value) {
    _myCart.add(value);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void removeFromMyCart(DocumentReference value) {
    _myCart.remove(value);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void removeAtIndexFromMyCart(int index) {
    _myCart.removeAt(index);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void updateMyCartAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _myCart[index] = updateFn(_myCart[index]);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  void insertAtIndexInMyCart(int index, DocumentReference value) {
    _myCart.insert(index, value);
    prefs.setStringList('ff_myCart', _myCart.map((x) => x.path).toList());
  }

  List<double> _myCartSummary = [];
  List<double> get myCartSummary => _myCartSummary;
  set myCartSummary(List<double> value) {
    _myCartSummary = value;
    prefs.setStringList(
        'ff_myCartSummary', value.map((x) => x.toString()).toList());
  }

  void addToMyCartSummary(double value) {
    _myCartSummary.add(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeFromMyCartSummary(double value) {
    _myCartSummary.remove(value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromMyCartSummary(int index) {
    _myCartSummary.removeAt(index);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void updateMyCartSummaryAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    _myCartSummary[index] = updateFn(_myCartSummary[index]);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  void insertAtIndexInMyCartSummary(int index, double value) {
    _myCartSummary.insert(index, value);
    prefs.setStringList(
        'ff_myCartSummary', _myCartSummary.map((x) => x.toString()).toList());
  }

  List<DocumentReference> _likedItems = [];
  List<DocumentReference> get likedItems => _likedItems;
  set likedItems(List<DocumentReference> value) {
    _likedItems = value;
    prefs.setStringList('ff_likedItems', value.map((x) => x.path).toList());
  }

  void addToLikedItems(DocumentReference value) {
    _likedItems.add(value);
    prefs.setStringList(
        'ff_likedItems', _likedItems.map((x) => x.path).toList());
  }

  void removeFromLikedItems(DocumentReference value) {
    _likedItems.remove(value);
    prefs.setStringList(
        'ff_likedItems', _likedItems.map((x) => x.path).toList());
  }

  void removeAtIndexFromLikedItems(int index) {
    _likedItems.removeAt(index);
    prefs.setStringList(
        'ff_likedItems', _likedItems.map((x) => x.path).toList());
  }

  void updateLikedItemsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _likedItems[index] = updateFn(_likedItems[index]);
    prefs.setStringList(
        'ff_likedItems', _likedItems.map((x) => x.path).toList());
  }

  void insertAtIndexInLikedItems(int index, DocumentReference value) {
    _likedItems.insert(index, value);
    prefs.setStringList(
        'ff_likedItems', _likedItems.map((x) => x.path).toList());
  }

  String _activePage = 'home';
  String get activePage => _activePage;
  set activePage(String value) {
    _activePage = value;
  }

  bool _likeSearchActive = false;
  bool get likeSearchActive => _likeSearchActive;
  set likeSearchActive(bool value) {
    _likeSearchActive = value;
  }

  bool _searchActive = false;
  bool get searchActive => _searchActive;
  set searchActive(bool value) {
    _searchActive = value;
  }

  List<DocumentReference> _recentlyViewed = [];
  List<DocumentReference> get recentlyViewed => _recentlyViewed;
  set recentlyViewed(List<DocumentReference> value) {
    _recentlyViewed = value;
    prefs.setStringList(
        'ff_recentlyViewed', value.map((x) => x.path).toList());
  }

  void addToRecentlyViewed(DocumentReference value) {
    _recentlyViewed.add(value);
    prefs.setStringList(
        'ff_recentlyViewed', _recentlyViewed.map((x) => x.path).toList());
  }

  void removeFromRecentlyViewed(DocumentReference value) {
    _recentlyViewed.remove(value);
    prefs.setStringList(
        'ff_recentlyViewed', _recentlyViewed.map((x) => x.path).toList());
  }

  void removeAtIndexFromRecentlyViewed(int index) {
    _recentlyViewed.removeAt(index);
    prefs.setStringList(
        'ff_recentlyViewed', _recentlyViewed.map((x) => x.path).toList());
  }

  void updateRecentlyViewedAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _recentlyViewed[index] = updateFn(_recentlyViewed[index]);
    prefs.setStringList(
        'ff_recentlyViewed', _recentlyViewed.map((x) => x.path).toList());
  }

  void insertAtIndexInRecentlyViewed(int index, DocumentReference value) {
    _recentlyViewed.insert(index, value);
    prefs.setStringList(
        'ff_recentlyViewed', _recentlyViewed.map((x) => x.path).toList());
  }

  List<DocumentReference> _recommendations = [];
  List<DocumentReference> get recommendations => _recommendations;
  set recommendations(List<DocumentReference> value) {
    _recommendations = value;
  }

  void addToRecommendations(DocumentReference value) {
    _recommendations.add(value);
  }

  void removeFromRecommendations(DocumentReference value) {
    _recommendations.remove(value);
  }

  void removeAtIndexFromRecommendations(int index) {
    _recommendations.removeAt(index);
  }

  void updateRecommendationsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _recommendations[index] = updateFn(_recommendations[index]);
  }

  void insertAtIndexInRecommendations(int index, DocumentReference value) {
    _recommendations.insert(index, value);
  }

  double _highFilterActive = 0.0;
  double get highFilterActive => _highFilterActive;
  set highFilterActive(double value) {
    _highFilterActive = value;
  }

  List<String> _categoryRecommend = [];
  List<String> get categoryRecommend => _categoryRecommend;
  set categoryRecommend(List<String> value) {
    _categoryRecommend = value;
  }

  void addToCategoryRecommend(String value) {
    _categoryRecommend.add(value);
  }

  void removeFromCategoryRecommend(String value) {
    _categoryRecommend.remove(value);
  }

  void removeAtIndexFromCategoryRecommend(int index) {
    _categoryRecommend.removeAt(index);
  }

  void updateCategoryRecommendAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _categoryRecommend[index] = updateFn(_categoryRecommend[index]);
  }

  void insertAtIndexInCategoryRecommend(int index, String value) {
    _categoryRecommend.insert(index, value);
  }

  String _genderRecommend = '';
  String get genderRecommend => _genderRecommend;
  set genderRecommend(String value) {
    _genderRecommend = value;
  }

  List<DocumentReference> _reviewedItems = [];
  List<DocumentReference> get reviewedItems => _reviewedItems;
  set reviewedItems(List<DocumentReference> value) {
    _reviewedItems = value;
    prefs.setStringList('ff_reviewedItems', value.map((x) => x.path).toList());
  }

  void addToReviewedItems(DocumentReference value) {
    _reviewedItems.add(value);
    prefs.setStringList(
        'ff_reviewedItems', _reviewedItems.map((x) => x.path).toList());
  }

  void removeFromReviewedItems(DocumentReference value) {
    _reviewedItems.remove(value);
    prefs.setStringList(
        'ff_reviewedItems', _reviewedItems.map((x) => x.path).toList());
  }

  void removeAtIndexFromReviewedItems(int index) {
    _reviewedItems.removeAt(index);
    prefs.setStringList(
        'ff_reviewedItems', _reviewedItems.map((x) => x.path).toList());
  }

  void updateReviewedItemsAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _reviewedItems[index] = updateFn(_reviewedItems[index]);
    prefs.setStringList(
        'ff_reviewedItems', _reviewedItems.map((x) => x.path).toList());
  }

  void insertAtIndexInReviewedItems(int index, DocumentReference value) {
    _reviewedItems.insert(index, value);
    prefs.setStringList(
        'ff_reviewedItems', _reviewedItems.map((x) => x.path).toList());
  }

  bool _fAEnabled = false;
  bool get fAEnabled => _fAEnabled;
  set fAEnabled(bool value) {
    _fAEnabled = value;
    prefs.setBool('ff_fAEnabled', value);
  }

  List<String> _backupCodes = [];
  List<String> get backupCodes => _backupCodes;
  set backupCodes(List<String> value) {
    _backupCodes = value;
    prefs.setStringList('ff_backupCodes', value);
  }

  void addToBackupCodes(String value) {
    _backupCodes.add(value);
    prefs.setStringList('ff_backupCodes', _backupCodes);
  }

  void removeFromBackupCodes(String value) {
    _backupCodes.remove(value);
    prefs.setStringList('ff_backupCodes', _backupCodes);
  }

  void removeAtIndexFromBackupCodes(int index) {
    _backupCodes.removeAt(index);
    prefs.setStringList('ff_backupCodes', _backupCodes);
  }

  void updateBackupCodesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _backupCodes[index] = updateFn(_backupCodes[index]);
    prefs.setStringList('ff_backupCodes', _backupCodes);
  }

  void insertAtIndexInBackupCodes(int index, String value) {
    _backupCodes.insert(index, value);
    prefs.setStringList('ff_backupCodes', _backupCodes);
  }

  List<String> _recentSearches = [];
  List<String> get recentSearches => _recentSearches;
  set recentSearches(List<String> value) {
    _recentSearches = value;
    prefs.setStringList('ff_recentSearches', value);
  }

  void addToRecentSearches(String value) {
    _recentSearches.add(value);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void removeFromRecentSearches(String value) {
    _recentSearches.remove(value);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void removeAtIndexFromRecentSearches(int index) {
    _recentSearches.removeAt(index);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void updateRecentSearchesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _recentSearches[index] = updateFn(_recentSearches[index]);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  void insertAtIndexInRecentSearches(int index, String value) {
    _recentSearches.insert(index, value);
    prefs.setStringList('ff_recentSearches', _recentSearches);
  }

  String _displayType = '';
  String get displayType => _displayType;
  set displayType(String value) {
    _displayType = value;
    prefs.setString('ff_displayType', value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
