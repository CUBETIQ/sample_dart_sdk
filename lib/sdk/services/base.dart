abstract class BaseService<T, ID> {
  Future<List<T>> findAll();

  Future<T> findById(ID id);

  Future<T> create(T entity);

  Future<T> update(T entity);

  Future<void> delete(ID id);
}
