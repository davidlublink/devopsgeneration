job "third-job" {
  group "service" {
     count = 2
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
