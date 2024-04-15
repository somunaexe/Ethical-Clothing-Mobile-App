import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsRecord extends FirestoreRecord {
  ProductsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "coverImage" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "pid" field.
  DocumentReference? _pid;
  DocumentReference? get pid => _pid;
  bool hasPid() => _pid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "totalStars" field.
  int? _totalStars;
  int get totalStars => _totalStars ?? 0;
  bool hasTotalStars() => _totalStars != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "material" field.
  String? _material;
  String get material => _material ?? '';
  bool hasMaterial() => _material != null;

  // "colour" field.
  String? _colour;
  String get colour => _colour ?? '';
  bool hasColour() => _colour != null;

  void _initializeFields() {
    _coverImage = snapshotData['coverImage'] as String?;
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _pid = snapshotData['pid'] as DocumentReference?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _totalStars = castToType<int>(snapshotData['totalStars']);
    _category = snapshotData['category'] as String?;
    _gender = snapshotData['gender'] as String?;
    _material = snapshotData['material'] as String?;
    _colour = snapshotData['colour'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('products');

  static Stream<ProductsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductsRecord.fromSnapshot(s));

  static Future<ProductsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductsRecord.fromSnapshot(s));

  static ProductsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductsRecordData({
  String? coverImage,
  String? name,
  String? description,
  double? price,
  DocumentReference? pid,
  DateTime? createdTime,
  int? totalStars,
  String? category,
  String? gender,
  String? material,
  String? colour,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'coverImage': coverImage,
      'name': name,
      'description': description,
      'price': price,
      'pid': pid,
      'created_time': createdTime,
      'totalStars': totalStars,
      'category': category,
      'gender': gender,
      'material': material,
      'colour': colour,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductsRecordDocumentEquality implements Equality<ProductsRecord> {
  const ProductsRecordDocumentEquality();

  @override
  bool equals(ProductsRecord? e1, ProductsRecord? e2) {
    return e1?.coverImage == e2?.coverImage &&
        e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.pid == e2?.pid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.totalStars == e2?.totalStars &&
        e1?.category == e2?.category &&
        e1?.gender == e2?.gender &&
        e1?.material == e2?.material &&
        e1?.colour == e2?.colour;
  }

  @override
  int hash(ProductsRecord? e) => const ListEquality().hash([
        e?.coverImage,
        e?.name,
        e?.description,
        e?.price,
        e?.pid,
        e?.createdTime,
        e?.totalStars,
        e?.category,
        e?.gender,
        e?.material,
        e?.colour
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductsRecord;
}
