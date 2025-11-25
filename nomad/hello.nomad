# DevOps Hello World Nomad Job Specification

job "devops-hello" {
  # Job runs in default datacenter
  datacenters = ["dc1"]
  
  # Service type = long-running service
  type = "service"

  # Job metadata
  meta {
    version = "1.0"
    author  = "Hyelngtil Isaac"
  }

  # Define the task group
  group "app" {
    # Run 1 instance
    count = 1

    # Network configuration
    network {
      port "http" {
        static = 8080
      }
    }

    # Define the task
    task "hello" {
      # Use Docker driver
      driver = "docker"

      # Docker configuration
      config {
        image = "devops-hello:v1"
              
        ports = ["http"]
      }

      # Resource allocation (minimal)
      resources {
        cpu    = 100  # 100 MHz
        memory = 128  # 128 MB
      }

      # Logging configuration
      logs {
        max_files     = 5
        max_file_size = 10  # MB
      }
    }

    # Restart policy
    restart {
      attempts = 3
      delay    = "15s"
      interval = "1m"
      mode     = "fail"
    }
  }
}
