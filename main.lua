local Exodia = RegisterMod("Exodia",1);

--TODO fix EXOIDA typo to correct EXODIA (Fausto you fucking idiot)
local ExoidasLeftArm  = Isaac.GetItemIdByName("Exoida's Left Arm" );
local ExoidasRightArm  = Isaac.GetItemIdByName("Exodia's Right Arm" );
local ExoidasLeftLeg = Isaac.GetItemIdByName("Exoida's Left Leg" );
local ExoidasRightLeg = Isaac.GetItemIdByName("Exoida's Right Leg" );
local ExoidasHead     = Isaac.GetItemIdByName("Exoida's Head" );

local function update(_mod)
	if Game():GetFrameCount()==1 then
		Isaac.Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE, ExoidasLeftArm, Vector(120,300),Vector(0,0),nil);
		Isaac.Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE, ExoidasLeftLeg, Vector(220,300),Vector(0,0),nil);
		Isaac.Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE, ExoidasRightArm, Vector(320,300),Vector(0,0),nil);
		Isaac.Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE, ExoidasRightLeg, Vector(420,300),Vector(0,0),nil);
		Isaac.Spawn(EntityType.ENTITY_PICKUP,PickupVariant.PICKUP_COLLECTIBLE, ExoidasHead, Vector(520,300),Vector(0,0),nil);
	end
end

local function render(_mod)
	Isaac.RenderText("EXODIA(EXOIDA) MOD",50,15,255,255,255,255);
end

Exodia:AddCallback(ModCallbacks.MC_POST_RENDER, render);
Exodia:AddCallback(ModCallbacks.MC_POST_UPDATE, update);		