-- Native definitions

native "ADD_REPLACE_TEXTURE"
	arguments {
		charPtr "origTxd",
		charPtr "origTxn",
		charPtr "newTxd",
		charPtr "newTxn",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Experimental natives, please do not use in a live environment.
</summary>
	]]

native "ADD_MINIMAP_OVERLAY"
	arguments {
		charPtr "name",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Loads a minimap overlay from a GFx file in the current resource.
</summary>
<param name="name">The path to a `.gfx` file in the current resource. It has to be specified as a `file`.</param>
<returns>A minimap overlay ID.</returns>
	]]

native "ADD_TEXT_ENTRY"
	arguments {
		charPtr "entryKey",
		charPtr "entryText",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "ADD_TEXT_ENTRY_BY_HASH"
	arguments {
		Hash "entryKey",
		charPtr "entryText",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "CANCEL_EVENT"
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Cancels the currently executing event.
</summary>
	]]

native "CALL_MINIMAP_SCALEFORM_FUNCTION"
	arguments {
		int "miniMap",
		charPtr "fnName",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
This is similar to the PushScaleformMovieFunction natives, except it calls in the `TIMELINE` of a minimap overlay.
</summary>
<param name="miniMap">The minimap overlay ID.</param>
<param name="fnName">A function in the overlay's TIMELINE.</param>
	]]

native "COMMIT_RUNTIME_TEXTURE"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Commits the backing pixels to the specified runtime texture.
</summary>
<param name="tex">The runtime texture handle.</param>
	]]

native "CREATE_DUI"
	arguments {
		charPtr "url",
		int "width",
		int "height",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a DUI browser. This can be used to draw on a runtime texture using CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.
</summary>
<param name="url">The initial URL to load in the browser.</param>
<param name="width">The width of the backing surface.</param>
<param name="height">The height of the backing surface.</param>
<returns>A DUI object.</returns>
	]]

native "CREATE_RUNTIME_TEXTURE"
	arguments {
		long "txd",
		charPtr "txn",
		int "width",
		int "height",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a blank runtime texture.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="width">The width of the new texture.</param>
<param name="height">The height of the new texture.</param>
<returns>A runtime texture handle.</returns>
	]]

native "CREATE_RUNTIME_TEXTURE_FROM_IMAGE"
	arguments {
		long "txd",
		charPtr "txn",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture from the specified file in the current resource.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="fileName">The file name of an image to load. This should preferably be a PNG, and has to be specified as a `file` in the resource manifest.</param>
<returns>A runtime texture handle.</returns>
	]]

native "CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE"
	arguments {
		long "txd",
		long "txn",
		charPtr "duiHandle",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture from a DUI handle.
</summary>
<param name="txd">A handle to the runtime TXD to create the runtime texture in.</param>
<param name="txn">The name for the texture in the runtime texture dictionary.</param>
<param name="duiHandle">The DUI handle returned from GET_DUI_HANDLE.</param>
<returns>The runtime texture handle.</returns>
	]]

native "DELETE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "CREATE_RUNTIME_TXD"
	arguments {
		charPtr "name",
	}
	ns "CFX"
    apiset "client"
	returns "long"
	doc [[!
<summary>
Creates a runtime texture dictionary with the specified name.
Example:

```lua
local txd = CreateRuntimeTxd('meow')
```
</summary>
<param name="name">The name for the runtime TXD.</param>
<returns>A handle to the runtime TXD.</returns>
	]]

native "DELETE_RESOURCE_KVP"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "DUPLICATE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "DESTROY_DUI"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Destroys a DUI browser.
</summary>
<param name="duiObject">The DUI browser handle.</param>
	]]

