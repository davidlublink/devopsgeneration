job "first-nomad-job-count" {
  group "service" {
    count = 10
    task "service" {
      driver = "docker"
      config {
        image = "davidlublink/devopsgeneration:useless-work-basic"
      }
    }
  }
}

