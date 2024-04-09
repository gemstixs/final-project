extends EquipabbleIdea

class_name harvesting

#what types of resourcenodes are effected; edit in Equip sprite under equipped idea
@export var effected_types : Array[ResourceNodeType] 

#damage amts possible for each idea
@export var min_amount : int = 1
@export var max_amount : int = 1

func interact_with_body(body):
	if (body is ResourceNode):
		for type in effected_types: #check for all types
			if(body.node_types.has(type)): #if the body has right type, idea can interact
				body.harvest(randi_range(min_amount, max_amount)) 
				#resource node will be harvested between min and max amts for the idea
