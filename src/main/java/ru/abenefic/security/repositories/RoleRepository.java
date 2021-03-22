package ru.abenefic.security.repositories;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import ru.abenefic.security.entities.Role;

@Repository
public interface RoleRepository extends CrudRepository<Role, Long> {
}
