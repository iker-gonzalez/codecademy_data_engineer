weight = 4.8

ground_cost = 0

ground_flat_charge = 20

premium_flat_charge = 125

#Ground Shipping

if weight <= 2:
  ground_cost = ground_flat_charge + weight * 1.5
elif (weight > 2) and (weight <= 6):
  ground_cost = ground_flat_charge + weight * 3
elif (weight > 6) and (weight <= 10):
  ground_cost = ground_flat_charge + weight * 4
elif weight > 10:
  ground_cost = ground_flat_charge + weight * 4.75

print("Shipping this package by GROUND costs: " + str(ground_cost))

#Drone Shipping

drone_cost = 0

if weight <= 2:
  drone_cost = weight * 4.5
elif (weight > 2) and (weight <= 6):
  drone_cost = weight * 9
elif (weight > 6) and (weight <= 10):
  drone_cost = weight * 12
elif weight > 10:
  drone_cost = weight * 14.25

print(print("Shipping this package by DRONE costs: " + str(drone_cost)))
