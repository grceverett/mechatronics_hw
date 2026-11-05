function models = getModels(optns)
%-------------------------------------------------------------------------- 
% getModels
% This method will create a service client that talks to Gazebo's
% get_world_properties to get all model names.
%
% Inputs: (dict) optns
% Output: (gazebo_msgs/GetWorldPropertiesResponse cell): models
%--------------------------------------------------------------------------
    % TODO: 01 Create model_client_msg
    modelClient = rossvcclient("/gazebo/get_world_properties");
    modelReq = rosmessage(modelClient);

    
    % TODO: 02 Call client and save models
    models = call(modelClient, modelReq);

end