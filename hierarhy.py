from datetime import datetime

class Animal:
    def __init__(self, name, birth_date):
        self.name = name
        self.birth_date = datetime.strptime(birth_date, '%Y-%m-%d')
        self.commands = []

    def add_command(self, command):
        self.commands.append(command)

    def get_commands(self):
        return self.commands

class Pet(Animal):
    pass

class PackAnimal(Animal):
    pass

class Dog(Pet):
    def __init__(self, name, birth_date, breed, color):
        super().__init__(name, birth_date)
        self.breed = breed
        self.color = color

class Cat(Pet):
    def __init__(self, name, birth_date, breed, color):
        super().__init__(name, birth_date)
        self.breed = breed
        self.color = color

class Hamster(Pet):
    def __init__(self, name, birth_date, cage_size):
        super().__init__(name, birth_date)
        self.cage_size = cage_size

class Horse(PackAnimal):
    def __init__(self, name, birth_date, weight, height):
        super().__init__(name, birth_date)
        self.weight = weight
        self.height = height

class Donkey(PackAnimal):
    def __init__(self, name, birth_date, strength):
        super().__init__(name, birth_date)
        self.strength = strength