walk_sound = {{filename = "__base__/sound/heartbeat.ogg"}}

  
  tank_sound = 
{
    sound = {filename = "__base__/sound/fight/tank-engine.ogg", volume = 0.6},
    activate_sound = {filename = "__base__/sound/fight/tank-engine-start.ogg", volume = 0.6},
    deactivate_sound = {filename = "__base__/sound/fight/tank-engine-stop.ogg", volume = 0.6},
    match_speed_to_activity = true
}
  
no_sound_bit = 
{
    sound = {{filename = "__base__/sound/creatures/spawner.ogg", volume = 0}},
    apparent_volume = 0
}


no_sound_bit = 
{
          filename = "__base__/sound/creatures/spawner.ogg",
          volume = 0
        }

basetur = 
{
      layers =
      {
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base.png",
          priority = "high",
          width = 76,
          height = 60,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(1, -1),
          hr_version =
          {
            filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base.png",
            priority = "high",
            width = 150,
            height = 118,
            axially_symmetrical = false,
            direction_count = 1,
            frame_count = 1,
            shift = util.by_pixel(0.5, -1),
            scale = 0.5
          }
        },
        --{
        --  filename = "__base__/graphics/entity/gun-turret/gun-turret-base-shadow.png",
        --  line_length = 1,
        --  width = 78,
        --  height = 62,
        --  axially_symmetrical = false,
        --  direction_count = 1,
        --  frame_count = 1,
        --  shift = util.by_pixel(5, 3),
        --  draw_as_shadow = true,
        --  hr_version =
        --  {
        --    filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base-shadow.png",
        --    line_length = 1,
        --    width = 154,
        --    height = 122,
        --    axially_symmetrical = false,
        --    direction_count = 1,
        --    frame_count = 1,
        --    shift = util.by_pixel(5, 2.5),
        --    draw_as_shadow = true,
        --    scale = 0.5
        --  }
        --},
        {
          filename = "__base__/graphics/entity/gun-turret/gun-turret-base-mask.png",
          flags = { "mask" },
          line_length = 1,
          width = 62,
          height = 52,
          axially_symmetrical = false,
          direction_count = 1,
          frame_count = 1,
          shift = util.by_pixel(0, -4),
          apply_runtime_tint = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/gun-turret/hr-gun-turret-base-mask.png",
            flags = { "mask" },
            line_length = 1,
            width = 122,
            height = 102,
            axially_symmetrical = false,
            direction_count = 1,
            frame_count = 1,
            shift = util.by_pixel(0, -4.5),
            apply_runtime_tint = true,
            scale = 0.5
          }
        }

      }
    }
  
turn_to_turret_folded = 
{
      layers =
      {
        gun_turret_extension{frame_count=1, line_length = 1},
        gun_turret_extension_mask{frame_count=1, line_length = 1},
        gun_turret_extension_shadow{frame_count=1, line_length = 1}
      }
    }

turn_to_turret_preparing = 
{
      layers =
      {
        gun_turret_extension{},
        gun_turret_extension_mask{},
        gun_turret_extension_shadow{}
      }
    }

turn_to_turret_prepared = gun_turret_attack{frame_count=1}

turn_to_turret_starting = gun_turret_attack{frame_count=1}

turn_to_turret_ending = gun_turret_attack{frame_count=1}

turn_to_turret_folding = 
{
      layers =
      {
        gun_turret_extension{run_mode = "backward"},
        gun_turret_extension_mask{run_mode = "backward"},
        gun_turret_extension_shadow{run_mode = "backward"}
      }
    }




turn_to_thing = 
{
      layers =
      {
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor.png",
          width = 154,
          height = 158,
          shift = { -0.03125, -0.1875 },
          hr_version =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor.png",
            width = 302,
            height = 318,
            scale = 0.5,
            shift = { -0.03125, -0.1875 }
          }
        },
        {
          filename = "__base__/graphics/entity/nuclear-reactor/reactor-shadow.png",
          width = 263,
          height = 162,
          shift = { 1.625 , 0 },
          draw_as_shadow = true,
          hr_version =
          {
            filename = "__base__/graphics/entity/nuclear-reactor/hr-reactor-shadow.png",
            width = 525,
            height = 323,
            scale = 0.5,
            shift = { 1.625, 0 },
            draw_as_shadow = true
          }
        }
      }
    }