native "ENABLE_ENHANCED_HOST_SUPPORT"
	arguments {
		BOOL "enabled",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "DROP_PLAYER"
	arguments {
		charPtr "playerSrc",
		charPtr "reason",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "END_FIND_OBJECT"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_KVP"
	arguments {
		int "handle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_PICKUP"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "END_FIND_PED"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "EXECUTE_COMMAND"
	arguments {
		charPtr "commandString",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
	]]

native "END_FIND_VEHICLE"
	arguments {
		int "findHandle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "EXPERIMENTAL_LOAD_CLONE_SYNC"
	arguments {
		Entity "entity",
		charPtr "data",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "EXPERIMENTAL_SAVE_CLONE_SYNC"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "EXPERIMENTAL_LOAD_CLONE_CREATE"
	arguments {
		charPtr "data",
		int "objectId",
		charPtr "tree",
	}
	ns "CFX"
    apiset "client"
	returns "Entity"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "EXPERIMENTAL_SAVE_CLONE_CREATE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
This native is not implemented.
</summary>
	]]

native "FIND_FIRST_PED"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_FIRST_OBJECT"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_FIRST_VEHICLE"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_FIRST_PICKUP"
	arguments {
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "FIND_NEXT_OBJECT"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_KVP"
	arguments {
		int "handle",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
	]]

native "FIND_NEXT_PED"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_NEXT_PICKUP"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FIND_NEXT_VEHICLE"
	arguments {
		int "findHandle",
		EntityPtr "outEntity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "FLAG_SERVER_AS_PRIVATE"
	arguments {
		BOOL "private_",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "GET_CAM_MATRIX"
	arguments {
		Cam "camera",
		Vector3Ptr "rightVector",
		Vector3Ptr "forwardVector",
		Vector3Ptr "upVector",
		Vector3Ptr "position",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Returns the world matrix of the specified camera. To turn this into a view matrix, calculate the inverse.
</summary>
	]]

native "GET_CONVAR"
	arguments {
		charPtr "varName",
		charPtr "default_",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "GET_CONVAR_INT"
	arguments {
		charPtr "varName",
		int "default_",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_CURRENT_RESOURCE_NAME"
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Returns the name of the currently executing resource.
</summary>
<returns>The name of the resource.</returns>
	]]

native "GET_CURRENT_SERVER_ENDPOINT"
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
Returns the peer address of the remote game server that the user is currently connected to.
</summary>
<returns>The peer address of the game server (e.g. `127.0.0.1:30120`), or NULL if not available.</returns>
	]]

native "GET_ENTITY_COORDS"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_DUI_HANDLE"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
<summary>
Returns the NUI window handle for a specified DUI browser object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<returns>The NUI window handle, for use in e.g. CREATE_RUNTIME_TEXTURE_FROM_DUI_HANDLE.</returns>
	]]

native "GET_ENTITY_HEADING"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "float"
	doc [[!
	]]

native "GET_ENTITY_MODEL"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
	]]

native "GET_ENTITY_POPULATION_TYPE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_ENTITY_ROTATION"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_ENTITY_ROTATION_VELOCITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_ENTITY_SCRIPT"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_ENTITY_VELOCITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "Vector3"
	doc [[!
	]]

native "GET_ENTITY_TYPE"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_GAME_TIMER"
	ns "CFX"
    apiset "server"
	returns "long"
	doc [[!
<summary>
Gets the current game timer in milliseconds.
</summary>
<returns>The game time.</returns>
	]]

native "GET_HASH_KEY"
	arguments {
		charPtr "model",
	}
	ns "CFX"
    apiset "server"
	returns "Hash"
	doc [[!
<summary>
This native converts the passed string to a hash.
</summary>
	]]

native "GET_HOST_ID"
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_INSTANCE_ID"
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_INVOKING_RESOURCE"
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_NUI_CURSOR_POSITION"
	arguments {
		intPtr "x",
		intPtr "y",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "GET_NUM_PLAYER_INDICES"
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_NUM_PLAYER_IDENTIFIERS"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_NUM_RESOURCE_METADATA"
	arguments {
		charPtr "resourceName",
		charPtr "metadataKey",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
<summary>
Gets the amount of metadata values with the specified key existing in the specified resource's manifest.
See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
</summary>
<param name="resourceName">The resource name.</param>
<param name="metadataKey">The key to look up in the resource manifest.</param>
	]]

native "GET_NUM_RESOURCES"
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
	]]

