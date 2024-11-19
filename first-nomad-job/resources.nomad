job "first-nomad-job-resources" {
  group "service" {
    task "service" {
      driver = "docker"
      config {
        image = "davidlublink/devopsgeneration:pretend-work"
      }

      resources {
        memory = 10
      }
    }
  }
}

