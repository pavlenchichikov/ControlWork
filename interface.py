import sys

from hierarhy import Dog, Cat, Hamster, Horse, Donkey
from registry import AnimalRegistry


class AnimalRegistryUI:
    def __init__(self):
        self.registry = AnimalRegistry()

    def main_menu(self):
        while True:
            print("\n--- Меню ---")
            print("1. Добавить новое животное")
            print("2. Список команд животного")
            print("3. Обучение новым командам")
            print("4. Вывести список животных по дате рождения")
            print("5. Вывести общее количество животных")
            print("6. Выход")

            choice = input("Выберите опцию: ")

            if choice == '1':
                self.add_new_animal()
            elif choice == '2':
                self.list_animal_commands()
            elif choice == '3':
                self.train_new_command()
            elif choice == '4':
                self.list_animals_by_birth_date()
            elif choice == '5':
                print(f"Общее количество животных: {self.registry.get_animal_count()}")
            elif choice == '6':
                sys.exit()
            else:
                print("Неверный выбор, попробуйте еще раз.")

    def add_new_animal(self):
        print("\n--- Добавить новое животное ---")
        animal_type = input("Введите тип животного (собака, кошка, хомяк, лошадь, осел): ").strip().lower()
        name = input("Введите имя животного: ")
        birth_date = input("Введите дату рождения (YYYY-MM-DD): ")

        if animal_type == 'собака':
            breed = input("Введите породу: ")
            color = input("Введите цвет: ")
            animal = Dog(name, birth_date, breed, color)
        elif animal_type == 'кошка':
            breed = input("Введите породу: ")
            color = input("Введите цвет: ")
            animal = Cat(name, birth_date, breed, color)
        elif animal_type == 'хомяк':
            cage_size = float(input("Введите размер клетки: "))
            animal = Hamster(name, birth_date, cage_size)
        elif animal_type == 'лошадь':
            weight = float(input("Введите вес: "))
            height = float(input("Введите высоту: "))
            animal = Horse(name, birth_date, weight, height)
        elif animal_type == 'осел':
            strength = float(input("Введите силу: "))
            animal = Donkey(name, birth_date, strength)
        else:
            print("Неверный тип животного.")
            return

        self.registry.add_animal(animal)
        print(f"{animal_type.capitalize()} {name} добавлен(а) в реестр.")

    def list_animal_commands(self):
        print("\n--- Список команд животного ---")
        name = input("Введите имя животного: ")
        commands = self.registry.list_commands(name)
        if commands:
            print(f"Команды для {name}: {', '.join(commands)}")
        else:
            print(f"Животное с именем {name} не найдено или у него нет команд.")

    def train_new_command(self):
        print("\n--- Обучение новым командам ---")
        name = input("Введите имя животного: ")
        command = input("Введите новую команду: ")
        if self.registry.train_command(name, command):
            print(f"Животное {name} обучено команде '{command}'.")
        else:
            print(f"Животное с именем {name} не найдено.")

    def list_animals_by_birth_date(self):
        print("\n--- Список животных по дате рождения ---")
        animals = self.registry.list_animals_by_birth_date()
        for animal in animals:
            print(f"{animal.name} - {animal.birth_date.strftime('%Y-%m-%d')}")