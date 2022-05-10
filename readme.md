# Liberty Restaurants
## An advanced restaurant script for the QB Core Framework

### Features :
- Currently includes four restaurants with all custom items.
- The four included restaurants are the Pop's Diner, uWu Cafe, Pizza This (all Gabbz MLOs), and BurgerShot (NAME OF MLO MAKER).
- New restaurants easily added entirely in the config file.
- 


## How to Add a new Restaurant
### Add the job to the Config.Jobs if utilizing the wholesale market shop.
### Create the Cook, Prep, and Drink menus in the following ways, if needed, utilize the MiscMenu config setting for extras or create your own.
```
["location"] = {
        [1] = {
            Name = "Bacon Cheeseburger", --WHAT YOU WANT THE MENU TO SAY FOR THIS FOOD ITEM
            Text = "Bacon x 1, Cheeseburger x 1", --MENU TEXT FOR REQUIRED ITEMS
            RequiredItems = { --REQUIRED ITEM(S) TO COOK THIS FOOD
                [1] = { item = "bacon_item", amount = 1 }, -- REQUIRED ITEM AND AMOUNT
                [2] = { item = "cheeseburger_item", amount = 1 },
            },
            ReturnItem = { --ITEM(S) GIVEN WHEN PROGRESS BAR IS COMPLETED
                [1] = { item = "bacon_cheeseburger_item", amount = 1 } --ITEM NAME AND AMOUNT
            },
            time = 12000, --HOW LONG FOR PROGRESS BAR
            spatula = true, --IF YOU WANT TO USE A SPATULA ANIMATION OR A COKECUT ANIMATION
        },
      }
```

## How to set Locations
### You will need to set the Grills(CookMenu), Drink(DrinkMenu), Prep(PrepMenu), and if used the Misc(MiscMenu) for each new location that you add.  It is a box zone for QB-Target drawn from the config in the following way.
```
  [1] = {
          coords = vector3(X, Y, Z), --Vector 3 location of box zone
          length = 0.0, --Length of box zone
          width = 0.0, --width of box zone
          name = "name", --name of zone
          heading = 0.0, --heading
          debugPoly = false, --debugPoly, usually false.  Used to see the outline of the zone.
          minZ = 00.00, --minZ of box zone
          maxZ = 00.00, --maxZ of box zone
          job = "job", --job required to use target. Not required for pickups.
          location = "location", --location name of restaurant
          label = "Target Label", -- What the QB-Target text says. 
      },
```
### All Location utilize QB-Target in the same way, including stashes, registers, and pickups. Stashes and Pickups are done slightly different, with the following config file.
```
  [1] = {
          coords = vector3(X, Y, Z), --Vector 3 location of box zone
          length = 0.0, --Length of box zone
          width = 0.0, --width of box zone
          name = "name", --name of zone
          heading = 0.0, --heading
          debugPoly = false, --debugPoly, usually false.  Used to see the outline of the zone.
          minZ = 00.00, --minZ of box zone
          maxZ = 00.00, --maxZ of box zone
          job = "job", --job required to use target. Not required for pickups.
          location = "location", --location name of restaurant
          label = "Target Label", -- What the QB-Target text says.
          slots = 40, --For stashes we went 40, for pickups we went 5 by default.
          maxweight = 250000, --For stashes it is 250000 (2500), for pickups it is 10000 (10).
      },
```

