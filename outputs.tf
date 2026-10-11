output "bds_bds_instances_id" {
  description = "Map of id values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no id are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bds_bds_instances_bds_capacity_reservation_configurations" {
  description = "Map of bds_capacity_reservation_configurations values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no bds_capacity_reservation_configurations are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.bds_capacity_reservation_configurations if v.bds_capacity_reservation_configurations != null && length(v.bds_capacity_reservation_configurations) > 0 }
}
output "bds_bds_instances_bds_cluster_version_summary" {
  description = "Map of bds_cluster_version_summary values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no bds_cluster_version_summary are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => one(v.bds_cluster_version_summary) if v.bds_cluster_version_summary != null && length(v.bds_cluster_version_summary) > 0 }
}
output "bds_bds_instances_bootstrap_script_url" {
  description = "Map of bootstrap_script_url values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no bootstrap_script_url are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.bootstrap_script_url if v.bootstrap_script_url != null && length(v.bootstrap_script_url) > 0 }
}
output "bds_bds_instances_cloud_sql_details" {
  description = "Map of cloud_sql_details values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no cloud_sql_details are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.cloud_sql_details if v.cloud_sql_details != null && length(v.cloud_sql_details) > 0 }
}
output "bds_bds_instances_cluster_admin_password" {
  description = "Map of cluster_admin_password values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no cluster_admin_password are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.cluster_admin_password if v.cluster_admin_password != null && length(v.cluster_admin_password) > 0 }
  sensitive   = true
}
output "bds_bds_instances_cluster_details" {
  description = "Map of cluster_details values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no cluster_details are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.cluster_details if v.cluster_details != null && length(v.cluster_details) > 0 }
}
output "bds_bds_instances_cluster_profile" {
  description = "Map of cluster_profile values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no cluster_profile are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.cluster_profile if v.cluster_profile != null && length(v.cluster_profile) > 0 }
}
output "bds_bds_instances_cluster_public_key" {
  description = "Map of cluster_public_key values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no cluster_public_key are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.cluster_public_key if v.cluster_public_key != null && length(v.cluster_public_key) > 0 }
}
output "bds_bds_instances_cluster_version" {
  description = "Map of cluster_version values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no cluster_version are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.cluster_version if v.cluster_version != null && length(v.cluster_version) > 0 }
}
output "bds_bds_instances_compartment_id" {
  description = "Map of compartment_id values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no compartment_id are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "bds_bds_instances_compute_only_worker_node" {
  description = "Map of compute_only_worker_node values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no compute_only_worker_node are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => one(v.compute_only_worker_node) if v.compute_only_worker_node != null && length(v.compute_only_worker_node) > 0 }
}
output "bds_bds_instances_created_by" {
  description = "Map of created_by values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no created_by are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.created_by if v.created_by != null && length(v.created_by) > 0 }
}
output "bds_bds_instances_defined_tags" {
  description = "Map of defined_tags values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no defined_tags are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "bds_bds_instances_display_name" {
  description = "Map of display_name values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no display_name are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "bds_bds_instances_edge_node" {
  description = "Map of edge_node values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no edge_node are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => one(v.edge_node) if v.edge_node != null && length(v.edge_node) > 0 }
}
output "bds_bds_instances_freeform_tags" {
  description = "Map of freeform_tags values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "bds_bds_instances_ignore_existing_nodes_shape" {
  description = "Map of ignore_existing_nodes_shape values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no ignore_existing_nodes_shape are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.ignore_existing_nodes_shape if v.ignore_existing_nodes_shape != null && length(v.ignore_existing_nodes_shape) > 0 }
}
output "bds_bds_instances_is_cloud_sql_configured" {
  description = "Map of is_cloud_sql_configured values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no is_cloud_sql_configured are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.is_cloud_sql_configured if v.is_cloud_sql_configured != null }
}
output "bds_bds_instances_is_force_remove_enabled" {
  description = "Map of is_force_remove_enabled values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no is_force_remove_enabled are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.is_force_remove_enabled if v.is_force_remove_enabled != null }
}
output "bds_bds_instances_is_force_stop_jobs" {
  description = "Map of is_force_stop_jobs values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no is_force_stop_jobs are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.is_force_stop_jobs if v.is_force_stop_jobs != null }
}
output "bds_bds_instances_is_high_availability" {
  description = "Map of is_high_availability values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no is_high_availability are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.is_high_availability if v.is_high_availability != null }
}
output "bds_bds_instances_is_kafka_configured" {
  description = "Map of is_kafka_configured values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no is_kafka_configured are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.is_kafka_configured if v.is_kafka_configured != null }
}
output "bds_bds_instances_is_secret_reused" {
  description = "Map of is_secret_reused values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no is_secret_reused are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.is_secret_reused if v.is_secret_reused != null }
}
output "bds_bds_instances_is_secure" {
  description = "Map of is_secure values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no is_secure are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.is_secure if v.is_secure != null }
}
output "bds_bds_instances_kafka_broker_node" {
  description = "Map of kafka_broker_node values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no kafka_broker_node are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => one(v.kafka_broker_node) if v.kafka_broker_node != null && length(v.kafka_broker_node) > 0 }
}
output "bds_bds_instances_kerberos_realm_name" {
  description = "Map of kerberos_realm_name values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no kerberos_realm_name are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.kerberos_realm_name if v.kerberos_realm_name != null && length(v.kerberos_realm_name) > 0 }
}
output "bds_bds_instances_kms_key_id" {
  description = "Map of kms_key_id values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no kms_key_id are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.kms_key_id if v.kms_key_id != null && length(v.kms_key_id) > 0 }
}
output "bds_bds_instances_master_node" {
  description = "Map of master_node values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no master_node are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => one(v.master_node) if v.master_node != null && length(v.master_node) > 0 }
}
output "bds_bds_instances_network_config" {
  description = "Map of network_config values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no network_config are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => one(v.network_config) if v.network_config != null && length(v.network_config) > 0 }
}
output "bds_bds_instances_nodes" {
  description = "Map of nodes values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no nodes are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.nodes if v.nodes != null && length(v.nodes) > 0 }
}
output "bds_bds_instances_number_of_nodes" {
  description = "Map of number_of_nodes values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no number_of_nodes are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.number_of_nodes if v.number_of_nodes != null }
}
output "bds_bds_instances_number_of_nodes_requiring_maintenance_reboot" {
  description = "Map of number_of_nodes_requiring_maintenance_reboot values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no number_of_nodes_requiring_maintenance_reboot are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.number_of_nodes_requiring_maintenance_reboot if v.number_of_nodes_requiring_maintenance_reboot != null }
}
output "bds_bds_instances_os_patch_version" {
  description = "Map of os_patch_version values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no os_patch_version are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.os_patch_version if v.os_patch_version != null && length(v.os_patch_version) > 0 }
}
output "bds_bds_instances_remove_node" {
  description = "Map of remove_node values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no remove_node are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.remove_node if v.remove_node != null && length(v.remove_node) > 0 }
}
output "bds_bds_instances_remove_nodes" {
  description = "Map of remove_nodes values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no remove_nodes are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.remove_nodes if v.remove_nodes != null && length(v.remove_nodes) > 0 }
}
output "bds_bds_instances_secret_id" {
  description = "Map of secret_id values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no secret_id are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.secret_id if v.secret_id != null && length(v.secret_id) > 0 }
}
output "bds_bds_instances_start_cluster_shape_configs" {
  description = "Map of start_cluster_shape_configs values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no start_cluster_shape_configs are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.start_cluster_shape_configs if v.start_cluster_shape_configs != null && length(v.start_cluster_shape_configs) > 0 }
}
output "bds_bds_instances_state" {
  description = "Map of state values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no state are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.state if v.state != null && length(v.state) > 0 }
}
output "bds_bds_instances_time_created" {
  description = "Map of time_created values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no time_created are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "bds_bds_instances_time_earliest_certificate_expiration" {
  description = "Map of time_earliest_certificate_expiration values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no time_earliest_certificate_expiration are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.time_earliest_certificate_expiration if v.time_earliest_certificate_expiration != null && length(v.time_earliest_certificate_expiration) > 0 }
}
output "bds_bds_instances_time_updated" {
  description = "Map of time_updated values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no time_updated are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "bds_bds_instances_util_node" {
  description = "Map of util_node values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no util_node are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => one(v.util_node) if v.util_node != null && length(v.util_node) > 0 }
}
output "bds_bds_instances_worker_node" {
  description = "Map of worker_node values across all bds_bds_instances, keyed the same as var.bds_bds_instances except keys with no worker_node are omitted"
  value       = { for k, v in oci_bds_bds_instance.bds_bds_instances : k => one(v.worker_node) if v.worker_node != null && length(v.worker_node) > 0 }
}

