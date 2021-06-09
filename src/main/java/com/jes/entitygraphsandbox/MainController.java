package com.jes.entitygraphsandbox;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class MainController {
  @Autowired MainService service;

  @GetMapping
  public String ping() {
    return "pinged";
  }

  @GetMapping(path = "dynamic")
  public String testDynamic() {
    service.testDynamic();
    return "dynamic done";
  }

  @GetMapping(path = "static")
  public String testStatic() {
    service.testStatic();
    return "static done";
  }
}
