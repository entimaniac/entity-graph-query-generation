package com.jes.entitygraphsandbox;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cosium.spring.data.jpa.entity.graph.domain.EntityGraph;
import com.cosium.spring.data.jpa.entity.graph.domain.EntityGraphUtils;
import com.jes.entitygraphsandbox.entity.A1;
import com.jes.entitygraphsandbox.repository.A1RepositoryDynamic;
import com.jes.entitygraphsandbox.repository.A1RepositoryStatic;

@Service
public class MainService {
  @Autowired A1RepositoryStatic staticRepo;
  @Autowired A1RepositoryDynamic dynamicRepo;

  public void testDynamic() {
    EntityGraph eg =
        EntityGraphUtils.fromAttributePaths(
            "b1s",
            "b1s.b1",
            "b1s.b1.a1s",
            "b1s.b1.a1s.a1",
            "b1s.b1.a1s.a1.a2s",
            "b1s.b1.a1s.a1.a2s.a2");

    System.out.println("\n\n********** SINGLE RESULT DYNAMIC **********\n");
    A1 result1 = dynamicRepo.findById(1L, eg).orElse(null);
    System.out.println("\n********** CUSTOM RESULT DYNAMIC **********\n");
    A1 result2 = dynamicRepo.findOneById(1L, eg).orElse(null);
    System.out.println("\n********** MULTIPLE RESULT DYNAMIC **********\n");
    List<A1> results = (List<A1>) dynamicRepo.findAll(eg);
    System.out.println("\n\n\n");
  }

  public void testStatic() {
    System.out.println("\n\n********** SINGLE RESULT STATIC **********\n");
    A1 result1 = staticRepo.findById(1L).orElse(null);
    System.out.println("\n********** CUSTOM RESULT STATIC **********\n");
    A1 result2 = staticRepo.findOneById(1L).orElse(null);
    System.out.println("\n********** MULTIPLE RESULT STATIC **********\n");
    List<A1> results = staticRepo.findAll();
    System.out.println("\n\n\n");
  }
}
