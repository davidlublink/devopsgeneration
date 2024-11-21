job "fourth-job" {
  group "service1" {
    count = 1
    task "service" {
      driver = "docker"
      config {
        image = "davidlublink/devopsgeneration:pretend-work"
      }
      env {
        THE_VAR="the values you are looking for"
      }
    }

    task "service2" {
      driver = "docker"
      config {
        image = "davidlublink/devopsgeneration:pretend-work"
      }
      env {
        THE_VAR="not the values you are looking for"
      }
    }
  }
}
