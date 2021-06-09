package com.jes.entitygraphsandbox.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.EntityGraph;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.jes.entitygraphsandbox.entity.A1;

@Repository
public interface A1RepositoryStatic extends JpaRepository<A1, Long> {
  @Override
  @EntityGraph(
      attributePaths = {
        "b1s",
        "b1s.b1",
        "b1s.b1.a1s",
        "b1s.b1.a1s.a1",
        "b1s.b1.a1s.a1.a2s",
        "b1s.b1.a1s.a1.a2s.a2"
      })
  Optional<A1> findById(Long id);

  @EntityGraph(
      attributePaths = {
        "b1s",
        "b1s.b1",
        "b1s.b1.a1s",
        "b1s.b1.a1s.a1",
        "b1s.b1.a1s.a1.a2s",
        "b1s.b1.a1s.a1.a2s.a2"
      })
  Optional<A1> findOneById(Long id);

  @Override
  @EntityGraph(
      attributePaths = {
        "b1s",
        "b1s.b1",
        "b1s.b1.a1s",
        "b1s.b1.a1s.a1",
        "b1s.b1.a1s.a1.a2s",
        "b1s.b1.a1s.a1.a2s.a2"
      })
  List<A1> findAll();
}
