job "first-nomad-job-resources" {
  group "service" {
    task "service" {
      driver = "docker"
      config {
        image = "davidlublink/devopsgeneration:useless-work-basic"
      }

    resources {
         memory=10
    }
    }
  }
}