native "GET_PASSWORD_HASH"
	arguments {
		charPtr "password",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PED_EYE_COLOR"
	arguments {
		Ped "ped",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
A getter for [\_SET_PED_EYE_COLOR](#_0x50B56988B170AFDF). Returns -1 if fails to get.
</summary>
<param name="ped">The target ped</param>
<returns>Returns ped's eye colour, or -1 if fails to get.</returns>
	]]

native "GET_PED_FACE_FEATURE"
	arguments {
		Ped "ped",
		int "index",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
A getter for [\_SET_PED_FACE_FEATURE](#_0x71A5C1DBA060049E). Returns 0.0 if fails to get.
</summary>
<param name="ped">The target ped</param>
<param name="index">Face feature index</param>
<returns>Returns ped's face feature value, or 0.0 if fails to get.</returns>
	]]

native "GET_PED_HEAD_OVERLAY_DATA"
	arguments {
		Ped "ped",
		int "index",
		intPtr "overlayValue",
		intPtr "colourType",
		intPtr "firstColour",
		intPtr "secondColour",
		floatPtr "overlayOpacity",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
A getter for [SET_PED_HEAD_OVERLAY](#_0x48F44967FA05CC1E) and [\_SET_PED_HEAD_OVERLAY_COLOR](#_0x497BF74A7B9CB952) natives.
</summary>
<param name="ped">The target ped</param>
<param name="index">Overlay index</param>
<param name="overlayValue">Overlay value pointer</param>
<param name="colourType">Colour type pointer</param>
<param name="firstColour">First colour pointer</param>
<param name="secondColour">Second colour pointer</param>
<param name="overlayOpacity">Opacity pointer</param>
<returns>Returns ped's head overlay data.</returns>
	]]

native "GET_PLAYER_ENDPOINT"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_FROM_INDEX"
	arguments {
		int "index",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_FROM_SERVER_ID"
	arguments {
		int "serverId",
	}
	ns "CFX"
    apiset "client"
	returns "Player"
	doc [[!
	]]

native "GET_PLAYER_GUID"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_LAST_MSG"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_IDENTIFIER"
	arguments {
		charPtr "playerSrc",
		int "identifier",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_NAME"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
	]]

native "GET_PLAYER_PED"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "Entity"
	doc [[!
	]]

native "GET_PLAYER_PING"
	arguments {
		charPtr "playerSrc",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "GET_PLAYER_SERVER_ID"
	arguments {
		Player "player",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_REGISTERED_COMMANDS"
	ns "CFX"
    apiset "shared"
	returns "object"
	doc [[!
<summary>
Returns all commands that are registered in the command system.
The data returned adheres to the following layout:

```
[
{
"name": "cmdlist"
},
{
"name": "command1"
}
]
```
</summary>
<returns>An object containing registered commands.</returns>
	]]

native "GET_RESOURCE_BY_FIND_INDEX"
	arguments {
		int "findIndex",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "GET_RESOURCE_KVP_INT"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_RESOURCE_KVP_FLOAT"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_RESOURCE_KVP_STRING"
	arguments {
		charPtr "key",
	}
	ns "CFX"
    apiset "client"
	returns "charPtr"
	doc [[!
	]]

native "GET_RESOURCE_PATH"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
Returns the physical on-disk path of the specified resource.
</summary>
<param name="resourceName">The name of the resource.</param>
<returns>The resource directory name, possibly without trailing slash.</returns>
	]]

native "GET_RESOURCE_METADATA"
	arguments {
		charPtr "resourceName",
		charPtr "metadataKey",
		int "index",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Gets the metadata value at a specified key/index from a resource's manifest.
See also: [Resource manifest](https://docs.fivem.net/resources/manifest/)
</summary>
<param name="resourceName">The resource name.</param>
<param name="metadataKey">The key in the resource manifest.</param>
<param name="index">The value index, in a range from [0..GET_NUM_RESOURCE_METDATA-1].</param>
	]]

native "GET_RESOURCE_STATE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Returns the current state of the specified resource.
</summary>
<param name="resourceName">The name of the resource.</param>
<returns>The resource state. One of `"missing", "started", "starting", "stopped", "stopping", "uninitialized" or "unknown"`.</returns>
	]]

native "GET_RUNTIME_TEXTURE_PITCH"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the row pitch of the specified runtime texture, for use when creating data for `SET_RUNTIME_TEXTURE_ARGB_DATA`.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The row pitch in bytes.</returns>
	]]

native "GET_RUNTIME_TEXTURE_HEIGHT"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the height of the specified runtime texture.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The height in pixels.</returns>
	]]

native "GET_RUNTIME_TEXTURE_WIDTH"
	arguments {
		long "tex",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the width of the specified runtime texture.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<returns>The width in pixels.</returns>
	]]

native "GET_VEHICLE_ALARM_TIME_LEFT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_ACCELERATION"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_CURRENT_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_CLUTCH"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_DASHBOARD_SPEED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_CURRENT_RPM"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_FUEL_LEVEL"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_ENGINE_TEMPERATURE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_HANDBRAKE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "GET_VEHICLE_GRAVITY_AMOUNT"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_HANDLING_INT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as an integer value.
Example: `local modelFlags = GetVehicleHandlingInt(vehicle, 'CHandlingData', 'strModelFlags')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_HIGH_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_HANDLING_FLOAT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as a floating-point value.
Example: `local fSteeringLock = GetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>A floating-point value.</returns>
	]]

