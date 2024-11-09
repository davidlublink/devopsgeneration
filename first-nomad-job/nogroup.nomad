job "first-nomad-job-nogroup" {
    task "service" {
        driver="docker"
      config {
        image = "davidlublink/devopsgeneration:useless-work-basic"
      }
    }
}

