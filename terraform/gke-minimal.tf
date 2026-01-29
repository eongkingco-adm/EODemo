resource "google_container_cluster" "primary" {
  name     = "migration-target-cluster"
  location = "us-central1-a"

  # Manager's Note: Enabling Autopilot for lower operational overhead 
  # or Standard for granular control over node pools.
  enable_autopilot = true 

  release_channel {
    channel = "STABLE"
  }
}