native "GET_VEHICLE_INDICATOR_LIGHTS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Gets the vehicle indicator light state. 0 = off, 1 = left, 2 = right, 3 = both
</summary>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_HANDLING_VECTOR"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
	}
	ns "CFX"
    apiset "client"
	returns "Vector3"
	doc [[!
<summary>
Returns the effective handling data of a vehicle as a vector value.
Example: `local inertiaMultiplier = GetVehicleHandlingVector(vehicle, 'CHandlingData', 'vecInertiaMultiplier')`
</summary>
<param name="vehicle">The vehicle to obtain data for.</param>
<param name="class_">The handling class to get. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to get. These match the keys in `handling.meta`.</param>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_NEXT_GEAR"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_OIL_LEVEL"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_NUMBER_OF_WHEELS"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "GET_VEHICLE_STEERING_SCALE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_STEERING_ANGLE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_TURBO_PRESSURE"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_SPEED"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Gets speed of a wheel at the tyre.
Max number of wheels can be retrieved with the native GET_VEHICLE_NUMBER_OF_WHEELS.
</summary>
<returns>An integer.</returns>
	]]

native "GET_VEHICLE_WHEEL_HEALTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_Y_ROTATION"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	alias "GET_VEHICLE_WHEEL_XROT"
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
	]]

native "GET_VEHICLE_WHEEL_X_OFFSET"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
	}
	ns "CFX"
    apiset "client"
	returns "float"
	doc [[!
<summary>
Returns the offset of the specified wheel relative to the wheel's axle center.
</summary>
	]]

native "INVOKE_FUNCTION_REFERENCE"
	arguments {
		charPtr "referenceIdentity",
		charPtr "argsSerialized",
		int "argsLength",
		intPtr "retvalLength",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
	]]

native "HAS_MINIMAP_OVERLAY_LOADED"
	arguments {
		int "id",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the specific minimap overlay has loaded.
</summary>
<param name="id">A minimap overlay ID.</param>
<returns>A boolean indicating load status.</returns>
	]]

native "IS_DUI_AVAILABLE"
	arguments {
		long "duiObject",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not a browser is created for a specified DUI browser object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<returns>A boolean indicating TRUE if the browser is created.</returns>
	]]

native "IS_ACE_ALLOWED"
	arguments {
		charPtr "object",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_PLAYER_ACE_ALLOWED"
	arguments {
		charPtr "playerSrc",
		charPtr "object",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "IS_DUPLICITY_VERSION"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Gets whether or not this is the CitizenFX server.
</summary>
<returns>A boolean value.</returns>
	]]

native "IS_PRINCIPAL_ACE_ALLOWED"
	arguments {
		charPtr "principal",
		charPtr "object",
	}
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_ALARM_SET"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_STREAMING_FILE_READY"
	arguments {
		charPtr "registerAs",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Returns whether an asynchronous streaming file registration completed.
</summary>
<param name="registerAs">The file name to check, for example `asset.ydr`.</param>
<returns>Whether or not the streaming file has been registered.</returns>
	]]

native "IS_VEHICLE_ENGINE_STARTING"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_NEEDS_TO_BE_HOTWIRED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_WANTED"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "IS_VEHICLE_INTERIOR_LIGHT_ON"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_ENTITY_FROM_NETWORK_ID"
	arguments {
		int "netId",
	}
	ns "CFX"
    apiset "server"
	returns "Entity"
	doc [[!
	]]

native "IS_VEHICLE_PREVIOUSLY_OWNED_BY_PLAYER"
	arguments {
		Vehicle "vehicle",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "NETWORK_GET_ENTITY_OWNER"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "shared"
	returns "int"
	doc [[!
<summary>
Returns the owner ID of the specified entity.
</summary>
<param name="entity">The entity to get the owner for.</param>
<returns>On the server, the server ID of the entity owner. On the client, returns the player/slot ID of the entity owner.</returns>
	]]

native "LOAD_RESOURCE_FILE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "shared"
	returns "charPtr"
	doc [[!
<summary>
Reads the contents of a text file in a specified resource.
If executed on the client, this file has to be included in `files` in the resource manifest.
Example: `local data = LoadResourceFile("devtools", "data.json")`
</summary>
<param name="resourceName">The resource name.</param>
<param name="fileName">The file in the resource.</param>
<returns>The file contents</returns>
	]]

native "PERFORM_HTTP_REQUEST_INTERNAL"
	arguments {
		charPtr "requestData",
		int "requestDataLength",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "NETWORK_GET_NETWORK_ID_FROM_ENTITY"
	arguments {
		Entity "entity",
	}
	ns "CFX"
    apiset "server"
	returns "int"
	doc [[!
	]]

native "REGISTER_ARCHETYPES"
	arguments {
		func "factory",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a set of archetypes with the game engine. These should match `CBaseArchetypeDef` class information from the game.
</summary>
<param name="factory">A function returning a list of archetypes.</param>
	]]

native "REGISTER_COMMAND"
	arguments {
		charPtr "commandName",
		func "handler",
		BOOL "restricted",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
Registered commands can be executed by entering them in the client console (this works for client side and server side registered commands). Or by entering them in the server console/through an RCON client (only works for server side registered commands). Or if you use a supported chat resource, like the default one provided in the cfx-server-data repository, then you can enter the command in chat by prefixing it with a `/`.

Commands registered using this function can also be executed by resources, using the [`ExecuteCommand` native](#_0x561C060B).

The restricted bool is not used on the client side. Permissions can only be checked on the server side, so if you want to limit your command with an ace permission automatically, make it a server command (by registering it in a server script).

**Example result**:

![](https://i.imgur.com/TaCnG09.png)
</summary>
<param name="commandName">The command you want to register.</param>
<param name="handler">A handler function that gets called whenever the command is executed.</param>
<param name="restricted">If this is a server command and you set this to true, then players will need the command.yourCommandName ace permission to execute this command.</param>
	]]

native "REGISTER_FONT_FILE"
	arguments {
		charPtr "fileName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Registers a specified .gfx file as GFx font library.
The .gfx file has to be registered with the streamer already.
</summary>
<param name="fileName">The name of the .gfx file, without extension.</param>
	]]

native "REGISTER_ENTITIES"
	arguments {
		func "factory",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a set of entities with the game engine. These should match `CEntityDef` class information from the game.
At this time, this function **should not be used in a live environment**.
</summary>
<param name="factory">A function returning a list of entities.</param>
	]]

