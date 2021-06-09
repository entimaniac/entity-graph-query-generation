package com.jes.entitygraphsandbox.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@Entity
@EqualsAndHashCode(onlyExplicitlyIncluded = true)
public class A1 {
  @Id
  @EqualsAndHashCode.Include
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  private String name;

  @JsonManagedReference
  @OneToMany(
      mappedBy = "a1",
      orphanRemoval = true,
      cascade = {CascadeType.ALL})
  private Set<A12> a2s = new HashSet<>();

  @JsonManagedReference
  @OneToMany(
      mappedBy = "a1",
      orphanRemoval = true,
      cascade = {CascadeType.ALL})
  private Set<AB> b1s = new HashSet<>();
}
