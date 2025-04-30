extends PanelContainer

@onready var tool_axe: Button = $MarginContainer/HBoxContainer/ToolAxe
@onready var tool_tilling: Button = $MarginContainer/HBoxContainer/ToolTilling
@onready var tool_watering_can: Button = $MarginContainer/HBoxContainer/ToolWateringCan
@onready var tool_corn: Button = $MarginContainer/HBoxContainer/ToolCorn
@onready var tool_tomatoto: Button = $MarginContainer/HBoxContainer/ToolTomatoto


func _on_tool_axe_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.AxeWood)
func _on_tool_tilling_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.TillGround)
func _on_tool_watering_can_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.WaterCrops)
func _on_tool_corn_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PlanCorn)
func _on_tool_tomatoto_pressed() -> void:
	ToolManager.select_tool(DataTypes.Tools.PlantTomato)

func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index==MOUSE_BUTTON_RIGHT:
			ToolManager.select_tool(DataTypes.Tools.None)
			tool_axe.release_focus()
			tool_tilling.release_focus()
			tool_watering_can.release_focus()
			tool_corn.release_focus()
			tool_tomatoto.release_focus()
	
