 select 1 as server_or_channel, 0 as table_type, group_id as group_id, name as group_name, type as group_type,      '' as perm_id,          0 as perm_value,            0 as perm_negated,         0 as perm_skip, 0 as clientDBID, 0 as channelID from groups_channel             where server_id=:server_id: union
 select 1 as server_or_channel, 1 as table_type,      id1 as group_id,   '' as group_name,    0 as group_type, perm_id as perm_id, perm_value as perm_value, perm_negated as perm_negated, perm_skip as perm_skip, 0 as clientDBID, 0 as channelID from perm_channel_groups        where server_id=:server_id: union
 select 1 as server_or_channel, 2 as table_type, group_id as group_id,   '' as group_name,    0 as group_type,      '' as perm_id,          0 as perm_value,            0 as perm_negated,         0 as perm_skip, id1 as clientDBID, id2 as channelID from group_channel_to_client     where server_id=:server_id:;
