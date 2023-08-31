part of 'notes_bloc.dart';

@immutable
abstract class NotesState {
  // ... state lainnya
}

class NotesInitial extends NotesState {}

class AppInitial extends NotesState {}

class NavigationBarChanged extends NotesState {}

class NoteCreate extends NotesState {}

class PrefsChanged extends NotesState {}

class OnSearched extends NotesState {}

class ViewChanged extends NotesState {}

class ColorsChanged extends NotesState {}

class AudioPlayed extends NotesState {}

class OnDurationChanged extends NotesState {}

class OnPositionChanged extends NotesState {}

class OnRecord extends NotesState {}

class OnChanged extends NotesState {}

class OnDelete extends NotesState {}

class ColorsHarmonized extends NotesState {}

// State ketika pengenalan suara dimulai
class OnListeningKey extends NotesState {}

class OnListeningCompleted extends NotesState {}

// State ketika proses mencocokkan suara dengan judul catatan
class VoiceMatched extends NotesState {
  final double similarityScore; // Nilai kemiripan antara suara dan judul
  final String matchedTitle; // Judul catatan yang paling cocok

  VoiceMatched(this.similarityScore, this.matchedTitle);
}
