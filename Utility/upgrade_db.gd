extends Node

const ICON_PATH = "res://Textures/Items/Upgrades/"
const WEAPON_PATH = "res://Textures/Items/Weapons/"
const UPGRADES = {
	"icespear1": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "Lanza de hielo",
		"details": "Lanzas una lanza de hielo a un enemigo aleatorio",
		"level": "Nivel: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"icespear2": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "Lanza de hielo",
		"details": "Lanzas una lanza de hielo adicional",
		"level": "Nivel: 2",
		"prerequisite": ["icespear1"],
		"type": "weapon"
	},
	"icespear3": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "Lanza de hielo",
		"details": "Las lanzas de hielo atraviesan a otro enemigo y causan +3 de daño",
		"level": "Nivel: 3",
		"prerequisite": ["icespear2"],
		"type": "weapon"
	},
	"icespear4": {
		"icon": WEAPON_PATH + "ice_spear.png",
		"displayname": "Lanza de hielo",
		"details": "Lanzas dos lanzas de hielo adicionales",
		"level": "Nivel: 4",
		"prerequisite": ["icespear3"],
		"type": "weapon"
	},
	"javelin1": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "Javalina",
		"details": "Una jabalina mágica que ataca a los enemigos en línea recta",
		"level": "Nivel: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"javelin2": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "Javalina",
		"details": "La javalina ahora atacará a un enemigo adicional",
		"level": "nivel: 2",
		"prerequisite": ["javelin1"],
		"type": "weapon"
	},
	"javelin3": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "Javalina",
		"details": "La javalina ahora atacará a otro enemigo adicional por ataque",
		"level": "Nivel: 3",
		"prerequisite": ["javelin2"],
		"type": "weapon"
	},
	"javelin4": {
		"icon": WEAPON_PATH + "javelin_3_new_attack.png",
		"displayname": "Javelin",
		"details": "La jabalina ahora hace +5 de daño por ataque",
		"level": "Nivel: 4",
		"prerequisite": ["javelin3"],
		"type": "weapon"
	},
	"tornado1": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "Tornado",
		"details": "Creas un tornado que golpea al azar a los enemigos",
		"level": "Level: 1",
		"prerequisite": [],
		"type": "weapon"
	},
	"tornado2": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "Tornado",
		"details": "Creas un tornado adicional",
		"level": "Nivel: 2",
		"prerequisite": ["tornado1"],
		"type": "weapon"
	},
	"tornado3": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "Tornado",
		"details": "El tiempo de reutilización de Tornado se reduce en 0,5 segundos",
		"level": "Nivel: 3",
		"prerequisite": ["tornado2"],
		"type": "weapon"
	},
	"tornado4": {
		"icon": WEAPON_PATH + "tornado.png",
		"displayname": "Tornado",
		"details": "Se crea un tornado adicional y el retroceso aumenta en un 25%",
		"level": "Nivel: 4",
		"prerequisite": ["tornado3"],
		"type": "weapon"
	},
	"armor1": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "Armadura",
		"details": "Reduces el daño recibido en 1 punto",
		"level": "Nivel: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"armor2": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "Armadura",
		"details": "Reduces el daño recibido en 2 puntos",
		"level": "Nivel: 2",
		"prerequisite": ["armor1"],
		"type": "upgrade"
	},
	"armor3": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "Armadura",
		"details": "Reduces el daño recibido en un total de 3 puntos",
		"level": "Nivel: 3",
		"prerequisite": ["armor2"],
		"type": "upgrade"
	},
	"armor4": {
		"icon": ICON_PATH + "helmet_1.png",
		"displayname": "Armadura",
		"details": "Reduces el daño recibido en un total de 4 puntos",
		"level": "Nivel: 4",
		"prerequisite": ["armor3"],
		"type": "upgrade"
	},
	"speed1": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "Botas",
		"details": "Velocidad de movimiento aumentada en un 50%",
		"level": "Nivel: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"speed2": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "Botas",
		"details": "Velocidad de movimiento aumentada en un 100% ",
		"level": "Nivel: 2",
		"prerequisite": ["speed1"],
		"type": "upgrade"
	},
	"speed3": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "Botas",
		"details": "Velocidad de movimiento aumentada en un 150%",
		"level": "Nivel: 3",
		"prerequisite": ["speed2"],
		"type": "upgrade"
	},
	"speed4": {
		"icon": ICON_PATH + "boots_4_green.png",
		"displayname": "Botas",
		"details": "Velocidad de movimiento aumentada en un 200%",
		"level": "Nivel: 4",
		"prerequisite": ["speed3"],
		"type": "upgrade"
	},
	"tome1": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "Libro",
		"details": "Aumenta el tamaño de los hechizos un 10%",
		"level": "Nivel: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"tome2": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "Libro",
		"details": "Aumenta el tamaño de los hechizos un 20%",
		"level": "Nivel: 2",
		"prerequisite": ["tome1"],
		"type": "upgrade"
	},
	"tome3": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "Libro",
		"details": "Aumenta el tamaño de los hechizos un 30%",
		"level": "Nivel: 3",
		"prerequisite": ["tome2"],
		"type": "upgrade"
	},
	"tome4": {
		"icon": ICON_PATH + "thick_new.png",
		"displayname": "Libros",
		"details": "Aumenta el tamaño de los hechizos un 40%",
		"level": "Nivel: 4",
		"prerequisite": ["tome3"],
		"type": "upgrade"
	},
	"scroll1": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "Pergamino",
		"details": "Disminuye el tiempo de reutilización de los hechizos en un 5%",
		"level": "Nivel: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"scroll2": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "Pergamino",
		"details": "Disminuye el tiempo de reutilización de los hechizos en un 10%",
		"level": "Nivel: 2",
		"prerequisite": ["scroll1"],
		"type": "upgrade"
	},
	"scroll3": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "Pergamino",
		"details": "Disminuye el tiempo de reutilización de los hechizos en un 15%",
		"level": "Nivel: 3",
		"prerequisite": ["scroll2"],
		"type": "upgrade"
	},
	"scroll4": {
		"icon": ICON_PATH + "scroll_old.png",
		"displayname": "Scroll",
		"details": "Disminuye el tiempo de reutilización de los hechizos en un 20%",
		"level": "Nivel: 4",
		"prerequisite": ["scroll3"],
		"type": "upgrade"
	},
	"ring1": {
		"icon": ICON_PATH + "urand_mage.png",
		"displayname": "Anillo",
		"details": "Tus hechizos ahora tienen un ataque adicional",
		"level": "Nivel: 1",
		"prerequisite": [],
		"type": "upgrade"
	},
	"ring2": {
		"icon": ICON_PATH + "urand_mage.png",
		"displayname": "Anillo",
		"details": "Tus hechizos ahora tienen dos ataques adicionales",
		"level": "Nivel: 2",
		"prerequisite": ["ring1"],
		"type": "upgrade"
	},
	"food": {
		"icon": ICON_PATH + "chunk.png",
		"displayname": "Food",
		"details": "Te cura 20 puntos de vida",
		"level": "N/A",
		"prerequisite": [],
		"type": "item"
	}
}
