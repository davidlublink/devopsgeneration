job "second-job" {
  group "service1" {
    task "service" {
      driver = "docker"
      config {
        image = "davidlublink/devopsgeneration:pretend-work"
      }
      env {
        THE_VAR="the value you are looking for"
      }
    }
  }
  group "service2" {
    task "service" {
      driver = "docker"
      config {
        image = "davidlublink/devopsgeneration:pretend-work"
      }
      env {
        THE_VAR="the value you are looking for"
      }
    }
  }
}
