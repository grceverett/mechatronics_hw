function resetWorld(optns)
%-------------------------------------------------------------------------- 
% resetWorld()
% Calls Gazebo service to reset the world
% Input: (dict) optns
% Output: None
%-------------------------------------------------------------------------- 
    disp('Resetting the world...');

    % TODO: 01 Create Empty Simulation message
    resetClient = rossvcclient("/gazebo/reset_world");
    resetReq = rosmessage(resetClient);

    % TODO: 02 Call reset service
    call(resetClient,resetReq);
end