spitter_alternative_attack =
{
  warmup_frame_sequence = { 1},
  warmup2_frame_sequence = { 1 },
  attacking_frame_sequence = { 1 },
  cooldown_frame_sequence = { 1 },
  prepared_frame_sequence = { 1 },
  back_to_walk_frame_sequence = { 1 },

  warmup_animation_speed = 1 / 6 * 0.4,
  attacking_animation_speed = 1 / 16 * 0.4,
  cooldown_animation_speed = 1 / 1 * 0.4 * 0.125;
  prepared_animation_speed = 1 / 1 * 0.5 * 0.4,
  back_to_walk_animation_speed = 1 / 6 * 0.4,
}

turn_to_player_attack = 
{
          layers =
          {
            character_animations.level1.running_gun,
            character_animations.level1.running_gun_mask,
            character_animations.level2addon.running_gun,
            character_animations.level2addon.running_gun_mask,
            character_animations.level1.running_gun_shadow
          }
        }

turn_to_player = 
{
          layers =
          {
            character_animations.level1.running,
            character_animations.level1.running_mask,
            character_animations.level1.running_shadow
          }
        }
    
turn_to_tank = 
{
      layers =
      {
        {
          priority = "low",
          width = 135,
          height = 106,
          frame_count = 2,
          direction_count = 64,
          shift = util.by_pixel(-4.5, -10),
          animation_speed = 8,
          max_advance = 1,
          stripes =
          {
            {
             filename = "__base__/graphics/entity/tank/tank-base-1.png",
             width_in_frames = 2,
             height_in_frames = 16
            },
            {
             filename = "__base__/graphics/entity/tank/tank-base-2.png",
             width_in_frames = 2,
             height_in_frames = 16
            },
            {
             filename = "__base__/graphics/entity/tank/tank-base-3.png",
             width_in_frames = 2,
             height_in_frames = 16
            },
            {
             filename = "__base__/graphics/entity/tank/tank-base-4.png",
             width_in_frames = 2,
             height_in_frames = 16
            }
          },
          hr_version =
          {
            priority = "low",
            width = 269,
            height = 212,
            frame_count = 2,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -10),
            animation_speed = 8,
            max_advance = 1,
            stripes =
            {
              {
               filename = "__base__/graphics/entity/tank/hr-tank-base-1.png",
               width_in_frames = 2,
               height_in_frames = 16
              },
              {
               filename = "__base__/graphics/entity/tank/hr-tank-base-2.png",
               width_in_frames = 2,
               height_in_frames = 16
              },
              {
               filename = "__base__/graphics/entity/tank/hr-tank-base-3.png",
               width_in_frames = 2,
               height_in_frames = 16
              },
              {
               filename = "__base__/graphics/entity/tank/hr-tank-base-4.png",
               width_in_frames = 2,
               height_in_frames = 16
              }
            },
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 104,
          height = 64,
          frame_count = 2,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = util.by_pixel(-5, -21),
          max_advance = 1,
          line_length = 2,
          stripes = util.multiplystripes(2,
          {
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-1.png",
              width_in_frames = 1,
              height_in_frames = 22
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-2.png",
              width_in_frames = 1,
              height_in_frames = 22
            },
            {
              filename = "__base__/graphics/entity/tank/tank-base-mask-3.png",
              width_in_frames = 1,
              height_in_frames = 20
            }
          }),
          hr_version =
          {
            priority = "low",
            width = 207,
            height = 166,
            frame_count = 2,
            apply_runtime_tint = true,
            direction_count = 64,
            shift = util.by_pixel(-4.75, -21),
            max_advance = 1,
            line_length = 2,
            stripes = util.multiplystripes(2,
            {
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-1.png",
                width_in_frames = 1,
                height_in_frames = 22
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-2.png",
                width_in_frames = 1,
                height_in_frames = 22
              },
              {
                filename = "__base__/graphics/entity/tank/hr-tank-base-mask-3.png",
                width_in_frames = 1,
                height_in_frames = 20
              }
            }),
            scale = 0.5
          }
        },
        {
          priority = "low",
          width = 151,
          height = 98,
          frame_count = 2,
          draw_as_shadow = true,
          direction_count = 64,
          shift = util.by_pixel(17.5, 7),
          max_advance = 1,
          stripes = util.multiplystripes(2,
          {
           {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-1.png",
            width_in_frames = 1,
            height_in_frames = 16
           },
           {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-2.png",
            width_in_frames = 1,
            height_in_frames = 16
           },
           {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-3.png",
            width_in_frames = 1,
            height_in_frames = 16
           },
           {
            filename = "__base__/graphics/entity/tank/tank-base-shadow-4.png",
            width_in_frames = 1,
            height_in_frames = 16
           }
          }),
          hr_version =
          {
            priority = "low",
            width = 301,
            height = 194,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            shift = util.by_pixel(17.75, 7),
            max_advance = 1,
            stripes = util.multiplystripes(2,
            {
             {
              filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-1.png",
              width_in_frames = 1,
              height_in_frames = 16
             },
             {
              filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-2.png",
              width_in_frames = 1,
              height_in_frames = 16
             },
             {
              filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-3.png",
              width_in_frames = 1,
              height_in_frames = 16
             },
             {
              filename = "__base__/graphics/entity/tank/hr-tank-base-shadow-4.png",
              width_in_frames = 1,
              height_in_frames = 16
             }
            }),
            scale = 0.5
          }
        }
      }
    }
  
