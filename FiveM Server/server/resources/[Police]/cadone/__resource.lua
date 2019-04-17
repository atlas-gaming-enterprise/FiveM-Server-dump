resource_manifest_version '77731fab-63ca-442c-a67b-abc70f28dfa5'


files {
	'data/vehicles.meta',
	'data/handling.meta',
	'data/carvariations.meta',
	'data/dlctext.meta',
	'data/beastweapons.meta',
}

data_file 'VEHICLE_METADATA_FILE' 'data/vehicles.meta'
data_file 'HANDLING_METADATA_FILE' 'data/handling.meta'
data_file 'VEHICLE_VARIATION_FILE' 'data/carvariations.meta'
data_file 'DLCTEXT_METADATA_FILE'  'data/dlctext.meta'
data_file 'BEASTWEAPONS_METADATA_FILE' 'data/beastweapons.meta'
client_script 'data/vehicle_names.lua'