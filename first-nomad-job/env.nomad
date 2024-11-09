job "first-nomad-job-env" {
  group "service" {
    task "service" {
      driver = "docker"
      config {
        image      = "davidlublink/devopsgeneration:useless-work-basic"
        force_pull = true
      }
      env {
        MAX_SLEEP = 3
        MAX_UNIT  = 10
        MAX_WORK  = 20
      }

    }
  }
}

