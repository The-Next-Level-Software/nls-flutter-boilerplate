class Resource<T> {
  final T? data;
  final String? message;
  final ResourceState state;

  const Resource._({
    this.data,
    this.message,
    required this.state,
  });

  factory Resource.initial() => const Resource._(state: ResourceState.initial);

  factory Resource.loading({T? data}) =>
      Resource._(state: ResourceState.loading, data: data);

  factory Resource.success({required T data}) =>
      Resource._(state: ResourceState.success, data: data);

  factory Resource.error({String message = 'Something went wrong'}) =>
      Resource._(state: ResourceState.error, message: message);

  @override
  String toString() =>
      'Resource(state: $state, data: $data, message: $message)';
}

enum ResourceState { initial, loading, success, error }
