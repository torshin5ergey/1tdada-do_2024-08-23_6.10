# Промежуточная аттестация. Модуль 2

Торшин Сергей

## Запуск
1. Загрузить репозиторий
    ```bash
    git clone https://github.com/torshin5ergey/1tdada-do_2024-08-23_6.10.git
    ```
2. Перейти в директорию репозитория
    ```bash
    cd 1tdada-do_2024-08-23_6.10
    ```
3. Запустить мультиконтейнерное приложение
    ```bash
    docker compose up --build
    ```

- Результат выполнения python-скрипта на рисунке ниже
    ![](screenshot.jpg)
- Создаваемая таблица test_table есть в файле `test_data.csv`
- В `docker-compose.yml` для `db.healthcheck.start_period` установлен на `120s`, чтобы дать БД достаточно времени для инициализации (в моём случае при меньшем времени может завершаться с `dependency failed to start: container db-1 is unhealthy`). Значение можно уменьшить.
