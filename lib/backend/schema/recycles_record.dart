import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class RecyclesRecord extends FirestoreRecord {
  RecyclesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "recycler" field.
  DocumentReference? _recycler;
  DocumentReference? get recycler => _recycler;
  bool hasRecycler() => _recycler != null;

  // "created_date" field.
  DateTime? _createdDate;
  DateTime? get createdDate => _createdDate;
  bool hasCreatedDate() => _createdDate != null;

  // "approved" field.
  bool? _approved;
  bool get approved => _approved ?? false;
  bool hasApproved() => _approved != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  void _initializeFields() {
    _image = snapshotData['image'] as String?;
    _name = snapshotData['name'] as String?;
    _recycler = snapshotData['recycler'] as DocumentReference?;
    _createdDate = snapshotData['created_date'] as DateTime?;
    _approved = snapshotData['approved'] as bool?;
    _description = snapshotData['description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('recycles');

  static Stream<RecyclesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RecyclesRecord.fromSnapshot(s));

  static Future<RecyclesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RecyclesRecord.fromSnapshot(s));

  static RecyclesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RecyclesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RecyclesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RecyclesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RecyclesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RecyclesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRecyclesRecordData({
  String? image,
  String? name,
  DocumentReference? recycler,
  DateTime? createdDate,
  bool? approved,
  String? description,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'image': image,
      'name': name,
      'recycler': recycler,
      'created_date': createdDate,
      'approved': approved,
      'description': description,
    }.withoutNulls,
  );

  return firestoreData;
}

class RecyclesRecordDocumentEquality implements Equality<RecyclesRecord> {
  const RecyclesRecordDocumentEquality();

  @override
  bool equals(RecyclesRecord? e1, RecyclesRecord? e2) {
    return e1?.image == e2?.image &&
        e1?.name == e2?.name &&
        e1?.recycler == e2?.recycler &&
        e1?.createdDate == e2?.createdDate &&
        e1?.approved == e2?.approved &&
        e1?.description == e2?.description;
  }

  @override
  int hash(RecyclesRecord? e) => const ListEquality().hash([
        e?.image,
        e?.name,
        e?.recycler,
        e?.createdDate,
        e?.approved,
        e?.description
      ]);

  @override
  bool isValidKey(Object? o) => o is RecyclesRecord;
}
