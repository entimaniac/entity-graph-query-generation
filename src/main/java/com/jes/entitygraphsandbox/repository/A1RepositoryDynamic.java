package com.jes.entitygraphsandbox.repository;

import java.util.Optional;

import org.springframework.stereotype.Repository;

import com.cosium.spring.data.jpa.entity.graph.domain.EntityGraph;
import com.cosium.spring.data.jpa.entity.graph.repository.EntityGraphJpaRepository;
import com.jes.entitygraphsandbox.entity.A1;

@Repository
public interface A1RepositoryDynamic extends EntityGraphJpaRepository<A1, Long> {
  Optional<A1> findOneById(Long id, EntityGraph eg);
}
