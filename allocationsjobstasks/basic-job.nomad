job "basic-job" {
  group "service" {
    task "service" {
      driver = "docker"
      config {
        image = "davidlublink/devopsgeneration:pretend-work"
      }
    }
  }
}
