Домашнее задание к занятию "15. Средства командной работы над инфраструктурой."

Задача 2. Написать серверный конфиг для атлантиса.
Смысл задания – познакомиться с документацией о серверной конфигурации и конфигурации уровня репозитория.

Создай server.yaml который скажет атлантису:

Укажите, что атлантис должен работать только для репозиториев в вашем github (или любом другом) аккаунте.
На стороне клиентского конфига разрешите изменять workflow, то есть для каждого репозитория можно будет указать свои дополнительные команды.
В workflow используемом по-умолчанию сделайте так, что бы во время планирования не происходил lock состояния.
Создай atlantis.yaml который, если поместить в корень terraform проекта, скажет атлантису:

Надо запускать планирование и аплай для двух воркспейсов stage и prod.
Необходимо включить автопланирование при изменении любых файлов *.tf.
В качестве результата приложите ссылку на файлы server.yaml и atlantis.yaml.

Ссылки на файлы

[server.yaml](./src/server.yaml)

[atlantis.yaml](./src/atlantis.yaml)

Задача 3. Знакомство с каталогом модулей.
В каталоге модулей найдите официальный модуль от aws для создания ec2 инстансов.
Изучите как устроен модуль. Задумайтесь, будете ли в своем проекте использовать этот модуль или непосредственно ресурс aws_instance без помощи модуля?
В рамках предпоследнего задания был создан ec2 при помощи ресурса aws_instance. Создайте аналогичный инстанс при помощи найденного модуля.

```
