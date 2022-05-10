Config = {}

-- Ped Spawn Stuff
Config = {
	Blips = true, -- Show Blip
	Invincible = true, -- Damage
	Frozen = true, -- Move or not
	Stoic = true, -- True = no reactions
	Fade = true, -- Fade in when you come up instead of falling down.
	Distance = 40.0, -- How far away the ped will spawn in.
    UseMarket = true, -- If you want to use the wholesale market built the Config.ShopItems around line 800 in this config.
    UseConsumables = true, -- Basic Consumable effects for food and drinks, gives hunger/thirst.
}
Config.PedList = {
    { 
        model = "mp_f_forgery_01", 
        coords = vector3(375.41, -1501.41, 29.29), 
        heading = 200, 
        gender = "female" 
    },
}
-- Different Jobs that can Access the Wholesale Shop
Config.CafeJobs = {
    "popsdiner",
    "uwucafe",
    "pizzathis",
    "burgershot",
}
--Menu Items
Config.CookMenu = {
    ["popsdiner"] = { -- Location name, this name is utilized by all parts of this script, ensure that it is consistent for the specific restaurant you are making in the config.
        [1] = {
            Name = "Bacon and Eggs", -- Item being made for QB-Menu title
            Text = "Bacon x 4, Eggs x 2,", -- Required items for QB-Menu text
            RequiredItems = {
                [1] = { item = "raw_bacon", amount = 4 }, -- 1st Required Item Name and Amount
                [2] = { item = "egg", amount = 2 }, -- 2nd Required Item Name and Amount (No limit on required items or amounts)
            },
            ReturnItem = {
                [1] = { item = "baconandeggs", amount = 1 } -- 1st Item created and amount (No limit on return items or amounts)
            },
            time = 12000, -- How long the progress bar takes
            spatula = true, -- Spatula emote (true) or Coke Cut emote (false)
        },
        [2] = {
            Name = "Hashbrowns",
            Text = "Potato x 2, Flour x 2, Eggs x 2",
            RequiredItems = {
                [1] = { item = "potato", amount = 2 },
                [2] = { item = "flour", amount = 2 },
                [3] = { item = "egg", amount = 2 },


            },
            ReturnItem = {
                [1] = { item = "hashbrowns", amount = 2 }
            },
            time = 12000,
            spatula = true,
        },
        [3] = {
            Name = "Grill Chicken",
            Text = "Raw chicken x 4",
            RequiredItems = {
                [1] = { item = "chicken", amount = 4 },

            },
            ReturnItem = {
                [1] = { item = "grilledchicken", amount = 4 }
            },
            time = 12000,
            spatula = true,
        },
        [4] = {
            Name = "Chicken Sandwich",
            Text = "Grilled chicken x 2, Bread x 1, Mixed lettuce x 1, Secret sauce x 1",
            RequiredItems = {
                [1] = { item = "grilledchicken", amount = 2 },
                [2] = { item = "bread", amount = 1 },
                [3] = { item = "mixedlettuce", amount = 1 },
                [4] = { item = "popssauce", amount = 1 },

            },
            ReturnItem = {
                [1] = { item = "chickensandwich", amount = 1 }
            },
            time = 12000,
            spatula = true,
        },
    },
    ["uwucafe"] = {
        [1] = {
            Name = "Uwu Pancake",
            Text = "Milk x 1, Egg x 2, Flour x 1",
            RequiredItems = {
                [1] = { item = "milk", amount = 1 },
                [2] = { item = "egg", amount = 2 },
                [3] = { item = "flour", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "uwupancake", amount = 2}
            },
            time = 12000,
            spatula = false,
        },
        [2] = {
            Name = "Uwu Sushi",
            Text = "Tuna x 1, Avocado x 1, Rice x 1, Nori",
            RequiredItems = {
                [1] = { item = "tuna", amount = 1 },
                [2] = { item = "rice", amount = 1},
                [3] = { item = "avocado", amount = 1},
                [4] = { item = "nori", amount = 1},
            },
            ReturnItem = {
                [1] = { item = "uwusushi", amount = 2}
            },
            time = 12000,
            spatula = false,
        },
        [3] = {
            Name = "Buddha Bowl",
            Text = "Mixed Lettuce x 1, Tofu x 1, Avocado x 1, Umami 1",
            RequiredItems = {
                [1] = { item = "mixedlettuce", amount = 1 },
                [2] = { item = "tofu", amount = 1},
                [3] = { item = "avocado", amount = 1},
                [4] = { item = "umami", amount = 1},
            },
            ReturnItem = {
                [1] = { item = "uwubudhabowl", amount = 1},
            },
            time = 12000,
            spatula = false,
        },
        -- [3] = {
        --     Name = "",
        --     Text = "",
        --     RequiredItems = {
        --         [1] = { item = "", amount = 1 },
        --     },
        --     ReturnItem = {
        --         [1] = { item = "", amount = 1 }
        --     },
        --     time = 12000,
        --     animDict = "anim@amb@business@coc@coc_unpack_cut@",
        --     anim = "fullcut_cycle_v1_cokecutter",
        -- },
    },
    ["pizzathis"] = {
        [1] = {
            Name = "Cheese Pizza",
            Text = "Pizza Dough x 1, Pizza This Secret Sauce x 1, Mozzarella Cheese x 1",
            RequiredItems = {
                [1] = { item = "pizza-dough", amount = 1 },
                [2] = { item = "pizzathis-secret-sauce", amount = 1 },
                [3] = { item = "mozzarella-cheese", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "pizzathis-cheese-pizza", amount = 1 }
            },
            time = 30000,
            spatula = false,
        },
        [2] = {
            Name = "Pepporoni Pizza",
            Text = "Pizza Dough x 1, Pizza This Secret Sauce x 1, Mozzarella Cheese x 1, Pepperoni Slices x 2",
            RequiredItems = {
                [1] = { item = "pizza-dough", amount = 1 },
                [2] = { item = "pizzathis-secret-sauce", amount = 1 },
                [3] = { item = "mozzarella-cheese", amount = 1 },
                [4] = { item = "pizzathis-pepperoni-slice", amount = 2 },
            },
            ReturnItem = {
                [1] = { item = "pizzathis-pepperoni-pizza", amount = 1 }
            },
            time = 30000,
            spatula = false,
        },
        [3] = {
            Name = "Hawaiian Pizza",
            Text = "Pizza Dough x 1, Pizza This Secret Sauce x 1, Mozzarella Cheese x 1, Ham Slices x 1, Pineapple Slices x 1",
            RequiredItems = {
                [1] = { item = "pizza-dough", amount = 1 },
                [2] = { item = "pizzathis-secret-sauce", amount = 1 },
                [3] = { item = "mozzarella-cheese", amount = 1 },
                [4] = { item = "pizzathis-ham-slice", amount = 2 },
                [5] = { item = "pizzathis-pineapple-slice", amount = 2 }
            },
            ReturnItem = {
                [1] = { item = "pizzathis-hawaiian-pizza", amount = 1}
            },
            time = 30000,
            spatula = false,
        },
    },
    ["burgershot"] = {
        [1] = {
            Name = "Heartstopper",
            Text = "Beef Patty x 4, Tomato x 4, Lettuce x 4, Hamburger Buns x 1",
            RequiredItems = {
                [1] = { item = "burger-meat", amount = 4 },
                [2] = { item = "burger-bun", amount = 1 },
                [3] = { item = "slicedtomato", amount = 4 },
                [4] = { item = "burger-lettuce", amount = 4 },
            },
            ReturnItem = {
                [1] = { item = "burger-heartstopper", amount = 1 }
            },
            time = 20000,
            spatula = true,
        },
        [2] = {
            Name = "Bleeder",
            Text = "Beef Patty x 1, Tomato x 1, Lettuce x 1, Hamburger Buns x 1",
            RequiredItems = {
                [1] = { item = "burger-meat", amount = 1 },
                [2] = { item = "burger-bun", amount = 1 },
                [3] = { item = "slicedtomato", amount = 1 },
                [4] = { item = "burger-lettuce", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "burger-bleeder", amount = 1 }
            },
            time = 12000,
            spatula = true,
        },
        [3] = {
            Name = "Moneyshot",
            Text = "Beef Patty x 2, Tomato x 1, Lettuce x 1, Hamburger Buns x 1",
            RequiredItems = {
                [1] = { item = "burger-meat", amount = 2 },
                [2] = { item = "burger-bun", amount = 1 },
                [3] = { item = "slicedtomato", amount = 1 },
                [4] = { item = "burger-lettuce", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "burger-moneyshot", amount = 1 }
            },
            time = 12000,
            spatula = true,
        },
        [4] = {
            Name = "Torpedo",
            Text = "Tomato x 1, Lettuce x 1, Hamburger Buns x 1",
            RequiredItems = {
                [1] = { item = "burger-bun", amount = 1 },
                [2] = { item = "slicedtomato", amount = 1 },
                [3] = { item = "burger-lettuce", amount = 1 },
                [4] = { item = "burger-meat", amount = 2 },
            },
            ReturnItem = {
                [1] = { item = "burger-torpedo", amount = 1 }
            },
            time = 12000,
            spatula = true,
        },
        [5] = {
            Name = "Grill patty",
            Text = "Raw Patty x 4",
            RequiredItems = {
                [1] = { item = "burger-raw", amount = 4 },
            },
            ReturnItem = {
                [1] = { item = "burger-meat", amount = 4 }
            },
            time = 8000,
            spatula = true,
        },
        [6] = {
            Name = "Grill patty",
            Text = "Raw Patty x 1",
            RequiredItems = {
                [1] = { item = "burger-raw", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "burger-meat", amount = 1 }
            },
            time = 8000,
            spatula = true,
        },
    },
}
Config.DrinkMenu = {
    ["popsdiner"] = {
        [1] = {
            Name = "Pops Soda",
            Text = "Soda Syrup x 1, Water x 1",
            RequiredItems = {
                [1] = { item = "burger-sodasyrup", amount = 1 },
                [2] = { item = "water_bottle", amount = 1 }
            },
            ReturnItem = {
                [1] = { item = "burger-softdrink", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
    },
    ["uwucafe"] = {
        [1] = {
            Name = "Blueberry Bubbletea",
            Text = "Tapioka Balls x 1, Tea Powder x 1, water x 1",
            RequiredItems = {
                [1] = { item = "tapiokaballs", amount = 1 },
                [2] = { item = "tea", amount = 1 },
                [3] = { item = "water_bottle", amount = 1 }
            },
            ReturnItem = {
                [1] = { item = "uwububbleteablueberry", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
        [2] = {
            Name = "Rose Bubbletea",
            Text = "Tapioka Balls x 1, Tea Powder x 1, water x 1",
            RequiredItems = {
                [1] = { item = "tea", amount = 1 },
                [2] = { item = "water_bottle", amount = 1 },
                [3] = { item = "tapiokaballs", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "uwububbletearose", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
        [3] = {
            Name = "Mint Bubbletea",
            Text = "Tapioka Balls x 1, Tea Powder x 1, Milk x 1",
            RequiredItems = {
                [1] = { item = "tapiokaballs", amount = 1 },
                [2] = { item = "tea", amount = 1 },
                [3] = { item = "milk", amount = 1}
            },
            ReturnItem = {
                [1] = { item = "uwububbleteamint", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
    },
    ["pizzathis"] = {
        [1] = {
            Name = "Pizza This Soda",
            Text = "Soda Syrup x 1, Soda Cup x 1",
            RequiredItems = {
                [1] = { item = "soda-syrup", amount = 1 },
                [2] = { item = "soda-cup", amount = 1 }
            },
            ReturnItem = {
                [1] = { item = "pizzathis-soda", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
        [2] = {
            Name = "Pizza This Energy",
            Text = "Soda Syrup x 1, Soda Cup x 1, Energy Shot x 1",
            RequiredItems = {
                [1] = { item = "soda-syrup", amount = 1 },
                [2] = { item = "soda-cup", amount = 1 },
                [3] = { item = "energy-shot", amount = 1 }
            },
            ReturnItem = {
                [1] = { item = "pizzathis-energy", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
        [3] = {
            Name = "Pizza This Slushie",
            Text = "Slushie Syrup x 1, Soda Cup x 1",
            RequiredItems = {
                [1] = { item = "slushie-syrup", amount = 1 },
                [2] = { item = "soda-cup", amount = 1 }
            },
            ReturnItem = {
                [1] = { item = "pizzathis-slushie", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
    },
    ["burgershot"] = {
        [1] = {
            Name = "Bugershot Soda",
            Text = "Soda Syrup x 1, Water x 1",
            RequiredItems = {
                [1] = { item = "burger-sodasyrup", amount = 1 },
                [2] = { item = "water_bottle", amount = 1 }
            },
            ReturnItem = {
                [1] = { item = "burger-softdrink", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
        [2] = {
            Name = "Bugershot Milkshake",
            Text = "Mshake formula x 1, Milk x 1",
            RequiredItems = {
                [1] = { item = "burger-mshakeformula", amount = 1 },
                [2] = { item = "milk", amount = 1 }
            },
            ReturnItem = {
                [1] = { item = "burger-mshake", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
        -- [3] = {
        --     Name = "Chocolate Meteorite",
        --     Text = "Chocolate Powder x 1, Pint Ice Cream x 1, Half Pint Milk x 1, Soda Cup x 1",
        --     RequiredItems = {
        --         [1] = { item = "chocolate-powder", amount = 1 },
        --         [2] = { item = "pint-ice-cream", amount = 1 },
        --         [3] = { item = "half-pint-milk", amount = 1},
        --         [4] = { item = "soda-cup", amount = 1 }
        --     },
        --     ReturnItem = {
        --         [1] = { item = "burgershot-chocolate-meteorite", amount = 1}
        --     },
        --     time = 8000,
        --     animDict = "anim@amb@business@coc@coc_unpack_cut@",
        --     anim = "fullcut_cycle_v1_cokecutter",
        -- },
        -- [4] = {
        --     Name = "Vanilla Meteorite",
        --     Text = "Pint Ice Cream x 1, Half Pint Milk x 1, Soda Cup x 1",
        --     RequiredItems = {
        --         [1] = { item = "pint-ice-cream", amount = 1 },
        --         [2] = { item = "half-pint-milk", amount = 1},
        --         [3] = { item = "soda-cup", amount = 1 }
        --     },
        --     ReturnItem = {
        --         [1] = { item = "burgershot-vanilla-meteorite", amount = 1}
        --     },
        --     time = 8000,
        --     animDict = "anim@amb@business@coc@coc_unpack_cut@",
        --     anim = "fullcut_cycle_v1_cokecutter",
        -- },
    },
}
Config.PrepMenu = {
    ["popsdiner"] = {
        [1] = {
            Name = "Caesar Salad ",
            Text = "Chicken x 1, mixed lettuce x 1, Secret sauce x 1, Bread x 1, Cheese x1",
            RequiredItems = {
                [1] = { item = "grilledchicken", amount = 1 },
                [2] = { item = "mixedlettuce", amount = 1 },
                [3] = { item = "popssauce", amount = 1 },
                [4] = { item = "bread", amount = 1 },
                [5] = { item = "cheese", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "caesarsalad", amount = 1 }
            },
            time = 12000,
            spatula = false,
        },
        [2] = {
            Name = "Cut Apple Pie",
            Text = "Apple Pie x 1",
            RequiredItems = {
                [1] = { item = "applepie", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "applepieslice", amount = 4},
            },
            time = 12000,
            spatula = false,
        },
        [3] = {
            Name = "Cut Peach Cobbler",
            Text = "Peach Cobbler x 1",
            RequiredItems = {
                [1] = { item = "peachcobbler", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "peachcobblerslice", amount = 4},
            },
            time = 12000,
            spatula = false,
        },
        [4] = {
            Name = "Cut Cocounut Cream Pie",
            Text = "Cocounut Cream Pie x 1",
            RequiredItems = {
                [1] = { item = "coconutcreampie", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "coconutcreampieslice", amount = 4},
            },
            time = 12000,
            spatula = false,
        },
    },
    ["uwucafe"] = {
        [1] = {
            Name = "Miso Soup",
            Text = "Water x 1, Misopaste x 1, Tofu x 1",
            RequiredItems = {
                [1] = { item = "misopaste", amount = 1 },
                [2] = { item = "tofu", amount = 1 },
                [3] = { item = "water_bottle", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "uwumisosoup", amount = 1},
            },
            time = 12000,
            spatula = false,
        },
        [2] = {
            Name = " uWu Cupcake",
            Text = "Sugar x 2, Sprinkles x 1, milk x 1, Egg x 4, Flour x 2",
            RequiredItems = {
                [1] = { item = "rawsugar", amount = 2},
                [2] = { item = "sprinkles", amount = 1},
                [3] = { item = "milk", amount = 1},
                [4] = { item = "egg", amount = 4},
                [5] = { item = "flour", amount = 2},
            },
            ReturnItem = {
                [1] = { item = "uwucupcake", amount = 4},
            },
            time = 12000,
            spatula = false,
        },
        [3] = {
            Name =  "Vanilla Sandy",
            Text = "Milk x 1, Flour x 1, Sugar x 1, Egg x 1, Vanilla Bean x 2",
            RequiredItems = {
                [1] = { item = "milk", amount = 1 },
                [2] = { item = "flour", amount = 1},
                [3] = { item = "rawsugar", amount = 1},
                [4] = { item = "egg", amount = 1},
                [5] = { item = "vanillabean", amount = 2},
            },
            ReturnItem = {
                [1] = { item = "uwuvanillasandy", amount = 2}
            },
            time = 12000,
            spatula = false,
        },
        [4] = {
            Name =  "Chocolate Sandy",
            Text = "Milk x 1, Flour x 1, Sugar x 1, Egg x 1, Chocolate x 2",
            RequiredItems = {
                [1] = { item = "milk", amount = 1 },
                [2] = { item = "flour", amount = 1},
                [3] = { item = "rawsugar", amount = 1},
                [4] = { item = "egg", amount = 1},
                [5] = { item = "chocolate", amount = 2},
            },
            ReturnItem = {
                [1] = { item = "uwuchocsandy", amount = 2}
            },
            time = 12000,
            spatula = false,
        },
        [4] = {
            Name =  "UwU Bento Box",
            Text = "Uwu Sushi x 1, Uwu BT Rose x 1, Uwu Buddha Bowl",
            RequiredItems = {
                [1] = { item = "uwusushi", amount = 1 },
                [2] = { item = "uwububbletearose", amount = 1},
                [3] = { item = "uwubudhabowl", amount = 1},
            },
            ReturnItem = {
                [1] = { item = "uwubentobox", amount = 1}
            },
            time = 12000,
            spatula = false,
        },
    },
    ["pizzathis"] = {
        [1] = {
            Name = "Pizza This Secret Sauce",
            Text = "Tomato x 2, Energy Shot x 2",
            RequiredItems = {
                [1] = { item = "tomato", amount = 2 },
                [2] = { item = "energy-shot", amount = 2},
            },
            ReturnItem = {
                [1] = { item = "pizzathis-secre-sauce", amount = 4}
            },
            time = 12000,
            spatula = false,
        },
        [2] = {
            Name = "Pizza This Garlic Bread",
            Text = "Loaf of Bread x 1, Butter x 1, Spices x 1",
            RequiredItems = {
                [1] = { item = "loaf-of-bread", amount = 1 },
                [2] = { item = "butter-stick", amount = 1},
                [3] = { item = "cooking-spices", amount = 1},
            },
            ReturnItem = {
                [1] = { item = "pizzathis-garlic-bread", amount = 6},
            },
            time = 15000,
            spatula = false,
        },
        [3] = {
            Name = "Slice Pepperoni Stick",
            Text = "Stick of Pepperoni x 1",
            RequiredItems = {
                [1] = { item = "pepperoni-stick", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "pizzathis-pepperoni-slice", amount = 4}
            },
            time = 15000,
            spatula = false,
        },
        [4] = {
            Name = "Slice Packaged Ham",
            Text = "Packaged Ham x 1",
            RequiredItems = {
                [1] = { item = "packaged-ham", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "pizzathis-ham-slices", amount = 4},
            },
            time = 15000,
            spatula = false,
        },
        [5] = {
            Name = "Slice Cheese Pizza",
            Text = "Cheese Pizza x 1",
            RequiredItems = {
                [1] = { item = "pizzathis-cheese-pizza", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "pizzathis-cheese-slice", amount = 6},
            },
            time = 20000,
            spatula = false,
        },
        [6] = {
            Name = "Slice Pepperoni Pizza",
            Text = "Pepperoni Pizza x 1",
            RequiredItems = {
                [1] = { item = "pizzathis-pepperoni-pizza", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "pizzathis-pepperoni-slice", amount = 6},
            },
            time = 20000,
            spatula = false,
        },
        [7] = {
            Name = "Slice Hawaiian Pizza",
            Text = "Hawaiian Pizza x 1",
            RequiredItems = {
                [1] = { item = "pizzathis-hawaiian-pizza", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "pizzathis-hawaiian-slice", amount = 6},
            },
            time = 20000,
            spatula = false,
        },
    },
    ["burgershot"] = {
        [1] = {
            Name = "Slice Tomato",
            Text = "Whole Tomato x 1",
            RequiredItems = {
                [1] = { item = "tomato", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "slicedtomato", amount = 4},
            },
            time = 12000,
            spatula = false,
        },
        [2] = {
            Name = "Slice Lettuce",
            Text = "Whole Lettuce x 1",
            RequiredItems = {
                [1] = { item = "headoflettuce", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "burger-lettuce", amount = 4},
            },
            time = 12000,
            spatula = false,
        },
        [3] = {
            Name = "Chop Potato into Fries",
            Text = "Whole Potato x 1",
            RequiredItems = {
                [1] = { item = "potato", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "rawfries", amount = 1},
            },
            time = 12000,
            spatula = false,
        },
        [4] = {
            Name = "Murder Meal",
            Text = "Fries x 1, Heartstopper x 1, Softdrink x 1",
            RequiredItems = {
                [1] = { item = "burger-fries", amount = 1 },
                [2] = { item = "burger-heartstopper", amount = 1 },
                [3] = { item = "burger-softdrink", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "burger-murdermeal", amount = 1},
            },
            time = 6000,
            spatula = false,
        },
        [5] = {
            Name = "Meat Free",
            Text = "Tomato x 4, Lettuce x 4, Hamburger Buns x 1",
            RequiredItems = {
                [1] = { item = "burger-bun", amount = 1 },
                [2] = { item = "slicedtomato", amount = 4 },
                [3] = { item = "burger-lettuce", amount = 4 },
            },
            ReturnItem = {
                [1] = { item = "burger-meatfree", amount = 1 }
            },
            time = 12000,
        },
    },
}
Config.MiscMenu = { -- Misc menu for locations that dont fit elsewhere
    ["burgershot"] = { --Burgershot fryer
        [1] = {
            Name = "Fry Fries into French Fries",
            Text = "Raw Fries x 1",
            RequiredItems = {
                [1] = { item = "rawfries", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "burger-fries", amount = 2},
            },
            time = 12000,
            spatula = false,
        },
    },
    ["popsdiner"] = { --pôps coffee
        [1] = {
            Name = "Cup of Coffee",
            Text = "Coffee Grounds x 1, Milk x 1",
            RequiredItems = {
                [1] = { item = "coffeegrounds", amount = 2 },
                [2] = { item = "milk", amount = 1 },

            },
            ReturnItem = {
                [1] = { item = "coffeemug", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
        [2] = {
            Name = "Hot Chocolate",
            Text = "Chocolate Powder x 2, Milk x 1",
            RequiredItems = {
                [1] = { item = "chocolatepowder", amount = 2 },
                [2] = { item = "milk", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "hotcoco", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
        [3] = {
            Name = "Cup of Tea",
            Text = "Green tea powder x 2, Water x 1",
            RequiredItems = {
                [1] = { item = "greenteapowder", amount = 2 },
                [2] = { item = "water_bottle", amount = 1 },
            },
            ReturnItem = {
                [1] = { item = "cupoftea", amount = 1}
            },
            time = 8000,
            spatula = false,
        },
    },
}
-- Market Shop Items, every food item can be created using items from here.
Config.ShopItems = {
    label = "Restaurant Wholesale Market",
    slots = 41,
    items = {
        [1] = { name = "tomato", price = 0, amount = 100, info = {}, type = "item", slot = 1, },
        [2] = { name = "headoflettuce", price = 0, amount = 100, info = {}, type = "item", slot = 2, },
        [3] = { name = "potato", price = 0, amount = 100, info = {}, type = "item", slot = 3, },
        [4] = { name = "applepie", price = 0, amount = 100, info = {}, type = "item", slot = 4, },
        [5] = { name = "peachcobbler", price = 0, amount = 100, info = {}, type = "item", slot = 5, },
        [6] = { name = "coconutcreampie", price = 0, amount = 100, info = {}, type = "item", slot = 6, },
        [7] = { name = "burger-sodasyrup", price = 0, amount = 100, info = {}, type = "item", slot = 7, },
        [8] = { name = "energyshot", price = 0, amount = 100, info = {}, type = "item", slot = 8, },
        [9] = { name = "greenteapowder", price = 0, amount = 100, info = {}, type = "item", slot = 9, },
        [10] = { name = "tapiokaballs", price = 0, amount = 100, info = {}, type = "item", slot = 10, },
        [11] = { name = "popssauce", price = 0, amount = 100, info = {}, type = "item", slot = 11, },
        [12] = { name = "chocolatepowder", price = 0, amount = 100, info = {}, type = "item", slot = 12, },
        [13] = { name = "coffeegrounds", price = 0, amount = 100, info = {}, type = "item", slot = 13, },
        [14] = { name = "egg", price = 0, amount = 100, info = {}, type = "item", slot = 14, },
        [15] = { name = "cheese", price = 0, amount = 100, info = {}, type = "item", slot = 15, },
        [16] = { name = "burger-meat", price = 0, amount = 100, info = {}, type = "item", slot = 16, },
        [17] = { name = "burger-bun", price = 0, amount = 100, info = {}, type = "item", slot = 17, },
        [18] = { name = "bread", price = 0, amount = 100, info = {}, type = "item", slot = 18, },
        [19] = { name = "rice", price = 0, amount = 100, info = {}, type = "item", slot = 19, },
        [20] = { name = "pizza-dough", price = 0, amount = 100, info = {}, type = "item", slot = 20, },
        [21] = { name = "chicken", price = 0, amount = 100, info = {}, type = "item", slot = 21, },
        [22] = { name = "raw_bacon", price = 0, amount = 100, info = {}, type = "item", slot = 22, },
        [23] = { name = "sprinkles", price = 0, amount = 100, info = {}, type = "item", slot = 23, },
        [24] = { name = "pineapple", price = 0, amount = 100, info = {}, type = "item", slot = 24, },
        [25] = { name = "pepperoni-stick", price = 0, amount = 100, info = {}, type = "item", slot = 25, },
        [26] = { name = "packaged-ham", price = 0, amount = 100, info = {}, type = "item", slot = 26, },
        [27] = { name = "flour", price = 0, amount = 100, info = {}, type = "item", slot = 27, },
        [28] = { name = "milk", price = 0, amount = 100, info = {}, type = "item", slot = 28, },
        [29] = { name = "misopaste", price = 0, amount = 100, info = {}, type = "item", slot = 29, },
        [30] = { name = "tea", price = 0, amount = 100, info = {}, type = "item", slot = 30, },
        [31] = { name = "tofu", price = 0, amount = 100, info = {}, type = "item", slot = 31, },
        [32] = { name = "rawsugar", price = 0, amount = 100, info = {}, type = "item", slot = 32, },
        [33] = { name = "tuna", price = 0, amount = 100, info = {}, type = "item", slot = 33, },
        [34] = { name = "avocado", price = 0, amount = 100, info = {}, type = "item", slot = 34, },
        [35] = { name = "chocolate", price = 0, amount = 100, info = {}, type = "item", slot = 35, },
        [36] = { name = "vanillabean", price = 0, amount = 100, info = {}, type = "item", slot = 36, },
        [37] = { name = "nori", price = 0, amount = 100, info = {}, type = "item", slot = 37, },
        [38] = { name = "umami", price = 0, amount = 100, info = {}, type = "item", slot = 38, },
        [39] = { name = "mixedlettuce", price = 0, amount = 100, info = {}, type = "item", slot = 39, },
        [40] = { name = "mango", price = 0, amount = 100, info = {}, type = "item", slot = 40, },
        [41] = { name = "water_bottle", price = 0, amount = 100, info = {}, type = "item", slot = 41, },
    }
}

-- QB-Target Eye Locations 
Config.Grills = {
    [1] = { -- pops diner
        coords = vector3(1587.92, 6458.84, 26.01),
        length = 0.8,
        width = 1.4,
        name = "popsdinergrill",
        heading = 335,
        debugPoly = false,
        minZ = 25.11,
        maxZ = 26.71,
        job = "popsdiner",
        location = "popsdiner",
        label = "Pops Diner Grill",
    },
    [2] = { -- Burgershot 1
        coords = vector3(-1200.54, -900.92, 14.0),
        length = 1.8,
        width = 1.2,
        name = "burgershotgrill1",
        heading = 35,
        debugPoly = false,
        minZ = 13.0,
        maxZ = 14.4,
        job = "burgershot",
        location = "burgershot",
        label = "Burger Shot Grill",
    },
    [3] = { -- Burgershot 2
        coords = vector3(-1202.94, -897.38, 14.0),
        length = 1.7,
        width = 1,
        name = "burgershotgrill2",
        heading = 34,
        debugPoly = false,
        minZ = 13.0,
        maxZ = 14.3,
        job = "burgershot",
        location = "burgershot",
        label = "Burger Shot Grill",
    },
    [4] = { -- uWu 1
        coords = vector3(-591.02, -1056.49, 22.36),
        length = 2.4,
        width = 0.6,
        name = "uwugrill",
        heading = 0,
        debugPoly = false,
        minZ = 21.41,
        maxZ = 22.61,
        job = "uwucafe",
        location = "uwucafe",
        label = "uWu Cafe Grill",
    },
    [5] = { -- pizza
        coords = vector3(814.12, -752.9, 26.78),
        length = 1.8,
        width = 1.2,
        name = "pizzagrill",
        heading = 0,
        debugPoly = false,
        minZ = 25.78,
        maxZ = 28.18,
        job = "pizzathis",
        location = "pizzathis",
        label = "Pizza This Grill",
    },
}
Config.DrinkLocations = {
    [1] = { -- pops diner
        coords = vector3(1585.85, 6459.65, 26.01),
        length = 1.4,
        width = 0.6,
        name = "popsdinerdrinks",
        heading = 245,
        debugPoly = false,
        minZ=26.06,
        maxZ=26.86,
        job = "popsdiner",
        location = "popsdiner",
        label = "Pops Diner Drinks",
    },
    [2] = { -- Burgershot Drinks 1
        coords = vector3(-1199.54, -895.52, 14.0),
        length = 1.5,
        width = 0.6,
        name = "burgershotdrinks1",
        heading = 34,
        debugPoly = false,
        minZ = 13.8,
        maxZ = 14.8,
        job = "burgershot",
        location = "burgershot",
        label = "Burger Shot Drinks",
    },
    [3] = { -- Burgershot Drinks 2
        coords = vector3(-1189.08, -905.28, 14.0),
        length = 1.5,
        width = 0.6,
        name = "burgershotdrinks2",
        heading = 33,
        debugPoly = false,
        minZ = 13.8,
        maxZ = 14.8,
        job = "burgershot",
        location = "burgershot",
        label = "Burger Shot Drinks",
    },
    [4] = { -- uWu 1
        coords = vector3(-586.84, -1061.91, 22.34),
        length = 0.8,
        width = 0.6,
        name = "uwudrinks",
        heading = 0,
        debugPoly = false,
        minZ = 21.34,
        maxZ = 22.94,
        job = "uwucafe",
        location = "uwucafe",
        label = "uWu Cafe Drinks",
    },
    [5] = { -- pizza 1
        coords = vector3(814.09, -749.3, 26.78),
        length = 2.4,
        width = 1,
        name = "pizzadrinks",
        heading = 0,
        debugPoly = false,
        minZ = 26.98,
        maxZ = 28.38,
        job = "pizzathis",
        location = "pizzathis",
        label = "Pizza This Drinks",
    },
}
Config.PrepLocations = {
    [1] = { -- burgershot
        coords = vector3(-1197.57, -899.41, 14.0),
        length = 1.8,
        width = 0.7,
        name = "burgershotprep",
        heading = 304,
        debugPoly = false,
        minZ = 13.0,
        maxZ = 14.4,
        job = "burgershot",
        location = "burgershot",
        label = "Burger Shot Prep",
    },
    [2] = { -- uWu 1
        coords = vector3(-591.01, -1063.19, 22.36),
        length = 2.6,
        width = 0.6,
        name = "uwuprep",
        heading = 0,
        debugPoly = false,
        minZ = 21.36,
        maxZ = 22.56,
        job = "uwucafe",
        location = "uwucafe",
        label = "uWu Cafe Prep",
    },
    [3] = { -- pops
        coords = vector3(1586.92, 6459.3, 26.01),
        length = 0.6,
        width = 0.6,
        name = "popsprep",
        heading = 335,
        debugPoly = false,
        minZ=25.71,
        maxZ=26.51,
        job = "popsdiner",
        location = "popsdiner",
        label = "Pops Diner Prep",
    },
    [4] = { -- pizzathis
        coords = vector3(808.7, -761.2, 26.78),
        length = 3.2,
        width = 2,
        name = "pizzaprep",
        heading = 0,
        debugPoly = false,
        minZ=25.78,
        maxZ=27.38,
        job = "pizzathis",
        location = "pizzathis",
        label = "Pizza This Prep",
    },
}
Config.MiscLocations = {
    [1] = { -- Burgershot Fryer
        coords = vector3(-1202.01, -899.27, 14.0),
        length = 2.5,
        width = 1.5,
        name = "burgershotfryer",
        heading = 35,
        debugPoly = false,
        minZ = 13.0,
        maxZ = 14.4,
        job = "burgershot",
        location = "burgershot",
        label = "Burger Shot Fryer",
    },
    [2] = { -- pops coffee
        coords = vector3(1592.57, 6456.77, 26.01),
        length = 1.4,
        width = 0.4,
        name = "popscoffee",
        heading = 245,
        debugPoly = false,
        minZ=26.01,
        maxZ=26.81,
        job = "popsdiner",
        location = "popsdiner",
        label = "Coffee Machine",
    },
}
Config.RegisterLocations = {
    [1] = { -- pops diner
        coords = vector3(1595.38, 6455.35, 26.01),
        length = 0.6,
        width = 0.6,
        name = "popsdinerregister1",
        heading = 325,
        debugPoly = false,
        minZ=25.96,
        maxZ=26.56,
        job = "popsdiner",
        location = "popsdiner",
        label = "Pops Diner Register 1",
    },
    [2] = { -- pops diner
        coords = vector3(1589.19, 6458.28, 26.01),
        length = 0.6,
        width = 0.6,
        name = "popsdinerregister2",
        heading = 340,
        debugPoly = false,
        minZ=26.01,
        maxZ=26.61,
        job = "popsdiner",
        location = "popsdiner",
        label = "Pops Diner Register 2",
    },
    [3] = { -- Uwu
        coords = vector3(-584.25, -1058.8, 22.37),
        length = 0.5,
        width = 0.4,
        name = "uwuregister1",
        heading = 270,
        debugPoly = false,
        minZ = 21.0,
        maxZ = 22.8,
        job = "uwucafe",
        location = "uwucafe",
        label = "Uwu Cafe Register 1",
    },
    [4] = { -- Uwu
        coords = vector3(-584.25, -1061.5, 22.37),
        length = 0.6,
        width = 0.5,
        name = "uwuregister2",
        heading = 270,
        debugPoly = false,
        minZ = 21.0,
        maxZ = 22.8,
        job = "uwucafe",
        location = "uwucafe",
        label = "Uwu Cafe Register 2",
    },    
    [5] = { -- burgershot
        coords = vector3(-1196.01, -891.34, 14.0),
        length = 0.5,
        width = 0.4,
        name = "burgershotregister1",
        heading = 125,
        debugPoly = false,
        minZ=14.0,
        maxZ=14.5,
        job = "burgershot",
        location = "burgershot",
        label = "BurgerShot Register 1",
    },    
    [6] = { -- burgershot
        coords = vector3(-1194.65, -893.3, 14.0),
        length = 0.6,
        width = 0.5,
        name = "burgershotregister2",
        heading = 302,
        debugPoly = false,
        minZ=14.1,
        maxZ=14.5,
        job = "burgershot",
        location = "burgershot",
        label = "BurgerShot Register 2",
    },
    [7] = { -- burgershot
        coords = vector3(-1193.39, -895.22, 14.0),
        length = 0.6,
        width = 0.4,
        name = "burgershotregister3",
        heading = 125,
        debugPoly = false,
        minZ=14.0,
        maxZ=14.4,
        job = "burgershot",
        location = "burgershot",
        label = "BurgerShot Register 3",
    },
    [8] = { -- burgershot
        coords = vector3(-1192.52, -906.65, 14.0),
        length = 0.5,
        width = 0.5,
        name = "burgershotregister4",
        heading = 0,
        debugPoly = false,
        minZ=13.8,
        maxZ=14.2,
        job = "burgershot",
        location = "burgershot",
        label = "BurgerShot Register 4",
    },
    [9] = { -- Pizza This 1
        coords = vector3(811.36, -750.76, 26.78),
        length = 0.7,
        width = 0.5,
        name = "pizzathisregister1",
        heading = 0,
        debugPoly = false,
        minZ=25.78,
        maxZ=27.78,
        job = "pizzathis",
        location = "pizzathis",
        label = "Pizza This Register 1",
    },
    [10] = { -- Pizza This 2
        coords = vector3(811.39, -752.07, 26.78),
        length = 0.7,
        width = 0.5,
        name = "pizzathisregister2",
        heading = 0,
        debugPoly = false,
        minZ=25.78,
        maxZ=27.78,
        job = "pizzathis",
        location = "pizzathis",
        label = "Pizza This Register 2",
    },

}
Config.PickupTrays = {
    [1] = { -- uwu 1
        coords = vector3(-584.1, -1062.1, 22.6),
        length = 0.5,
        width = 0.7,
        name = "uwucafetray1",
        heading = 87.8,
        debugPoly = false,
        minZ=21.1,
        maxZ=22.6,
        location = "uwucafe",
        label = "Uwu tray 1",
        slots = 6,
        maxweight = 10000,
    },
    [2] = { -- uwu 2
        coords = vector3(-584.11, -1059.39, 22.67),
        length = 0.5,
        width = 0.7,
        name = "uwucafetray2",
        heading = 87.8,
        debugPoly = false,
        minZ=21.1,
        maxZ=22.6,
        location = "uwucafe",
        label = "Uwu tray 2",
        slots = 6,
        maxweight = 10000,
    },
    [3] = { -- pops 1
        coords = vector3(1590.38, 6455.33, 26.01),
        length = 0.4,
        width = 0.6,
        name = "popstray1",
        heading = 336,
        debugPoly = false,
        minZ=26.01,
        maxZ=26.41,
        location = "popsdiner",
        label = "Pops Tray 1",
        slots = 6,
        maxweight = 10000,
    },
    [4] = { -- pops 2
        coords = vector3(1586.69, 6457.08, 26.01),
        length = 0.4,
        width = 0.6,
        name = "popstray2",
        heading = 335,
        debugPoly = false,
        minZ=26.01,
        maxZ=26.41,
        location = "popsdiner",
        label = "Pops Tray 2",
        slots = 6,
        maxweight = 10000,
    },
    [5] = { -- pops 3
        coords = vector3(1593.61, 6453.82, 26.01),
        length = 0.4,
        width = 0.6,
        name = "popstray3",
        heading = 335,
        debugPoly = false,
        minZ=26.01,
        maxZ=26.41,
        location = "popsdiner",
        label = "Pops Tray 3",
        slots = 6,
        maxweight = 10000,
    },
    [6] = { -- burger 1
        coords = vector3(-1195.29, -892.31, 14.0),
        length = 1.05,
        width = 1.0,
        name = "burgertray1",
        heading = 35,
        debugPoly = false,
        minZ=13.8,
        maxZ=14.3,
        location = "burgershot",
        label = "Burger Tray 1",
        slots = 6,
        maxweight = 10000,
    },
    [7] = { -- burger 2
        coords = vector3(-1193.87, -894.38, 14.0),
        length = 0.5,
        width = 0.7,
        name = "burgertray2",
        heading = 318,
        debugPoly = false,
		minZ=14.0,
		maxZ=14.4,
        location = "burgershot",
        label = "Burger Tray 2",
        slots = 6,
        maxweight = 10000,
    },
    [8] = { -- burger 3
        coords = vector3(-1193.88, -906.98, 14.0),
        length = 1.0,
        width = 1.0,
        name = "burgertray3",
        heading = 250,
        debugPoly = false,
		minZ=13.2,
		maxZ=14.2,
        location = "burgershot",
        label = "Burger Tray 3",
        slots = 6,
        maxweight = 10000,
    },
    [9] = { -- pizza1
        coords = vector3(810.86, -750.77, 26.78),
        length = 0.7,
        width = 0.5,
        name = "pizzatray1",
        heading = 0,
        debugPoly = false,
		minZ=23.18,
		maxZ=27.78,
        location = "pizzathis",
        label = "Pizza This Tray 1",
        slots = 6,
        maxweight = 10000,
    },
    [10] = { -- pizza1
        coords = vector3(810.87, -752.09, 26.78),
        length = 0.7,
        width = 0.5,
        name = "pizzatray2",
        heading = 0,
        debugPoly = false,
		minZ=23.18,
		maxZ=27.78,
        location = "pizzathis",
        label = "Pizza This Tray 2",
        slots = 6,
        maxweight = 10000,
    },
}
Config.Stashes = {
    [1] = { -- uwu 1
        coords = vector3(-591.31, -1058.67, 22.43),
        length = 1.6,
        width = 1.0,
        name = "uwucafestorage",
        heading = 89.0,
        debugPoly = false,
        minZ=21.0,
        maxZ=23.6,
        location = "uwucafe",
        label = "Uwu Storage",
        job = "uwucafe",
        slots = 40,
        maxweight = 250000,
    },
    [2] = { -- pops
        coords = vector3(1588.81, 6456.1, 26.01),
        length = 2.0,
        width = 0.6,
        name = "popsstorage",
        heading = 245,
        debugPoly = false,
        minZ=25.46,
        maxZ=26.46,
        location = "popsdiner",
        label = "Pops Storage",
        job = "popsdiner",
        slots = 40,
        maxweight = 250000,
    },
    [3] = { -- burger fridge
        coords = vector3(-1203.71, -895.86, 14.0),
        length = 1.6,
        width = 1.0,
        name = "burgerfridge",
        heading = 35,
        debugPoly = false,
        minZ=13.0,
        maxZ=15.6,
        location = "burgershot",
        label = "Burger fridge",
        job = "burgershot",
        slots = 40,
        maxweight = 250000,
    },
    [4] = { -- burger display
        coords = vector3(-1197.78, -894.45, 14.0),
        length = 4.6,
        width = 1.2,
        name = "burgerdisplay",
        heading = 34,
        debugPoly = false,
        minZ=13.0,
        maxZ=14.8,
        location = "burgershot",
        label = "Burger display",
        job = "burgershot",
        slots = 40,
        maxweight = 250000,
    },
    [5] = { -- Pizza bar fridge
        coords = vector3(814.09, -749.35, 26.78),
        length = 2.4,
        width = 1.2,
        name = "pizzabarfridge",
        heading = 0,
        debugPoly = false,
        minZ=25.78,
        maxZ=26.78,
        location = "pizzathis",
        label = "Pizza This Fridge",
        job = "pizzathis",
        slots = 40,
        maxweight = 250000,
    },
    [6] = { -- Pizza kitchen fridge
        coords = vector3(805.68, -761.67, 26.78),
        length = 1.8,
        width = 0.8,
        name = "pizzakitchenfridge",
        heading = 0,
        debugPoly = false,
        minZ=25.78,
        maxZ=28.38,
        location = "pizzathis",
        label = "Pizza This Fridge",
        job = "pizzathis",
        slots = 40,
        maxweight = 250000,
    },
}
Config.Consumables = {
    ['drink'] = {
        'pops-soda',
        'pops-coffee',
        'pops-chocolate-malt',
        'uwu-uwutea',
        'uwu-kumbuwucha-tea',
        'uwu-uwutea-milk',
        'pizzathis-soda',
        'pizzathis-energy',
        'pizzathis-slushie',
        'burgershot-soda',
        'burgershot-chocolate-meteorite',
        'burgershot-vanilla-meteorite',
    },
    ['food'] = {
        'pops-burger',
        'pops-breakfast',
        'pops-blt',
        'apple-pie-slice',
        'peach-cobbler-slice',
        'coconut-cream-slice',
        'uwu-pink-uwucake',
        'uwu-red-uwucake',
        'uwu-blue-uwucake',
        'uwu-green-uwucake',
        'uwu-suwushi',
        'uwu-uwurice',
        'pizzathis-garlic-bread',
        'pizzathis-cheese-slice',
        'pizzathis-pepperoni-slice',
        'pizzathis-hawaiian-slice',
        'burgershot-heartstopper',
        'burgershot-bleeder',
        'burgershot-moneyshot',
        'burgershot-french-fries',
    },
}