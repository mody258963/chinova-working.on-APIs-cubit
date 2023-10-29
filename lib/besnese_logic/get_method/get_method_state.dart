class GetMethodState {
	final bool isLoading;
	final String? error;
	  
	const GetMethodState({
		this.isLoading = false,
		this.error,
	});
	  
	GetMethodState copyWith({
		bool? isLoading,
		String? error,
	}) {
		return GetMethodState(
			isLoading: isLoading ?? this.isLoading,
			error: error ?? this.error,
		);
	}
}