--- small-biter
data.raw["unit"]["small-biter"].attack_parameters.animation = turn_to_player_attack
data.raw["unit"]["small-biter"].corpse = "character-corpse"
data.raw["unit"]["small-biter"].run_animation = turn_to_player
data.raw["unit"]["small-biter"].dying_sound = no_sound_bit
data.raw["unit"]["small-biter"].working_sound = walk_sound

--- medium-biter
data.raw["unit"]["medium-biter"].attack_parameters.animation = turn_to_player_attack
data.raw["unit"]["medium-biter"].corpse = "character-corpse"
data.raw["unit"]["medium-biter"].run_animation = turn_to_player
data.raw["unit"]["medium-biter"].dying_sound = no_sound_bit
data.raw["unit"]["medium-biter"].working_sound = walk_sound
    
--- big-biter
data.raw["unit"]["big-biter"].attack_parameters.animation = turn_to_player_attack
data.raw["unit"]["big-biter"].corpse = "character-corpse"
data.raw["unit"]["big-biter"].run_animation = turn_to_player
data.raw["unit"]["big-biter"].dying_sound = no_sound_bit
data.raw["unit"]["big-biter"].working_sound = walk_sound
    
--- behemoth-biter
data.raw["unit"]["behemoth-biter"].attack_parameters.animation = turn_to_player_attack
data.raw["unit"]["behemoth-biter"].corpse = "character-corpse"
data.raw["unit"]["behemoth-biter"].run_animation = turn_to_player
data.raw["unit"]["behemoth-biter"].dying_sound = no_sound_bit
data.raw["unit"]["behemoth-biter"].working_sound = walk_sound

--- small-spitter
data.raw["unit"]["small-spitter"].corpse = "medium-remnants"
data.raw["unit"]["small-spitter"].run_animation = turn_to_tank
data.raw["unit"]["small-spitter"].attack_parameters.animation = turn_to_tank
data.raw["unit"]["small-spitter"].alternative_attacking_frame_sequence= spitter_alternative_attack
data.raw["unit"]["small-spitter"].dying_explosion = "medium-explosion"
data.raw["unit"]["small-spitter"].dying_sound = no_sound_bit
data.raw["unit"]["small-spitter"].working_sound = tank_sound

--- medium-spitter
data.raw["unit"]["medium-spitter"].corpse = "medium-remnants"
data.raw["unit"]["medium-spitter"].run_animation = turn_to_tank
data.raw["unit"]["medium-spitter"].attack_parameters.animation = turn_to_tank
data.raw["unit"]["medium-spitter"].alternative_attacking_frame_sequence= spitter_alternative_attack
data.raw["unit"]["medium-spitter"].dying_explosion = "medium-explosion"
data.raw["unit"]["medium-spitter"].dying_sound = no_sound_bit
data.raw["unit"]["medium-spitter"].working_sound = tank_sound

