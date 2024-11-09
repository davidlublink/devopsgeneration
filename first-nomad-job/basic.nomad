job "first-nomad-job-basic" {
  group "service" {
    task "service" {
      driver = "docker"
      config {
        image = "davidlublink/devopsgeneration:useless-work-basic"
      }
    }
  }
}

