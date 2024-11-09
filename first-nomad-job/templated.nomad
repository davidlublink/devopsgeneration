job "first-nomad-job-templated" {
  group "service" {
    task "service" {
      driver = "docker"
      config {
        image      = "davidlublink/devopsgeneration:useless-work-basic"
        force_pull = true
      }

      template {
        data        = <<EOH
THIS IS A TEMPLATE BRO!
EOH
        destination = "local/myfile.txt"
      }
    }
  }
}

