resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'
-- R8 V10 2017 STUFF
data_file 'HANDLING_FILE' 'meta/r8/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'meta/r8/vehicles.meta'
data_file 'CARCOLS_FILE' 'meta/r8/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'meta/r8/carvariations.meta'
data_file 'TEXTFILE_METAFILE' 'meta/r8/dlctext.meta'

files {
  'meta/r8/handling.meta',
  'meta/r8/vehicles.meta',
  'meta/r8/carcols.meta',
  'meta/r8/carvariations.meta',
  'meta/r8/dlctext.meta'
}

-- VRS Stuff
data_file 'HANDLING_FILE' 'meta/vrs/handling.meta'
data_file 'VEHICLE_METADATA_FILE' 'meta/vrs/vehicles.meta'
data_file 'CARCOLS_FILE' 'meta/vrs/carcols.meta'
data_file 'VEHICLE_VARIATION_FILE' 'meta/vrs/carvariations.meta'
data_file 'TEXTFILE_METAFILE' 'meta/vrs/dlctext.meta'

files {
  'meta/vrs/handling.meta',
  'meta/vrs/vehicles.meta',
  'meta/vrs/carcols.meta',
  'meta/vrs/carvariations.meta',
  'meta/vrs/dlctext.meta'
}

----client_script 'vehicle_names.lua'
