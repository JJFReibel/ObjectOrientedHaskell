{-|
MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
-}

data Car = Car {
  wheels :: Int,
  doors :: Int,
  cylinders :: Int
} deriving Show

addWheels :: Car -> Int -> Int -> Int -> Car
addWheels (Car x y z) dx dy dz = Car (x + dx) y z

deleteWheels :: Car -> Int -> Int -> Int -> Car
deleteWheels (Car x y z) dx dy dz = Car (x - dx) y z

addDoors :: Car -> Int -> Int -> Int -> Car
addDoors (Car x y z) dx dy dz = Car x (y + dy) z

deleteDoors :: Car -> Int -> Int -> Int -> Car
deleteDoors (Car x y z) dx dy dz = Car x (y - dy) z

addCylinders :: Car -> Int -> Int -> Int -> Car
addCylinders (Car x y z) dx dy dz = Car x (y + dy) z

deleteCylinders :: Car -> Int -> Int -> Int -> Car
deleteCylinders (Car x y z) dx dy dz = Car x (y - dy) z

main = do
  print "Creating car."
  let subaru = Car {wheels = 4, doors = 4, cylinders = 4}
  putStr . show $ "Wheel check: "
  print $ wheels subaru
  putStr . show $ "Door check: "
  print $ doors subaru
  putStr . show $ "Cylinders check: "
  print $ cylinders subaru
  print ""
  print "Adding wheel directly to car object."
  let subaru2 = subaru { wheels = 5 }
  putStr . show $ "Wheel check: "
  print $ wheels subaru2
  putStr . show $ "Door check: "
  print $ doors subaru2
  putStr . show $ "Cylinders check: "
  print $ cylinders subaru2
  print ""
  let subaru3 = deleteWheels subaru2 1 1 1
  putStr . show $ "Wheel check: "
  print $ wheels subaru3
  putStr . show $ "Door check: "
  print $ doors subaru3
  putStr . show $ "Cylinders check: "
  print $ cylinders subaru3
  print ""

  return 0
