# README

В этом проекте я тестирую:
* тестирую стимулус
* n+1 запросов, разбираем
* https://habr.com/ru/articles/83378/
* https://qaa-engineer.ru/generacziya-testovyh-dannyh-v-ruby-osnovy/
* https://prowebmastering.ru/yii2-ispolzovanie-faker-dlya-generacii-testovyh-dannyh.html
TRUNCATE TABLE orgs;
TRUNCATE TABLE reitings;
TRUNCATE TABLE tovars;
* сейчас есть связь, попробуй без связи но с прелоудом
* попробуй тут запустить тест 


***
*задачи:
поработать с моделями, а иенно:
1) добавь этот пример в гит
2) class_name: 'Organization'
3) foreign_key: 'organization_id'
4) dependent: :destroy
5) through: :requests
6) source: :request_files
7) validate: false
8) delegate :complectation_type_label, to: :manufacturer_model, prefix: :manufacturer_model, allow_nil: true
9) добавь модули которые подгружаясь будут менять правило формирования связи между таблицами
10) 




