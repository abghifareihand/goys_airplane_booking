import 'package:bwa_airplane/models/destination_model.dart';
import 'package:bwa_airplane/services/destination_service.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());

  void fetchDestinations() async {
    try {
      emit(DestinationLoading());
      List<DestinationModel> destinations =
          await DestinationService().fetchDestinations();

      emit(DestinationSuccess(destinations));
      //print('Fetch destinations $destinations');
    } catch (e) {
      emit(DestinationFailed(e.toString()));
    }
  }
}
