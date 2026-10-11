variable "bds_bds_instances" {
  description = <<EOT
Map of bds_bds_instances, attributes below
Required:
    - cluster_public_key
    - cluster_version
    - compartment_id
    - display_name
    - is_high_availability
    - is_secure
    - master_node (block):
        - block_volume_size_in_gbs (optional)
        - number_of_nodes (required)
        - shape (required)
        - shape_config (optional, block):
            - memory_in_gbs (optional)
            - nvmes (optional)
            - ocpus (optional)
        - subnet_id (required)
    - util_node (block):
        - block_volume_size_in_gbs (optional)
        - number_of_nodes (required)
        - shape (required)
        - shape_config (optional, block):
            - memory_in_gbs (optional)
            - nvmes (optional)
            - ocpus (optional)
        - subnet_id (required)
    - worker_node (block):
        - block_volume_size_in_gbs (optional)
        - number_of_nodes (required)
        - shape (required)
        - shape_config (optional, block):
            - memory_in_gbs (optional)
            - nvmes (optional)
            - ocpus (optional)
        - subnet_id (required)
Optional:
    - bootstrap_script_url
    - cluster_admin_password
    - cluster_profile
    - defined_tags
    - freeform_tags
    - ignore_existing_nodes_shape
    - is_cloud_sql_configured
    - is_force_remove_enabled
    - is_force_stop_jobs
    - is_kafka_configured
    - is_secret_reused
    - kerberos_realm_name
    - kms_key_id
    - os_patch_version
    - remove_node
    - remove_nodes
    - secret_id
    - state
    - bds_capacity_reservation_configurations (block):
        - bds_capacity_reservation_id (required)
        - display_name (required)
    - bds_cluster_version_summary (block):
        - bds_version (optional)
        - odh_version (optional)
    - cloud_sql_details (block):
        - shape (required)
    - compute_only_worker_node (block):
        - block_volume_size_in_gbs (optional)
        - number_of_nodes (required)
        - shape (required)
        - shape_config (optional, block):
            - memory_in_gbs (optional)
            - nvmes (optional)
            - ocpus (optional)
        - subnet_id (required)
    - edge_node (block):
        - block_volume_size_in_gbs (optional)
        - number_of_nodes (required)
        - shape (required)
        - shape_config (optional, block):
            - memory_in_gbs (optional)
            - nvmes (optional)
            - ocpus (optional)
        - subnet_id (required)
    - kafka_broker_node (block):
        - block_volume_size_in_gbs (optional)
        - number_of_kafka_nodes (required)
        - shape (required)
        - shape_config (optional, block):
            - memory_in_gbs (optional)
            - nvmes (optional)
            - ocpus (optional)
        - subnet_id (required)
    - network_config (block):
        - cidr_block (optional)
        - is_nat_gateway_required (optional)
    - start_cluster_shape_configs (block):
        - node_type_shape_configs (optional, block):
            - node_type (optional)
            - shape (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    cluster_public_key          = string
    cluster_version             = string
    compartment_id              = string
    display_name                = string
    is_high_availability        = bool
    is_secure                   = bool
    bootstrap_script_url        = optional(string)
    cluster_admin_password      = optional(string)
    cluster_profile             = optional(string)
    defined_tags                = optional(map(string))
    freeform_tags               = optional(map(string))
    ignore_existing_nodes_shape = optional(list(string))
    is_cloud_sql_configured     = optional(bool)
    is_force_remove_enabled     = optional(bool)
    is_force_stop_jobs          = optional(bool)
    is_kafka_configured         = optional(bool)
    is_secret_reused            = optional(bool)
    kerberos_realm_name         = optional(string)
    kms_key_id                  = optional(string)
    os_patch_version            = optional(string)
    remove_node                 = optional(string)
    remove_nodes                = optional(list(string))
    secret_id                   = optional(string)
    state                       = optional(string)
    master_node = object({
      block_volume_size_in_gbs = optional(string)
      number_of_nodes          = number
      shape                    = string
      shape_config = optional(object({
        memory_in_gbs = optional(number)
        nvmes         = optional(number)
        ocpus         = optional(number)
      }))
      subnet_id = string
    })
    util_node = object({
      block_volume_size_in_gbs = optional(string)
      number_of_nodes          = number
      shape                    = string
      shape_config = optional(object({
        memory_in_gbs = optional(number)
        nvmes         = optional(number)
        ocpus         = optional(number)
      }))
      subnet_id = string
    })
    worker_node = object({
      block_volume_size_in_gbs = optional(string)
      number_of_nodes          = number
      shape                    = string
      shape_config = optional(object({
        memory_in_gbs = optional(number)
        nvmes         = optional(number)
        ocpus         = optional(number)
      }))
      subnet_id = string
    })
    bds_capacity_reservation_configurations = optional(list(object({
      bds_capacity_reservation_id = string
      display_name                = string
    })))
    bds_cluster_version_summary = optional(object({
      bds_version = optional(string)
      odh_version = optional(string)
    }))
    cloud_sql_details = optional(list(object({
      shape = string
    })))
    compute_only_worker_node = optional(object({
      block_volume_size_in_gbs = optional(string)
      number_of_nodes          = number
      shape                    = string
      shape_config = optional(object({
        memory_in_gbs = optional(number)
        nvmes         = optional(number)
        ocpus         = optional(number)
      }))
      subnet_id = string
    }))
    edge_node = optional(object({
      block_volume_size_in_gbs = optional(string)
      number_of_nodes          = number
      shape                    = string
      shape_config = optional(object({
        memory_in_gbs = optional(number)
        nvmes         = optional(number)
        ocpus         = optional(number)
      }))
      subnet_id = string
    }))
    kafka_broker_node = optional(object({
      block_volume_size_in_gbs = optional(string)
      number_of_kafka_nodes    = number
      shape                    = string
      shape_config = optional(object({
        memory_in_gbs = optional(number)
        nvmes         = optional(number)
        ocpus         = optional(number)
      }))
      subnet_id = string
    }))
    network_config = optional(object({
      cidr_block              = optional(string)
      is_nat_gateway_required = optional(bool)
    }))
    start_cluster_shape_configs = optional(list(object({
      node_type_shape_configs = optional(list(object({
        node_type = optional(string)
        shape     = optional(string)
      })))
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bds_bds_instances : (
        v.master_node.number_of_nodes >= 1
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.bds_bds_instances : (
        v.util_node.number_of_nodes >= 1
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.bds_bds_instances : (
        v.worker_node.number_of_nodes >= 3
      )
    ])
    error_message = "must be at least 3"
  }
  validation {
    condition = alltrue([
      for k, v in var.bds_bds_instances : (
        v.compute_only_worker_node == null || (v.compute_only_worker_node.number_of_nodes >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.bds_bds_instances : (
        v.edge_node == null || (v.edge_node.number_of_nodes >= 1)
      )
    ])
    error_message = "must be at least 1"
  }
  validation {
    condition = alltrue([
      for k, v in var.bds_bds_instances : (
        v.state == null || (contains([for v in ["INACTIVE", "ACTIVE"] : lower(v)], lower(v.state)))
      )
    ])
    error_message = "must be one of: \"INACTIVE\", \"ACTIVE\""
  }
  # Note: 6 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

