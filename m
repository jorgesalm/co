MENU = {
    "espresso": {
        "ingredients": {
            "water": 50,
            "milk": 0,
            "coffee": 18,
        },
        "cost": 1.5,
    },
    "latte": {
        "ingredients": {
            "water": 200,
            "milk": 150,
            "coffee": 24,
        },
        "cost": 2.5,
    },
    "cappuccino": {
        "ingredients": {
            "water": 250,
            "milk": 100,
            "coffee": 24,
        },
        "cost": 3.0,
    }
}

on = True
coins = 0
key = ['water', 'milk', 'coffee']
resources = {
    "water": 300,
    "milk": 200,
    "coffee": 100,
}
def check_resourses(kind_coffe):
    if resources[key[0]] > MENU[kind_coffe]["ingredients"][key[0]] and \
            resources[key[1]] > MENU[kind_coffe]["ingredients"][key[1]] and \
            resources[key[2]] > MENU[kind_coffe]["ingredients"][key[2]]:
        return True
    else:
        return False

while on:

    # TODO: 1. ask the user for the coffee
    coffee = input("What would you like? (espresso/latte/cappuccino): ")

    # TODO: 3. Print report
    if coffee == "report":
        for key in resources:
            print(f"{key}: {resources[key]}")
        print(f"Money: {coins}")
    # TODO: 2. Turn off the Coffee Machine by entering “off” to the prompt
    elif coffee == "off":
        print("BYE")
        on = False

    # TODO: 3. Check for the resourses
    check = check_resourses(coffee)
    if check:
        print("there are enought resourses")
        #print(MENU["latte"]["ingredients"]["water"])
