part of 'notes_bloc.dart';

@immutable
abstract class NotesEvent {}

// Event untuk memulai pengenalan suara
class StartListening extends NotesEvent {}

class MatchVoiceWithTitle extends NotesEvent {
  final String spokenText;

  MatchVoiceWithTitle(this.spokenText);
}