--- big-spitter
data.raw["unit"]["big-spitter"].corpse = "medium-remnants"
data.raw["unit"]["big-spitter"].run_animation = turn_to_tank
data.raw["unit"]["big-spitter"].attack_parameters.animation = turn_to_tank
data.raw["unit"]["big-spitter"].alternative_attacking_frame_sequence= spitter_alternative_attack
data.raw["unit"]["big-spitter"].dying_explosion = "medium-explosion"
data.raw["unit"]["big-spitter"].dying_sound = no_sound_bit
data.raw["unit"]["big-spitter"].working_sound = tank_sound

--- behemoth-spitter
data.raw["unit"]["behemoth-spitter"].corpse = "medium-remnants"
data.raw["unit"]["behemoth-spitter"].run_animation = turn_to_tank
data.raw["unit"]["behemoth-spitter"].attack_parameters.animation = turn_to_tank
data.raw["unit"]["behemoth-spitter"].alternative_attacking_frame_sequence= spitter_alternative_attack
data.raw["unit"]["behemoth-spitter"].dying_explosion = "medium-explosion"
data.raw["unit"]["behemoth-spitter"].dying_sound = no_sound_bit
data.raw["unit"]["behemoth-spitter"].working_sound = tank_sound

-- biter spawner
data.raw["unit-spawner"]["biter-spawner"].corpse = "big-remnants"
data.raw["unit-spawner"]["biter-spawner"].animations = turn_to_thing
data.raw["unit-spawner"]["biter-spawner"].working_sound = no_sound
data.raw["unit-spawner"]["biter-spawner"].dying_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
data.raw["unit-spawner"]["biter-spawner"].dying_explosion = "big-explosion"
  
-- spitter spawner
data.raw["unit-spawner"]["spitter-spawner"].corpse = "big-remnants"
data.raw["unit-spawner"]["spitter-spawner"].animations = turn_to_thing
data.raw["unit-spawner"]["spitter-spawner"].working_sound = no_sound_all
data.raw["unit-spawner"]["spitter-spawner"].dying_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
data.raw["unit-spawner"]["spitter-spawner"].dying_explosion = "big-explosion"

-- small-worm-turret
data.raw["turret"]["small-worm-turret"].corpse = "small-remnants"
data.raw["turret"]["small-worm-turret"].folded_animation = turn_to_turret_folded
data.raw["turret"]["small-worm-turret"].preparing_animation = turn_to_turret_preparing
data.raw["turret"]["small-worm-turret"].prepared_animation = turn_to_turret_prepared
data.raw["turret"]["small-worm-turret"].starting_attack_animation = turn_to_turret_starting
data.raw["turret"]["small-worm-turret"].ending_attack_animation = turn_to_turret_ending
data.raw["turret"]["small-worm-turret"].folding_animation = turn_to_turret_folding
data.raw["turret"]["small-worm-turret"].prepared_alternative_animation = turn_to_turret_prepared
data.raw["turret"]["small-worm-turret"].dying_explosion = "medium-explosion"
data.raw["turret"]["small-worm-turret"].dying_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
data.raw["turret"]["small-worm-turret"].preparing_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
data.raw["turret"]["small-worm-turret"].prepared_sound = no_sound
data.raw["turret"]["small-worm-turret"].prepared_alternative_sound = no_sound
data.raw["turret"]["small-worm-turret"].starting_attack_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
data.raw["turret"]["small-worm-turret"].folding_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
data.raw["turret"]["small-worm-turret"].secondary_animation = false
data.raw["turret"]["small-worm-turret"].integration = basetur