native "REGISTER_FONT_ID"
	arguments {
		charPtr "fontName",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
<summary>
Registers a specified font name for use with text draw commands.
</summary>
<param name="fontName">The name of the font in the GFx font library.</param>
<returns>An index to use with [SET_TEXT_FONT](#_0x66E0276CC5F6B9DA) and similar natives.</returns>
	]]

native "REGISTER_NUI_CALLBACK_TYPE"
	arguments {
		charPtr "callbackType",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "REGISTER_RESOURCE_ASSET"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
	}
	ns "CFX"
    apiset "server"
	returns "charPtr"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a cached resource asset with the resource system, similar to the automatic scanning of the `stream/` folder.
</summary>
<param name="resourceName">The resource to add the asset to.</param>
<param name="fileName">A file name in the resource.</param>
<returns>A cache string to pass to `REGISTER_STREAMING_FILE_FROM_CACHE` on the client.</returns>
	]]

native "REGISTER_RESOURCE_BUILD_TASK_FACTORY"
	arguments {
		charPtr "factoryId",
		func "factoryFn",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
Registers a build task factory for resources.
The function should return an object (msgpack map) with the following fields:

```
{
// returns whether the specific resource should be built
shouldBuild = func(resourceName: string): bool,

// asynchronously start building the specific resource.
// call cb when completed
build = func(resourceName: string, cb: func(success: bool, status: string): void): void
}
```
</summary>
<param name="factoryId">The identifier for the build task.</param>
<param name="factoryFn">The factory function.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_CACHE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
		charPtr "cacheString",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a dynamic streaming asset from the server with the GTA streaming module system.
</summary>
<param name="resourceName">The resource to add the asset to.</param>
<param name="fileName">A file name in the resource.</param>
<param name="cacheString">The string returned from `REGISTER_RESOURCE_ASSET` on the server.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_KVS"
	arguments {
		charPtr "kvsKey",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a KVP value as an asset with the GTA streaming module system. This function currently won't work.
</summary>
<param name="kvsKey">The KVP key in the current resource to register as an asset.</param>
	]]

native "REGISTER_STREAMING_FILE_FROM_URL"
	arguments {
		charPtr "registerAs",
		charPtr "url",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
**Experimental**: This native may be altered or removed in future versions of CitizenFX without warning.

Registers a file from an URL as a streaming asset in the GTA streaming subsystem. This will asynchronously register the asset, and caching is done based on the URL itself - cache headers are ignored.

Use `IS_STREAMING_FILE_READY` to check if the asset has been registered successfully.
</summary>
<param name="registerAs">The file name to register as, for example `asset.ydr`.</param>
<param name="url">The URL to fetch the asset from.</param>
	]]

native "REMOVE_REPLACE_TEXTURE"
	arguments {
		charPtr "origTxd",
		charPtr "origTxn",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Experimental natives, please do not use in a live environment.
</summary>
	]]

native "SEND_DUI_MESSAGE"
	arguments {
		long "duiObject",
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sends a message to the specific DUI root page. This is similar to SEND_NUI_MESSAGE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="jsonString">The message, encoded as JSON.</param>
	]]

