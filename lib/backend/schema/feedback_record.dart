import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class FeedbackRecord extends FirestoreRecord {
  FeedbackRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "date_created" field.
  DateTime? _dateCreated;
  DateTime? get dateCreated => _dateCreated;
  bool hasDateCreated() => _dateCreated != null;

  // "details" field.
  String? _details;
  String get details => _details ?? '';
  bool hasDetails() => _details != null;

  // "owner" field.
  DocumentReference? _owner;
  DocumentReference? get owner => _owner;
  bool hasOwner() => _owner != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "attachment" field.
  String? _attachment;
  String get attachment => _attachment ?? '';
  bool hasAttachment() => _attachment != null;

  void _initializeFields() {
    _dateCreated = snapshotData['date_created'] as DateTime?;
    _details = snapshotData['details'] as String?;
    _owner = snapshotData['owner'] as DocumentReference?;
    _type = snapshotData['type'] as String?;
    _attachment = snapshotData['attachment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FeedbackRecord.fromSnapshot(s));

  static Future<FeedbackRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FeedbackRecord.fromSnapshot(s));

  static FeedbackRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FeedbackRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FeedbackRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FeedbackRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FeedbackRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FeedbackRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFeedbackRecordData({
  DateTime? dateCreated,
  String? details,
  DocumentReference? owner,
  String? type,
  String? attachment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'date_created': dateCreated,
      'details': details,
      'owner': owner,
      'type': type,
      'attachment': attachment,
    }.withoutNulls,
  );

  return firestoreData;
}

class FeedbackRecordDocumentEquality implements Equality<FeedbackRecord> {
  const FeedbackRecordDocumentEquality();

  @override
  bool equals(FeedbackRecord? e1, FeedbackRecord? e2) {
    return e1?.dateCreated == e2?.dateCreated &&
        e1?.details == e2?.details &&
        e1?.owner == e2?.owner &&
        e1?.type == e2?.type &&
        e1?.attachment == e2?.attachment;
  }

  @override
  int hash(FeedbackRecord? e) => const ListEquality()
      .hash([e?.dateCreated, e?.details, e?.owner, e?.type, e?.attachment]);

  @override
  bool isValidKey(Object? o) => o is FeedbackRecord;
}
