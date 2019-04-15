insert into integration_actions
( server_id,
  integration_id,
  integration_response_type,
  integration_response_value,
  integration_action_type,
  integration_action_value )
values 
( :server_id:,
  :integration_id:,
  :integration_response_type:,
  :integration_response_value:,
  :integration_action_type:,
  :integration_action_value: );
