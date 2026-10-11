resource "oci_bds_bds_instance" "bds_bds_instances" {
  for_each = var.bds_bds_instances

  cluster_public_key          = each.value.cluster_public_key
  cluster_version             = each.value.cluster_version
  compartment_id              = each.value.compartment_id
  display_name                = each.value.display_name
  is_high_availability        = each.value.is_high_availability
  is_secure                   = each.value.is_secure
  bootstrap_script_url        = each.value.bootstrap_script_url
  cluster_admin_password      = each.value.cluster_admin_password
  cluster_profile             = each.value.cluster_profile
  defined_tags                = each.value.defined_tags
  freeform_tags               = each.value.freeform_tags
  ignore_existing_nodes_shape = each.value.ignore_existing_nodes_shape
  is_cloud_sql_configured     = each.value.is_cloud_sql_configured
  is_force_remove_enabled     = each.value.is_force_remove_enabled
  is_force_stop_jobs          = each.value.is_force_stop_jobs
  is_kafka_configured         = each.value.is_kafka_configured
  is_secret_reused            = each.value.is_secret_reused
  kerberos_realm_name         = each.value.kerberos_realm_name
  kms_key_id                  = each.value.kms_key_id
  os_patch_version            = each.value.os_patch_version
  remove_node                 = each.value.remove_node
  remove_nodes                = each.value.remove_nodes
  secret_id                   = each.value.secret_id
  state                       = each.value.state

  master_node {
    block_volume_size_in_gbs = each.value.master_node.block_volume_size_in_gbs
    number_of_nodes          = each.value.master_node.number_of_nodes
    shape                    = each.value.master_node.shape
    dynamic "shape_config" {
      for_each = each.value.master_node.shape_config != null ? [each.value.master_node.shape_config] : []
      content {
        memory_in_gbs = shape_config.value.memory_in_gbs
        nvmes         = shape_config.value.nvmes
        ocpus         = shape_config.value.ocpus
      }
    }
    subnet_id = each.value.master_node.subnet_id
  }

  util_node {
    block_volume_size_in_gbs = each.value.util_node.block_volume_size_in_gbs
    number_of_nodes          = each.value.util_node.number_of_nodes
    shape                    = each.value.util_node.shape
    dynamic "shape_config" {
      for_each = each.value.util_node.shape_config != null ? [each.value.util_node.shape_config] : []
      content {
        memory_in_gbs = shape_config.value.memory_in_gbs
        nvmes         = shape_config.value.nvmes
        ocpus         = shape_config.value.ocpus
      }
    }
    subnet_id = each.value.util_node.subnet_id
  }

  worker_node {
    block_volume_size_in_gbs = each.value.worker_node.block_volume_size_in_gbs
    number_of_nodes          = each.value.worker_node.number_of_nodes
    shape                    = each.value.worker_node.shape
    dynamic "shape_config" {
      for_each = each.value.worker_node.shape_config != null ? [each.value.worker_node.shape_config] : []
      content {
        memory_in_gbs = shape_config.value.memory_in_gbs
        nvmes         = shape_config.value.nvmes
        ocpus         = shape_config.value.ocpus
      }
    }
    subnet_id = each.value.worker_node.subnet_id
  }

  dynamic "bds_capacity_reservation_configurations" {
    for_each = each.value.bds_capacity_reservation_configurations != null ? each.value.bds_capacity_reservation_configurations : []
    content {
      bds_capacity_reservation_id = bds_capacity_reservation_configurations.value.bds_capacity_reservation_id
      display_name                = bds_capacity_reservation_configurations.value.display_name
    }
  }

  dynamic "bds_cluster_version_summary" {
    for_each = each.value.bds_cluster_version_summary != null ? [each.value.bds_cluster_version_summary] : []
    content {
      bds_version = bds_cluster_version_summary.value.bds_version
      odh_version = bds_cluster_version_summary.value.odh_version
    }
  }

  dynamic "cloud_sql_details" {
    for_each = each.value.cloud_sql_details != null ? each.value.cloud_sql_details : []
    content {
      shape = cloud_sql_details.value.shape
    }
  }

  dynamic "compute_only_worker_node" {
    for_each = each.value.compute_only_worker_node != null ? [each.value.compute_only_worker_node] : []
    content {
      block_volume_size_in_gbs = compute_only_worker_node.value.block_volume_size_in_gbs
      number_of_nodes          = compute_only_worker_node.value.number_of_nodes
      shape                    = compute_only_worker_node.value.shape
      dynamic "shape_config" {
        for_each = compute_only_worker_node.value.shape_config != null ? [compute_only_worker_node.value.shape_config] : []
        content {
          memory_in_gbs = shape_config.value.memory_in_gbs
          nvmes         = shape_config.value.nvmes
          ocpus         = shape_config.value.ocpus
        }
      }
      subnet_id = compute_only_worker_node.value.subnet_id
    }
  }

  dynamic "edge_node" {
    for_each = each.value.edge_node != null ? [each.value.edge_node] : []
    content {
      block_volume_size_in_gbs = edge_node.value.block_volume_size_in_gbs
      number_of_nodes          = edge_node.value.number_of_nodes
      shape                    = edge_node.value.shape
      dynamic "shape_config" {
        for_each = edge_node.value.shape_config != null ? [edge_node.value.shape_config] : []
        content {
          memory_in_gbs = shape_config.value.memory_in_gbs
          nvmes         = shape_config.value.nvmes
          ocpus         = shape_config.value.ocpus
        }
      }
      subnet_id = edge_node.value.subnet_id
    }
  }

  dynamic "kafka_broker_node" {
    for_each = each.value.kafka_broker_node != null ? [each.value.kafka_broker_node] : []
    content {
      block_volume_size_in_gbs = kafka_broker_node.value.block_volume_size_in_gbs
      number_of_kafka_nodes    = kafka_broker_node.value.number_of_kafka_nodes
      shape                    = kafka_broker_node.value.shape
      dynamic "shape_config" {
        for_each = kafka_broker_node.value.shape_config != null ? [kafka_broker_node.value.shape_config] : []
        content {
          memory_in_gbs = shape_config.value.memory_in_gbs
          nvmes         = shape_config.value.nvmes
          ocpus         = shape_config.value.ocpus
        }
      }
      subnet_id = kafka_broker_node.value.subnet_id
    }
  }

  dynamic "network_config" {
    for_each = each.value.network_config != null ? [each.value.network_config] : []
    content {
      cidr_block              = network_config.value.cidr_block
      is_nat_gateway_required = network_config.value.is_nat_gateway_required
    }
  }

  dynamic "start_cluster_shape_configs" {
    for_each = each.value.start_cluster_shape_configs != null ? each.value.start_cluster_shape_configs : []
    content {
      dynamic "node_type_shape_configs" {
        for_each = start_cluster_shape_configs.value.node_type_shape_configs != null ? start_cluster_shape_configs.value.node_type_shape_configs : []
        content {
          node_type = node_type_shape_configs.value.node_type
          shape     = node_type_shape_configs.value.shape
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

