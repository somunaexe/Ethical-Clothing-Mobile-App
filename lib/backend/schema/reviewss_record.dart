import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ReviewssRecord extends FirestoreRecord {
  ReviewssRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "rater" field.
  DocumentReference? _rater;
  DocumentReference? get rater => _rater;
  bool hasRater() => _rater != null;

  // "rating" field.
  int? _rating;
  int get rating => _rating ?? 0;
  bool hasRating() => _rating != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "product" field.
  DocumentReference? _product;
  DocumentReference? get product => _product;
  bool hasProduct() => _product != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "subject" field.
  String? _subject;
  String get subject => _subject ?? '';
  bool hasSubject() => _subject != null;

  void _initializeFields() {
    _rater = snapshotData['rater'] as DocumentReference?;
    _rating = castToType<int>(snapshotData['rating']);
    _description = snapshotData['description'] as String?;
    _product = snapshotData['product'] as DocumentReference?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _subject = snapshotData['subject'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('reviewss');

  static Stream<ReviewssRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ReviewssRecord.fromSnapshot(s));

  static Future<ReviewssRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ReviewssRecord.fromSnapshot(s));

  static ReviewssRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ReviewssRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ReviewssRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ReviewssRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ReviewssRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ReviewssRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createReviewssRecordData({
  DocumentReference? rater,
  int? rating,
  String? description,
  DocumentReference? product,
  DateTime? createdDate,
  String? subject,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rater': rater,
      'rating': rating,
      'description': description,
      'product': product,
      'created_date': createdDate,
      'subject': subject,
    }.withoutNulls,
  );

  return firestoreData;
}

class ReviewssRecordDocumentEquality implements Equality<ReviewssRecord> {
  const ReviewssRecordDocumentEquality();

  @override
  bool equals(ReviewssRecord? e1, ReviewssRecord? e2) {
    return e1?.rater == e2?.rater &&
        e1?.rating == e2?.rating &&
        e1?.description == e2?.description &&
        e1?.product == e2?.product &&
        e1?.createdDate == e2?.createdDate &&
        e1?.subject == e2?.subject;
  }

  @override
  int hash(ReviewssRecord? e) => const ListEquality().hash([
        e?.rater,
        e?.rating,
        e?.description,
        e?.product,
        e?.createdDate,
        e?.subject
      ]);

  @override
  bool isValidKey(Object? o) => o is ReviewssRecord;
}