native "SAVE_RESOURCE_FILE"
	arguments {
		charPtr "resourceName",
		charPtr "fileName",
		charPtr "data",
		int "dataLength",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
<summary>
Writes the specified data to a file in the specified resource.
Using a length of `-1` will automatically detect the length assuming the data is a C string.
</summary>
<param name="resourceName">The name of the resource.</param>
<param name="fileName">The name of the file.</param>
<param name="data">The data to write to the file.</param>
<param name="dataLength">The length of the written data.</param>
<returns>A value indicating if the write succeeded.</returns>
	]]

native "SEND_DUI_MOUSE_MOVE"
	arguments {
		long "duiObject",
		int "x",
		int "y",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse move' event for a DUI object. Coordinates are in browser space.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="x">The mouse X position.</param>
<param name="y">The mouse Y position.</param>
	]]

native "SEND_DUI_MOUSE_DOWN"
	arguments {
		long "duiObject",
		charPtr "button",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse down' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="button">Either `'left'`, `'middle'` or `'right'`.</param>
	]]

native "SEND_DUI_MOUSE_WHEEL"
	arguments {
		long "duiObject",
		int "deltaY",
		int "deltaX",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse wheel' event for a DUI object.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="deltaY">The wheel Y delta.</param>
<param name="deltaX">The wheel X delta.</param>
	]]

native "SEND_DUI_MOUSE_UP"
	arguments {
		long "duiObject",
		charPtr "button",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Injects a 'mouse up' event for a DUI object. Coordinates are expected to be set using SEND_DUI_MOUSE_MOVE.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="button">Either `'left'`, `'middle'` or `'right'`.</param>
	]]

native "SEND_LOADING_SCREEN_MESSAGE"
	arguments {
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
<summary>
Sends a message to the `loadingScreen` NUI frame, which contains the HTML page referenced in `loadscreen` resources.
</summary>
<param name="jsonString">The JSON-encoded message.</param>
<returns>A success value.</returns>
	]]

native "SEND_NUI_MESSAGE"
	arguments {
		charPtr "jsonString",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_CONVAR_REPLICATED"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_CONVAR"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_CONVAR_SERVER_INFO"
	arguments {
		charPtr "varName",
		charPtr "value",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_DISCORD_APP_ID"
	arguments {
		charPtr "appId",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the app id for the discord rich presence implementation.
</summary>
<param name="appId">A valid Discord API App Id, can be generated at <https://discordapp.com/developers/applications/></param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_SMALL"
	arguments {
		charPtr "assetName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the small image asset for the discord rich presence implementation.
</summary>
<param name="assetName">The name of a valid asset registered on Discordapp's developer dashboard. Note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_TEXT"
	arguments {
		charPtr "text",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the hover text of the image asset for the discord rich presence implementation.
</summary>
<param name="text">Text to be displayed when hovering over image asset. Note that you must also set a valid image asset using the SET_DISCORD_RICH_PRESENCE_ASSET native.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET"
	arguments {
		charPtr "assetName",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the image asset for the discord rich presence implementation.
</summary>
<param name="assetName">The name of a valid asset registered on Discordapp's developer dashboard. note that the asset has to be registered under the same discord API application set using the SET_DISCORD_APP_ID native.</param>
	]]

native "SET_DUI_URL"
	arguments {
		long "duiObject",
		charPtr "url",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Navigates the specified DUI browser to a different URL.
</summary>
<param name="duiObject">The DUI browser handle.</param>
<param name="url">The new URL.</param>
	]]

native "SET_DISCORD_RICH_PRESENCE_ASSET_SMALL_TEXT"
	arguments {
		charPtr "text",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
This native sets the hover text of the small image asset for the discord rich presence implementation.
</summary>
<param name="text">Text to be displayed when hovering over small image asset. Note that you must also set a valid small image asset using the SET_DISCORD_RICH_PRESENCE_ASSET_SMALL native.</param>
	]]

native "SET_HANDLING_FLOAT"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingFloat('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The floating-point value to set.</param>
	]]

native "SET_GAME_TYPE"
	arguments {
		charPtr "gametypeName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_HANDLING_VECTOR"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Vector3 "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingVector('AIRTUG', 'CHandlingData', 'vecCentreOfMassOffset', vector3(0.0, 0.0, -5.0))`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The Vector3 value to set.</param>
	]]

