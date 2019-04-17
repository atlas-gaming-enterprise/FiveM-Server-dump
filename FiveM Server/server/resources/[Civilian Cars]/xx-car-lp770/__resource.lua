resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'

data_file 'HANDLING_FILE' 'meta/lp770/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'meta/lp770/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'meta/lp770/carvariations.meta'
data_file 'TEXTFILE_METAFILE' 'meta/lp770/dlctext.meta'

files {
  'meta/lp770/handling.meta',
  'meta/lp770/vehicles.meta',
  'meta/lp770/carvariations.meta',
  'meta/lp770/dlctext.meta'
}

data_file 'HANDLING_FILE' 'meta/lp770r/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'meta/lp770r/vehicles.meta'
data_file 'VEHICLE_VARIATION_FILE' 'meta/lp770r/carvariations.meta'
data_file 'TEXTFILE_METAFILE' 'meta/lp770r/dlctext.meta'

files {
  'meta/lp770r/handling.meta',
  'meta/lp770r/vehicles.meta',
  'meta/lp770r/carvariations.meta',
  'meta/lp770r/dlctext.meta'
}

----client_script 'vehicle_names.lua'
