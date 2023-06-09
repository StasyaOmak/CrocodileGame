//
//  CategoryStorage.swift
//  CrocodileGame
//
//  Created by Mikhail Tedeev on 20.04.2023.
//

import Foundation

final class CategoryStorage {
    static var shared = CategoryStorage()
    
    public func getWordsForGame() -> [String] {
        var container = [String]()
        all.forEach { category in
            if category.selected {
                category.names.forEach { word in
                    container.append(word)
                }
            }
        }
        let randomized = Array(Set(container))
        return randomized
    }
    
    public func changeSelection(name: String, isSelected: Bool) {
        let newCategories = all.map { category -> Category in
            if category.name == name {
                var modify = category
                modify.selected = isSelected
                return modify
            } else {
                return category
            }
        }
        all = newCategories
    }
    
    var all = [
        Category(
            name: "Профессии",
            avatar: "👨🏻‍🔬",
            selected: true,
            background: CrocodileColors.orangeButton,
            names: ["Инженер", "Механик", "Агроном", "Сантехник", "Медбрат", "Переводчик", "Хирург", "Крупье", "Пожарный", "Полицейский", "Шофер", "Психолог", "Лифтер", "Адвокат", "Прокурор", "Акушер", "Художник", "Архитектор", "Кассир", "Посол"]),
        Category(
            name: "Животные",
            avatar: "🐻",
            selected: true,
            background: CrocodileColors.purple,
            names: ["Слон", "Собака", "Пингвин", "Лиса", "Змея", "Сурикат", "Кузнечик", "Страус", "Крыса", "Ленивец", "Енот", "Лев", "Кошка", "Жираф", "Кабан", "Тюлень", "Бегемот", "Дельфин", "Лошадь", "Журавль"]),
        Category(
            name: "Транспорт",
            avatar: "🚙",
            selected: true,
            background: CrocodileColors.pink,
            names: ["Танк", "Машина", "Велосипед", "Самокат", "Коньки", "Скейтборд", "Самолет", "Беговел", "Дирижабль", "Метла", "Летающая тарелка", "Ковер-самолет", "Собачья упряжка", "Поезд", "Вертолет", "Корабль", "Лыжи", "Сани", "Карета", "Паланкин"]),
        Category(
            name: "Персонажи",
            avatar: "🤴🏻",
            selected: true,
            background: CrocodileColors.greenButton,
            names: ["Шрек", "Микки Маус", "Бэтмен", "Чебурашка", "Карлсон", "Человек паук", "Халк", "Гарри Поттер", "Незнайка", "Капитан Джек Воробей", "Дональд Дак", "Супермен", "Леший", "Дед Мороз", "Крокодил Гена", "Доктор Айболит", "Буратино", "Чиполлино", "Джеймс Бонд", "Шерлок Холмс"])
        ]
}