### Add the following items to your QBCore Shared items.
```
-- Liberty Restaurants Items
    -- Wholesale Market Items
    	["whole-tomato"]  = {["name"] = "whole-tomato",  ["label"] = "Tomato",  ["weight"] = 100, ["type"] = "item", ["image"] = "whole-tomato.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A whole tomato."},
        ["whole-lettuce"] = {["name"] = "whole-lettuce", ["label"] = "Lettuce", ["weight"] = 100, ["type"] = "item", ["image"] = "whole-lettuce.png", ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A whole lettuce."},
        ["whole-potato"]  = {["name"] = "whole-potato",  ["label"] = "Potato",  ["weight"] = 100, ["type"] = "item", ["image"] = "whole-potato.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A whole potato."},
        ["whole-apple-pie"]  = {["name"] = "whole-apple-pie",  ["label"] = "Apple Pie",  ["weight"] = 100, ["type"] = "item", ["image"] = "whole-apple-pie.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A whole apple pie."},
        ["whole-peach-cobbler"]  = {["name"] = "whole-peach-cobbler",  ["label"] = "Peach Cobbler",  ["weight"] = 100, ["type"] = "item", ["image"] = "whole-peach-cobbler.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A whole peach cobbler."},
        ["whole-coconut-cream-pie"]  = {["name"] = "whole-apple-pie",  ["label"] = "Coconut Cream Pie",  ["weight"] = 100, ["type"] = "item", ["image"] = "whole-coconut-cream-pie.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A whole coconut cream pie."},
        ["soda-cup"]  = {["name"] = "soda-cup",  ["label"] = "Soda Cup",  ["weight"] = 100, ["type"] = "item", ["image"] = "soda-cup.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A soda cup."},
        ["tea-cup"]  = {["name"] = "tea-cup",  ["label"] = "Tea Cup",  ["weight"] = 100, ["type"] = "item", ["image"] = "tea-cup.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A tea cup."},
        ["coffee-cup"]  = {["name"] = "coffee-cup",  ["label"] = "Coffee Cup",  ["weight"] = 100, ["type"] = "item", ["image"] = "coffee-cup.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A coffee cup."},
        ["soda-syrup"]  = {["name"] = "soda-syrup",  ["label"] = "Soda Syrup",  ["weight"] = 100, ["type"] = "item", ["image"] = "soda-syrup.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Soda syrup."},
        ["slushie-syrup"]  = {["name"] = "slushie-syrup",  ["label"] = "Slushie Syrup",  ["weight"] = 100, ["type"] = "item", ["image"] = "slushie-syrup.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Slushie syrup."},
        ["energy-shot"]  = {["name"] = "energy-shot",  ["label"] = "Energy Shot",  ["weight"] = 100, ["type"] = "item", ["image"] = "energy-shot.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A shot of liquid energy."},
        ["green-tea-powder"]  = {["name"] = "green-tea-powder",  ["label"] = "Green Tea Powder",  ["weight"] = 100, ["type"] = "item", ["image"] = "green-tea-powder.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Green tea powder."},
        ["tapioca-pearls"]  = {["name"] = "tapioca-pearls",  ["label"] = "Tapioca Pearls",  ["weight"] = 100, ["type"] = "item", ["image"] = "tapioca-pearls.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Tapioca pearls."},
        ["half-pint-milk"]  = {["name"] = "half-pint-milk",  ["label"] = "Milk (Half Pint)",  ["weight"] = 100, ["type"] = "item", ["image"] = "half-pint-milk.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A half pint of milk."},
        ["chocolate-powder"]  = {["name"] = "chocolate-powder",  ["label"] = "Chocolate Powder",  ["weight"] = 100, ["type"] = "item", ["image"] = "chocolate-powder.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Chocolate powder."},
        ["pint-ice-cream"]  = {["name"] = "pint-ice-cream",  ["label"] = "Pint of Ice Cream",  ["weight"] = 100, ["type"] = "item", ["image"] = "pint-ice-cream.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Pint of vanilla ice cream."},
        ["coffee-grounds"]  = {["name"] = "coffee-grounds",  ["label"] = "Coffee Grounds",  ["weight"] = 100, ["type"] = "item", ["image"] = "coffee-grounds.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Coffee grounds."},
        ["egg"]  = {["name"] = "egg",  ["label"] = "Egg",  ["weight"] = 100, ["type"] = "item", ["image"] = "egg.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "An egg."},
        ["beef-steak"]  = {["name"] = "beef-steak",  ["label"] = "Beef Steak",  ["weight"] = 100, ["type"] = "item", ["image"] = "beef-steak.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A beef steak."},
        ["burger-meat"]  = {["name"] = "burger-meat",  ["label"] = "Burget Meat",  ["weight"] = 100, ["type"] = "item", ["image"] = "burger-meat.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A beef burger patty."},
        ["burger-bun"]  = {["name"] = "burger-bun",  ["label"] = "Burger Buns",  ["weight"] = 100, ["type"] = "item", ["image"] = "burger-bun.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Some burger buns."},
        ["loaf-of-bread"]  = {["name"] = "loaf-of-bread",  ["label"] = "Loaf of Bread",  ["weight"] = 100, ["type"] = "item", ["image"] = "loaf-of-bread.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A loaf of bread."},
        ["bag-of-rice"]  = {["name"] = "bag-of-rice",  ["label"] = "Bag of Rice",  ["weight"] = 100, ["type"] = "item", ["image"] = "bag-of-rice.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A bag of dry rice."},
        ["seaweed-strip"]  = {["name"] = "seaweed-strip",  ["label"] = "Seaweed Strip",  ["weight"] = 100, ["type"] = "item", ["image"] = "seaweed-strip.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A strip of dry edible seaweed."},
        ["sushi-grade-salmon"]  = {["name"] = "sushi-grade-salmon",  ["label"] = "Sushi Grade Salmon",  ["weight"] = 100, ["type"] = "item", ["image"] = "sushi-grade-salmon.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Sushi grade salmon"},
        ["pizza-dough"]  = {["name"] = "pizza-dough",  ["label"] = "Pizza Dough",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizza-dough.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Raw pizza dough."},
        ["cooking-spices"]  = {["name"] = "cooking-spices",  ["label"] = "Assorted Spices",  ["weight"] = 100, ["type"] = "item", ["image"] = "cooking-spices.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Assorted cooking spices."},
        ["raw-bacon"]  = {["name"] = "raw-bacon",  ["label"] = "Raw Bacon",  ["weight"] = 100, ["type"] = "item", ["image"] = "raw-bacon.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Raw bacon strips."},
        ["blank-cupcake"]  = {["name"] = "blank-cupcake",  ["label"] = "Blank Cupcake",  ["weight"] = 100, ["type"] = "item", ["image"] = "blank-cupcake.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A blank cupcake."},
        ["pink-icing"]  = {["name"] = "pink-icing",  ["label"] = "Pink Icing",  ["weight"] = 100, ["type"] = "item", ["image"] = "pink-icing.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Some pink icing."},
        ["red-icing"]  = {["name"] = "red-icing",  ["label"] = "Red Icing",  ["weight"] = 100, ["type"] = "item", ["image"] = "red-icing.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Some red icing."},
        ["blue-icing"]  = {["name"] = "blue-icing",  ["label"] = "Blue Icing",  ["weight"] = 100, ["type"] = "item", ["image"] = "blue-icing.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Some blue icing."},
        ["green-icing"]  = {["name"] = "green-icing",  ["label"] = "Green Icing",  ["weight"] = 100, ["type"] = "item", ["image"] = "green-icing.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Some green icing"},
        ["sprinkles"]  = {["name"] = "sprinkles",  ["label"] = "Sprinkles",  ["weight"] = 100, ["type"] = "item", ["image"] = "sprinkles.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A pack of sprinkles"},    
        ["pineapple"]  = {["name"] = "pineapple",  ["label"] = "Pineapple",  ["weight"] = 100, ["type"] = "item", ["image"] = "pineapple.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A pineapple"},    
        ["pepperoni-stick"]  = {["name"] = "pepperoni-stick",  ["label"] = "Pepperoni Stick",  ["weight"] = 100, ["type"] = "item", ["image"] = "pepperoni-stick.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A stick of pepperoni."},    
        ["packaged-ham"]  = {["name"] = "packaged-ham",  ["label"] = "Packaged Ham",  ["weight"] = 100, ["type"] = "item", ["image"] = "packaged-ham.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A package of ham."},    
        ["mozzarella-cheese"]  = {["name"] = "mozzarella-cheese",  ["label"] = "Mozzarella Cheese",  ["weight"] = 100, ["type"] = "item", ["image"] = "mozzarella-cheese.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Mozzarella cheese block."},    
        ["butter-stick"]  = {["name"] = "butter-stick",  ["label"] = "Butter Stick",  ["weight"] = 100, ["type"] = "item", ["image"] = "butter-stick.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Stick of butter."},    

    -- Prep Items
        ["tomato-slice"]  = {["name"] = "tomato-slice",  ["label"] = "Tomato Slices",  ["weight"] = 100, ["type"] = "item", ["image"] = "tomato-slice.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Slices of tomato."},
        ["lettuce-slice"]  = {["name"] = "lettuce-slice",  ["label"] = "Lettuce Slices",  ["weight"] = 100, ["type"] = "item", ["image"] = "lettuce-slice.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Slices of lettuce."},
        ["pops-hashbrowns"]  = {["name"] = "pops-hashbrowns",  ["label"] = "Hashbrowns",  ["weight"] = 100, ["type"] = "item", ["image"] = "pops-hashbrowns.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Hashbrowns."},
        ["bread-slice"]  = {["name"] = "bread-slice",  ["label"] = "Sliced Bread",  ["weight"] = 100, ["type"] = "item", ["image"] = "bread-slice.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Two slices of bread."},
        ["pizzathis-secret-sauce"]  = {["name"] = "pizzathis-secret-sauce",  ["label"] = "Pizza This Secret Sauce",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-secret-sauce.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Pizza This secret sauce (shh)."},        
        ["pizzathis-cheese-pizza"]  = {["name"] = "pizzathis-cheese-pizza",  ["label"] = "Cheese Pizza",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-cheese-pizza.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A whole cheese pizza."},
        ["pizzathis-pepperoni-pizza"]  = {["name"] = "pizzathis-pepperoni-pizza",  ["label"] = "Pepperoni Pizza",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-pepperoni-pizza.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A whole pepperoni pizza."},
        ["pizzathis-hawaiian-pizza"]  = {["name"] = "pizzathis-hawaiian-pizza",  ["label"] = "Hawaiian Pizza",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-hawaiin-pizza.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A whole Hawaiian pizza."},
        ["pizzathis-pineapple-slice"]  = {["name"] = "pizzathis-pineapple-slice",  ["label"] = "Pineapple Slices",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-pineapple-slice.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Pineapple slices."},    
        ["pizzathis-ham-slice"]  = {["name"] = "pizzathis-ham-slice",  ["label"] = "Ham Slices",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-ham-slice.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Ham slices."},    
        ["pizzathis-pepperoni-slice"]  = {["name"] = "pizzathis-pepperoni-slice",  ["label"] = "Pepperoni Slices",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-pepperoni-slice.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Pepperoni slices."},    
        ["uwu-cup-rice"]  = {["name"] = "uwu-cup-rice",  ["label"] = "Cup of Rice",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-cup-rice.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "A cup of rice."},    
        ["cheese-slice"]  = {["name"] = "cheese-slice",  ["label"] = "Cheese Slice",  ["weight"] = 100, ["type"] = "item", ["image"] = "cheese-slice.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = false, ["combinable"] = nil, ["description"] = "Slice of cheese."},
        ["burgershot-cut-fries"]  = {["name"] = "burgershot-cut-fries",  ["label"] = "Fry Cut Potato",  ["weight"] = 100, ["type"] = "item", ["image"] = "burgershot-cut-fries.png",  ["unique"] = false, ["useable"] = false, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A potato cut into sticks to fry."},
    -- Consumable Food Items
      -- Pops Diner
        ["pops-soda"]  = {["name"] = "pops-soda",  ["label"] = "Pop\'s Soda",  ["weight"] = 100, ["type"] = "item", ["image"] = "pops-soda.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A refreshing Pop\'s soda."},
        ["pops-coffee"]  = {["name"] = "pops-coffee",  ["label"] = "Pop\'s Coffee",  ["weight"] = 100, ["type"] = "item", ["image"] = "pops-coffee.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A cup of Pop\'s coffee."},
        ["pops-chocolate-malt"]  = {["name"] = "pops-chocolate-malt",  ["label"] = "Chocolate Malt",  ["weight"] = 100, ["type"] = "item", ["image"] = "pops-chocolate-malt.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A chocolate malt."},
        ["pops-burger"]  = {["name"] = "pops-burger",  ["label"] = "Pop\'s Burger",  ["weight"] = 100, ["type"] = "item", ["image"] = "pops-burger.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A Pop\'s burger."},
        ["pops-breakfast"]  = {["name"] = "pops-breakfast",  ["label"] = "Pop\'s Breakfast",  ["weight"] = 100, ["type"] = "item", ["image"] = "pops-breakfast.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A Pop\'s breakfast platter."},
        ["pops-blt"]  = {["name"] = "pops-blt",  ["label"] = "Pop\'s BLT",  ["weight"] = 100, ["type"] = "item", ["image"] = "pops-blt.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A Pop\'s BLT."},
        ["apple-pie-slice"]  = {["name"] = "apple-pie-slice",  ["label"] = "Apple Pie Slice",  ["weight"] = 100, ["type"] = "item", ["image"] = "apple-pie-slice.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A slice of apple pie."},
        ["peach-cobbler-slice"]  = {["name"] = "peach-cobbler-slice",  ["label"] = "Peach Cobbler Slice",  ["weight"] = 100, ["type"] = "item", ["image"] = "peach-cobbler-slice.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A slice of peach cobbler."},
        ["coconut-cream-slice"]  = {["name"] = "coconut-cream-slice",  ["label"] = "Coconut Cream Slice",  ["weight"] = 100, ["type"] = "item", ["image"] = "coconut-cream-slice.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A slice of coconut cream pie."},        
      -- uWu Cafe
        ["uwu-pink-uwucake"]  = {["name"] = "uwu-pink-uwucake",  ["label"] = "uWucake",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-pink-uwucake.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A pink uWucake."},
        ["uwu-red-uwucake"]  = {["name"] = "uwu-red-uwucake",  ["label"] = "uWucake",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-red-uwucake.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A red uWucake."},
        ["uwu-blue-uwucake"]  = {["name"] = "uwu-blue-uwucake",  ["label"] = "uWucake",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-blue-uwucake.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A blue uWucake."},
        ["uwu-green-uwucake"]  = {["name"] = "uwu-green-uwucake",  ["label"] = "uWucake",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-green-uwucake.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A green uWucake."},
        ["uwu-uwutea"]  = {["name"] = "uwu-uwutea",  ["label"] = "uWu Tea",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-uwutea.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "uWu tea with tapioca pearls."},
        ["uwu-kumbuwucha-tea"]  = {["name"] = "uwu-kumbuwucha-tea",  ["label"] = "KumbuWucha Tea",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-kumbuwucha-tea.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "KumbuWucha tea."},
        ["uwu-uwutea-milk"]  = {["name"] = "uwu-uwutea-milk",  ["label"] = "uWu Tea with Milk",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-uwutea-milk.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "uWu tea with tapioca pearls and milk."},
        ["uwu-suwushi"]  = {["name"] = "uwu-suwushi",  ["label"] = "SuWushi",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-suwushi.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Salmon suWushi rolls."},
        ["uwu-uwurice"]  = {["name"] = "uwu-uwurice",  ["label"] = "uWurice",  ["weight"] = 100, ["type"] = "item", ["image"] = "uwu-uwurice.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Plate of uWurice."},
      -- Pizza This 
        ["pizzathis-garlic-bread"]  = {["name"] = "pizzathis-garlic-bread",  ["label"] = "Garlic Bread",  ["weight"] = 100, ["type"] = "item", ["image"] = "garlic-bread.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A slice of garlic bread."},
        ["pizzathis-soda"]  = {["name"] = "pizzathis-soda",  ["label"] = "Pizza This Soda",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-soda.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Pizza This soda."},
        ["pizzathis-energy"]  = {["name"] = "pizzathis-energy",  ["label"] = "Pizza This Energy",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-energy.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Pizza This Energy"},
        ["pizzathis-slushie"]  = {["name"] = "pizzathis-slushie",  ["label"] = "Pizza This Slushie",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-slushie.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Pizza This Slushie"},
        ["pizzathis-cheese-slice"]  = {["name"] = "pizzathis-cheese-slice",  ["label"] = "Slice of Cheese Pizza",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-cheese-slice.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Slice of cheese pizza."},
        ["pizzathis-pepperoni-slice"]  = {["name"] = "pizzathis-pepperoni-slice",  ["label"] = "Slice of Pepperoni Pizza",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-pepperoni-slice.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Slice of pepperoni pizza."},
        ["pizzathis-hawaiian-slice"]  = {["name"] = "pizzathis-hawaiian-slice",  ["label"] = "Slice of Hawaiian Pizza",  ["weight"] = 100, ["type"] = "item", ["image"] = "pizzathis-pepperoni-slice.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Slice of Hawaiian pizza."},
      -- Burgershot
        ["burgershot-heartstopper"]  = {["name"] = "burgershot-heartstopper",  ["label"] = "Heartstopper",  ["weight"] = 100, ["type"] = "item", ["image"] = "burgershot-heartstopper.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "It won\'t kill you. Probably."},
        ["burgershot-bleeder"]  = {["name"] = "burgershot-bleeder",  ["label"] = "Bleeder",  ["weight"] = 100, ["type"] = "item", ["image"] = "burgershot-bleeder.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A Burgershot bleeder."},
        ["burgershot-moneyshot"]  = {["name"] = "burgershot-moneyshot",  ["label"] = "Moneyshot",  ["weight"] = 100, ["type"] = "item", ["image"] = "burgershot-moneyshot.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Don\'t forget to clean up."},
        ["burgershot-soda"]  = {["name"] = "burgershot-soda",  ["label"] = "Burgershot Soda",  ["weight"] = 100, ["type"] = "item", ["image"] = "burgershot-soda.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A refreshing Burgershot soda."},
        ["burgershot-chocolate-meteorite"]  = {["name"] = "burgershot-chocolate-meteorite",  ["label"] = "Chocolate Meteorite",  ["weight"] = 100, ["type"] = "item", ["image"] = "burgershot-chocolate-meteorite.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A chunk of frozen chocolate icecream."},
        ["burgershot-vanilla-meteorite"]  = {["name"] = "burgershot-vanilla-meteorite",  ["label"] = "Vanilla Meteorite",  ["weight"] = 100, ["type"] = "item", ["image"] = "burgershot-vanilla-meteorite.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "A chunk of frozen vanilla icecream."},
        ["burgershot-french-fries"]  = {["name"] = "burgershot-french-fries",  ["label"] = "French Fries",  ["weight"] = 100, ["type"] = "item", ["image"] = "burgershot-french-fries.png",  ["unique"] = false, ["useable"] = true, ["shouldClose"] = true, ["combinable"] = nil, ["description"] = "Delicious fried sticks of potato."},
        



```