native "SET_HANDLING_FIELD"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Any "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
Example: `SetHandlingField('AIRTUG', 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The value to set.</param>
	]]

native "SET_MANUAL_SHUTDOWN_LOADING_SCREEN_NUI"
	arguments {
		BOOL "manualShutdown",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets whether or not `SHUTDOWN_LOADING_SCREEN` automatically shuts down the NUI frame for the loading screen. If this is enabled,
you will have to manually invoke `SHUTDOWN_LOADING_SCREEN_NUI` whenever you want to hide the NUI loading screen.
</summary>
<param name="manualShutdown">TRUE to manually shut down the loading screen NUI.</param>
	]]

native "SET_MINIMAP_OVERLAY_DISPLAY"
	arguments {
		int "miniMap",
		float "x",
		float "y",
		float "xScale",
		float "yScale",
		float "alpha",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the display info for a minimap overlay.
</summary>
<param name="miniMap">The minimap overlay ID.</param>
<param name="x">The X position for the overlay. This is equivalent to a game coordinate X.</param>
<param name="y">The Y position for the overlay. This is equivalent to a game coordinate Y, except that it's inverted (gfxY = -gameY).</param>
<param name="xScale">The X scale for the overlay. This is equivalent to the Flash \_xscale property, therefore 100 = 100%.</param>
<param name="yScale">The Y scale for the overlay. This is equivalent to the Flash \_yscale property.</param>
<param name="alpha">The alpha value for the overlay. This is equivalent to the Flash \_alpha property, therefore 100 = 100%.</param>
	]]

native "SET_HANDLING_INT"
	arguments {
		charPtr "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a global handling override for a specific vehicle class. The name is supposed to match the `handlingName` field from handling.meta.
</summary>
<param name="vehicle">The vehicle class to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The integer value to set.</param>
	]]

native "SET_MODEL_HEADLIGHT_CONFIGURATION"
	arguments {
		Hash "modelHash",
		float "ratePerSecond",
		float "headlightRotation",
		BOOL "invertRotation",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_HTTP_HANDLER"
	arguments {
		func "handler",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_PLAYER_TALKING_OVERRIDE"
	arguments {
		Player "player",
		BOOL "state",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
the status of default voip system. It affects on `NETWORK_IS_PLAYER_TALKING` and `mp_facial` animation.
This function doesn't need to be called every frame, it works like a switcher.
</summary>
<param name="player">The target player.</param>
<param name="state">Overriding state.</param>
	]]

native "SET_MAP_NAME"
	arguments {
		charPtr "mapName",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "SET_RESOURCE_KVP_FLOAT"
	arguments {
		charPtr "key",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RICH_PRESENCE"
	arguments {
		charPtr "presenceState",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets the player's rich presence detail state for social platform providers to a specified string.
</summary>
<param name="presenceState">The rich presence string to set.</param>
	]]

native "SET_NUI_FOCUS"
	arguments {
		BOOL "hasFocus",
		BOOL "hasCursor",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RUNTIME_TEXTURE_ARGB_DATA"
	arguments {
		long "tex",
		charPtr "buffer",
		int "length",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_RESOURCE_KVP"
	arguments {
		charPtr "key",
		charPtr "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RESOURCE_KVP_INT"
	arguments {
		charPtr "key",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_SNAKEOIL_FOR_ENTRY"
	arguments {
		charPtr "name",
		charPtr "path",
		charPtr "data",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_ALARM_TIME_LEFT"
	arguments {
		Vehicle "vehicle",
		int "time",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_RUNTIME_TEXTURE_PIXEL"
	arguments {
		long "tex",
		int "x",
		int "y",
		int "r",
		int "g",
		int "b",
		int "a",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a pixel in the specified runtime texture. This will have to be committed using `COMMIT_RUNTIME_TEXTURE` to have any effect.
</summary>
<param name="tex">A handle to the runtime texture.</param>
<param name="x">The X position of the pixel to change.</param>
<param name="y">The Y position of the pixel to change.</param>
<param name="r">The new R value (0-255).</param>
<param name="g">The new G value (0-255).</param>
<param name="b">The new B value (0-255).</param>
<param name="a">The new A value (0-255).</param>
	]]

native "SET_VEHICLE_CLUTCH"
	arguments {
		Vehicle "vehicle",
		float "clutch",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_TEXT_CHAT_ENABLED"
	arguments {
		BOOL "enabled",
	}
	ns "CFX"
    apiset "client"
	returns "BOOL"
	doc [[!
	]]

native "SET_VEHICLE_ENGINE_TEMPERATURE"
	arguments {
		Vehicle "vehicle",
		float "temperature",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_FUEL_LEVEL"
	arguments {
		Vehicle "vehicle",
		float "level",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_AUTO_REPAIR_DISABLED"
	arguments {
		Vehicle "vehicle",
		BOOL "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Disables the vehicle from being repaired when a vehicle extra is enabled.
</summary>
<param name="vehicle">The vehicle to set disable auto vehicle repair.</param>
<param name="value">Setting the value to  true prevents the vehicle from being repaired when a extra is enabled. Setting the value to false allows the vehicle from being repaired when a extra is enabled.</param>
	]]

native "SET_VEHICLE_HANDLING_FIELD"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Any "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FIELD`, this might require some experimentation.
Example: `SetVehicleHandlingField(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The value to set.</param>
	]]

native "SET_VEHICLE_CURRENT_RPM"
	arguments {
		Vehicle "vehicle",
		float "rpm",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_HANDLING_INT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		int "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_INT`, this might require some experimentation.
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The integer value to set.</param>
	]]