-- medium-worm-turret
data.raw["turret"]["medium-worm-turret"].corpse = "small-remnants"
data.raw["turret"]["medium-worm-turret"].folded_animation = turn_to_turret_folded
data.raw["turret"]["medium-worm-turret"].preparing_animation = turn_to_turret_preparing
data.raw["turret"]["medium-worm-turret"].prepared_animation = turn_to_turret_prepared
data.raw["turret"]["medium-worm-turret"].starting_attack_animation = turn_to_turret_starting
data.raw["turret"]["medium-worm-turret"].ending_attack_animation = turn_to_turret_ending
data.raw["turret"]["medium-worm-turret"].folding_animation = turn_to_turret_folding
data.raw["turret"]["medium-worm-turret"].prepared_alternative_animation = turn_to_turret_prepared
data.raw["turret"]["medium-worm-turret"].dying_explosion = "medium-explosion"
data.raw["turret"]["medium-worm-turret"].dying_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
data.raw["turret"]["medium-worm-turret"].preparing_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
data.raw["turret"]["medium-worm-turret"].prepared_sound = no_sound
data.raw["turret"]["medium-worm-turret"].prepared_alternative_sound = no_sound
data.raw["turret"]["medium-worm-turret"].starting_attack_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
data.raw["turret"]["medium-worm-turret"].folding_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
data.raw["turret"]["medium-worm-turret"].secondary_animation = false
data.raw["turret"]["medium-worm-turret"].integration = basetur

-- big-worm-turret
data.raw["turret"]["big-worm-turret"].corpse = "small-remnants"
data.raw["turret"]["big-worm-turret"].folded_animation = turn_to_turret_folded
data.raw["turret"]["big-worm-turret"].preparing_animation = turn_to_turret_preparing
data.raw["turret"]["big-worm-turret"].prepared_animation = turn_to_turret_prepared
data.raw["turret"]["big-worm-turret"].starting_attack_animation = turn_to_turret_starting
data.raw["turret"]["big-worm-turret"].ending_attack_animation = turn_to_turret_ending
data.raw["turret"]["big-worm-turret"].folding_animation = turn_to_turret_folding
data.raw["turret"]["big-worm-turret"].prepared_alternative_animation = turn_to_turret_prepared
data.raw["turret"]["big-worm-turret"].dying_explosion = "medium-explosion"
data.raw["turret"]["big-worm-turret"].dying_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
data.raw["turret"]["big-worm-turret"].preparing_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
data.raw["turret"]["big-worm-turret"].prepared_sound = no_sound
data.raw["turret"]["big-worm-turret"].prepared_alternative_sound = no_sound
data.raw["turret"]["big-worm-turret"].starting_attack_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
data.raw["turret"]["big-worm-turret"].folding_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
data.raw["turret"]["big-worm-turret"].secondary_animation = false
data.raw["turret"]["big-worm-turret"].integration = basetur

-- behemoth-worm-turret
data.raw["turret"]["behemoth-worm-turret"].corpse = "small-remnants"
data.raw["turret"]["behemoth-worm-turret"].folded_animation = turn_to_turret_folded
data.raw["turret"]["behemoth-worm-turret"].preparing_animation = turn_to_turret_preparing
data.raw["turret"]["behemoth-worm-turret"].prepared_animation = turn_to_turret_prepared
data.raw["turret"]["behemoth-worm-turret"].starting_attack_animation = turn_to_turret_starting
data.raw["turret"]["behemoth-worm-turret"].ending_attack_animation = turn_to_turret_ending
data.raw["turret"]["behemoth-worm-turret"].folding_animation = turn_to_turret_folding
data.raw["turret"]["behemoth-worm-turret"].prepared_alternative_animation = turn_to_turret_prepared
data.raw["turret"]["behemoth-worm-turret"].dying_explosion = "medium-explosion"
data.raw["turret"]["behemoth-worm-turret"].dying_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 }
data.raw["turret"]["behemoth-worm-turret"].preparing_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
data.raw["turret"]["behemoth-worm-turret"].prepared_sound = no_sound
data.raw["turret"]["behemoth-worm-turret"].prepared_alternative_sound = no_sound
data.raw["turret"]["behemoth-worm-turret"].starting_attack_sound = { filename = "__base__/sound/machine-open.ogg", volume = 0.85 }
data.raw["turret"]["behemoth-worm-turret"].folding_sound = { filename = "__base__/sound/machine-close.ogg", volume = 0.75 }
data.raw["turret"]["behemoth-worm-turret"].secondary_animation = false
data.raw["turret"]["behemoth-worm-turret"].integration = basetur
