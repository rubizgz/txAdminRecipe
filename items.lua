return {
    ['bandage'] = {
        label = 'Vendaje',
        weight = 115,
    },

    ['burger'] = {
        label = 'Hamburguesa',
        weight = 220,
        client = {
            status = { hunger = 200000 },
            anim = 'eating',
            prop = 'burger',
            usetime = 2500,
        },
    },

    ['sprunk'] = {
        label = 'Sprunk',
        weight = 350,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_can_01`, pos = vec3(0.01, 0.01, 0.06), rot = vec3(5.0, 5.0, -180.5) },
            usetime = 2500,
        }
    },

    ['parachute'] = {
        label = 'Paracaídas',
        weight = 8000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 1500
        }
    },

    ['garbage'] = {
        label = 'Basura',
    },

    ['paperbag'] = {
        label = 'Bolsa de papel',
        weight = 1,
        stack = false,
        close = false,
        consume = 0
    },

    ['panties'] = {
        label = 'Bragas',
        weight = 10,
        consume = 0,
        client = {
            status = { thirst = -100000, stress = -25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_cs_panties_02`, pos = vec3(0.03, 0.0, 0.02), rot = vec3(0.0, -13.5, -1.5) },
            usetime = 2500,
        }
    },

    ['lockpick'] = {
        label = 'Ganzúa',
        weight = 90,
    },

    ['advancedlockpick'] = {
        label = 'Ganzúa avanzada',
        weight = 160,
    },

    ['phone'] = {
        label = 'Teléfono',
        weight = 190,
        stack = false,
        consume = 0,
        client = {
            add = function(total)
                if total > 0 then
                    pcall(function() return exports.npwd:setPhoneDisabled(false) end)
                end
            end,

            remove = function(total)
                if total < 1 then
                    pcall(function() return exports.npwd:setPhoneDisabled(true) end)
                end
            end
        }
    },

    ['mustard'] = {
        label = 'Mostaza',
        weight = 500,
        client = {
            status = { hunger = 25000, thirst = 25000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_food_mustard`, pos = vec3(0.01, 0.0, -0.07), rot = vec3(1.0, 1.0, -1.5) },
            usetime = 2500,
        }
    },

    ['water'] = {
        label = 'Agua',
        weight = 500,
        client = {
            status = { thirst = 200000 },
            anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
            prop = { model = `prop_ld_flow_bottle`, pos = vec3(0.03, 0.03, 0.02), rot = vec3(0.0, 0.0, -1.5) },
            usetime = 2500,
            cancel = true,
        }
    },

    ['armour'] = {
        label = 'Chaleco antibalas',
        weight = 3000,
        stack = false,
        client = {
            anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
            usetime = 3500
        }
    },

    ['clothing'] = {
        label = 'Ropa',
        consume = 0,
    },

    ['money'] = {
        label = 'Dinero',
    },

    ['black_money'] = {
        label = 'Dinero negro',
    },

    ['id_card'] = {
        label = 'Identificación',
    },

    ['driver_license'] = {
        label = 'Licencia de conducir',
    },

    ['weaponlicense'] = {
        label = 'Licencia de armas',
    },

    ['lawyerpass'] = {
        label = 'Pase de abogado',
    },

    ['radio'] = {
        label = 'Radio',
        weight = 1000,
        allowArmed = true,
        consume = 0,
        client = {
            event = 'mm_radio:client:use'
        }
    },

    ['jammer'] = {
        label = 'Emisor de radio',
        weight = 10000,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:usejammer'
        }
    },

    ['radiocell'] = {
        label = 'Pilas',
        weight = 1000,
        stack = true,
        allowArmed = true,
        client = {
            event = 'mm_radio:client:recharge'
        }
    },

    ['screwdriverset'] = {
        label = 'Juego de destornilladores',
        weight = 500,
    },

    ['electronickit'] = {
        label = 'Equipo electrónico',
        weight = 500,
    },

    ['cleaningkit'] = {
        label = 'Kit de limpieza',
        weight = 500,
    },

    ['repairkit'] = {
        label = 'Kit de reparación',
        weight = 2500,
    },

    ['advancedrepairkit'] = {
        label = 'Kit de reparación avanzado',
        weight = 4000,
    },

    ['diamond_ring'] = {
        label = 'Diamante',
        weight = 1500,
    },

    ['rolex'] = {
        label = 'Reloj',
        weight = 1500,
    },

    ['goldbar'] = {
        label = 'Lingote de oro',
        weight = 1500,
    },

    ['goldchain'] = {
        label = 'Cadena de oro',
        weight = 1500,
    },

    ['crack_baggy'] = {
        label = 'Bolsa de crack',
        weight = 100,
    },

    ['cokebaggy'] = {
        label = 'Bolsa de coca',
        weight = 100,
    },

    ['coke_brick'] = {
        label = 'Ladrillo de coca',
        weight = 2000,
    },

    ['coke_small_brick'] = {
        label = 'Paquete de coca',
        weight = 1000,
    },

    ['xtcbaggy'] = {
        label = 'Bolsa de éxtasis',
        weight = 100,
    },

    ['meth'] = {
        label = 'Metanfetamina',
        weight = 100,
    },

    ['oxy'] = {
        label = 'Oxicodona',
        weight = 100,
    },

    ['weed_brick'] = {
        label = 'Ladrillo de marihuana',
        weight = 2000,
    },

    ['weed_nutrition'] = {
        label = 'Fertilizante para plantas',
        weight = 2000,
    },

    ['joint'] = {
        label = 'Porro',
        weight = 200,
    },

    ['rolling_paper'] = {
        label = 'Papel de liar',
        weight = 0,
    },

    ['empty_weed_bag'] = {
        label = 'Bolsa de marihuana vacía',
        weight = 0,
    },

    ['firstaid'] = {
        label = 'Botiquín de primeros auxilios',
        weight = 2500,
    },

    ['ifaks'] = {
        label = 'Botiquín de primeros auxilios individual',
        weight = 2500,
    },

    ['painkillers'] = {
        label = 'Analgésicos',
        weight = 400,
    },

    ['firework1'] = {
        label = 'Fuegos artificiales 1',
        weight = 1000,
    },

    ['firework2'] = {
        label = 'Fuegos artificiales 2',
        weight = 1000,
    },

    ['firework3'] = {
        label = 'Fuegos artificiales 3',
        weight = 1000,
    },

    ['firework4'] = {
        label = 'Fuegos artificiales 4',
        weight = 1000,
    },

    ['steel'] = {
        label = 'Acero',
        weight = 100,
    },

    ['rubber'] = {
        label = 'Goma',
        weight = 100,
    },

    ['metalscrap'] = {
        label = 'Chatarra',
        weight = 100,
    },

    ['iron'] = {
        label = 'Hierro',
        weight = 100,
    },

    ['copper'] = {
        label = 'Cobre',
        weight = 100,
    },

    ['aluminum'] = {
        label = 'Aluminio',
        weight = 100,
    },

    ['plastic'] = {
        label = 'Plástico',
        weight = 100,
    },

    ['glass'] = {
        label = 'Cristal',
        weight = 100,
    },

    ['gatecrack'] = {
        label = 'Gatecrack',
        weight = 1000,
    },

    ['cryptostick'] = {
        label = 'Palo criptográfico',
        weight = 100,
    },

    ['trojan_usb'] = {
        label = 'USB troyano',
        weight = 100,
    },

    ['toaster'] = {
        label = 'Tostadora',
        weight = 5000,
    },

    ['small_tv'] = {
        label = 'Televisor pequeño',
        weight = 100,
    },

    ['security_card_01'] = {
        label = 'Tarjeta de seguridad A',
        weight = 100,
    },

    ['security_card_02'] = {
        label = 'Tarjeta de seguridad B',
        weight = 100,
    },

    ['drill'] = {
        label = 'Taladro',
        weight = 5000,
    },

    ['thermite'] = {
        label = 'Termita',
        weight = 1000,
    },

    ['diving_gear'] = {
        label = 'Equipo de buceo',
        weight = 30000,
    },

    ['diving_fill'] = {
        label = 'Tubo de buceo',
        weight = 3000,
    },

    ['antipatharia_coral'] = {
        label = 'Antipataria',
        weight = 1000,
    },

    ['dendrogyra_coral'] = {
        label = 'Dendrogyra',
        weight = 1000,
    },

    ['jerry_can'] = {
        label = 'Bidón',
        weight = 3000,
    },

    ['nitrous'] = {
        label = 'Botella de nitro',
        weight = 1000,
    },

    ['wine'] = {
        label = 'Vino',
        weight = 500,
    },

    ['grape'] = {
        label = 'Uva',
        weight = 10,
    },

    ['grapejuice'] = {
        label = 'Jugo de uva',
        weight = 200,
    },

    ['coffee'] = {
        label = 'Café',
        weight = 200,
    },

    ['vodka'] = {
        label = 'Vodka',
        weight = 500,
    },

    ['whiskey'] = {
        label = 'Whiskey',
        weight = 200,
    },

    ['beer'] = {
        label = 'Cerveza',
        weight = 200,
    },

    ['sandwich'] = {
        label = 'Sándwich',
        weight = 200,
    },

    ['walking_stick'] = {
        label = 'Bastón',
        weight = 1000,
    },

    ['lighter'] = {
        label = 'Mechero',
        weight = 200,
    },

    ['binoculars'] = {
        label = 'Prismáticos',
        weight = 800,
    },

    ['stickynote'] = {
        label = 'Nota adhesiva',
        weight = 0,
    },

    ['empty_evidence_bag'] = {
        label = 'Bolsa de evidencia vacía',
        weight = 200,
    },

    ['filled_evidence_bag'] = {
        label = 'Bolsa de evidencia llena',
        weight = 200,
    },

    ['harness'] = {
        label = 'Arnés',
        weight = 200,
    },

    ['handcuffs'] = {
        label = 'Esposas',
        weight = 200,
    },
}