native "SET_VEHICLE_GRAVITY_AMOUNT"
	arguments {
		Vehicle "vehicle",
		float "gravity",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_HIGH_GEAR"
	arguments {
		Vehicle "vehicle",
		int "gear",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_HANDLING_FLOAT"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		float "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_FLOAT`, this might require some experimentation.
Example: `SetVehicleHandlingFloat(vehicle, 'CHandlingData', 'fSteeringLock', 360.0)`
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The floating-point value to set.</param>
	]]

native "SET_VEHICLE_OIL_LEVEL"
	arguments {
		Vehicle "vehicle",
		float "level",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_HANDLING_VECTOR"
	arguments {
		Vehicle "vehicle",
		charPtr "class_",
		charPtr "fieldName",
		Vector3 "value",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Sets a handling override for a specific vehicle. Certain handling flags can only be set globally using `SET_HANDLING_VECTOR`, this might require some experimentation.
</summary>
<param name="vehicle">The vehicle to set data for.</param>
<param name="class_">The handling class to set. Only "CHandlingData" is supported at this time.</param>
<param name="fieldName">The field name to set. These match the keys in `handling.meta`.</param>
<param name="value">The Vector3 value to set.</param>
	]]

native "SET_VEHICLE_STEERING_SCALE"
	arguments {
		Vehicle "vehicle",
		float "scale",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_X_OFFSET"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "offset",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Adjusts the offset of the specified wheel relative to the wheel's axle center.
Needs to be called every frame in order to function properly, as GTA will reset the offset otherwise.
This function can be especially useful to set the track width of a vehicle, for example:

```
function SetVehicleFrontTrackWidth(vehicle, width)
SetVehicleWheelXOffset(vehicle, 0, -width/2)
SetVehicleWheelXOffset(vehicle, 1, width/2)
end
```
</summary>
	]]

native "SET_VEHICLE_STEERING_ANGLE"
	arguments {
		Vehicle "vehicle",
		float "angle",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_TURBO_PRESSURE"
	arguments {
		Vehicle "vehicle",
		float "pressure",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_Y_ROTATION"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "value",
	}
	alias "SET_VEHICLE_WHEEL_XROT"
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "SET_VEHICLE_WHEEL_HEALTH"
	arguments {
		Vehicle "vehicle",
		int "wheelIndex",
		float "health",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
	]]

native "START_FIND_KVP"
	arguments {
		charPtr "prefix",
	}
	ns "CFX"
    apiset "client"
	returns "int"
	doc [[!
	]]

native "STOP_RESOURCE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "SHUTDOWN_LOADING_SCREEN_NUI"
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
Shuts down the `loadingScreen` NUI frame, similarly to `SHUTDOWN_LOADING_SCREEN`.
</summary>
	]]

native "TEMP_BAN_PLAYER"
	arguments {
		charPtr "playerSrc",
		charPtr "reason",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
	]]

native "START_RESOURCE"
	arguments {
		charPtr "resourceName",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "TRIGGER_SERVER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "client"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerServerEvent.
</summary>
	]]

native "VERIFY_PASSWORD_HASH"
	arguments {
		charPtr "password",
		charPtr "hash",
	}
	ns "CFX"
    apiset "server"
	returns "BOOL"
	doc [[!
	]]

native "TRIGGER_CLIENT_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventTarget",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "server"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerClientEvent.
</summary>
	]]

native "TRIGGER_EVENT_INTERNAL"
	arguments {
		charPtr "eventName",
		charPtr "eventPayload",
		int "payloadLength",
	}
	ns "CFX"
    apiset "shared"
	returns "void"
	doc [[!
<summary>
The backing function for TriggerEvent.
</summary>
	]]

native "WAS_EVENT_CANCELED"
	ns "CFX"
    apiset "shared"
	returns "BOOL"
	doc [[!
<summary>
Returns whether or not the currently executing event was canceled.
</summary>
<returns>A boolean.</returns>
	]]
