import 'package:flutter/material.dart';
import 'resource.dart';

class ResourceWidget<T> extends StatelessWidget {
  final Resource<T> resource;
  final Widget Function()? loadingBuilder;
  final Widget Function(String message)? errorBuilder;
  final Widget Function(T data) successBuilder;
  final Widget Function()? emptyBuilder;
  final bool Function(T data)? emptyCondition;

  const ResourceWidget({
    super.key,
    required this.resource,
    required this.successBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.emptyBuilder,
    this.emptyCondition,
  });

  @override
  Widget build(BuildContext context) {
    switch (resource.state) {
      case ResourceState.loading:
        return loadingBuilder?.call() ??
            const Center(child: CircularProgressIndicator());

      case ResourceState.error:
        return errorBuilder
                ?.call(resource.message ?? "Something wents wrong") ??
            Center(child: Text(resource.message ?? "Something wents wrong"));

      case ResourceState.success:
        final data = resource.data;
        final isEmpty = emptyCondition?.call(data as T) ?? (data == null);
        if (isEmpty) {
          return emptyBuilder?.call() ?? Center(child: Text("No data found"));
        }
        return successBuilder(data as T);

      case ResourceState.initial:
        return const SizedBox.shrink();
    }
  }
}
