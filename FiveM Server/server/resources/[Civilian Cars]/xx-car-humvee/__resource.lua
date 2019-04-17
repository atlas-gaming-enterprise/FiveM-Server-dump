resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'meta/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'meta/vehicles.meta'

files {
  'meta/handling.meta',
  'meta/vehicles.meta'
}

----client_script 'vehicle_names.lua'
