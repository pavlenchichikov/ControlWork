class AnimalRegistry:
    def __init__(self):
        self.animals = []
        self.animal_count = 0

    def add_animal(self, animal):
        self.animals.append(animal)
        self.animal_count += 1

    def list_commands(self, animal_name):
        for animal in self.animals:
            if animal.name == animal_name:
                return animal.get_commands()
        return []

    def train_command(self, animal_name, command):
        for animal in self.animals:
            if animal.name == animal_name:
                animal.add_command(command)
                return True
        return False

    def list_animals_by_birth_date(self):
        return sorted(self.animals, key=lambda x: x.birth_date)

    def get_animal_count(self):
        return self.animal_count