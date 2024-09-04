# Vault_Secrets_Loader

Данные скрипты загружают серкеты из папки инсталляции в Vault.


put_certs.sh - рекурсивно получает полные имена файлов из каталога ../certificates и применяет к ним vault kv put
put_octavia_certs.sh - аналогично предыдущей функции, но поиск файлов идет из каталога ../octavia-certificates


## Примеры корректной работы

```sh
kolla-writepwd -p passwords.yml -v $VAULT_ADDR -kv openstack -kvp path/passwords.yml -t $VAULT_TOKEN

# Пустой вывод. Выполняется примерно секунд 20-30

---------------------------------------------------------------------------------------------------------------------

kolla-writepwd -p passwords_custom.yml -v $VAULT_ADDR -kv openstack -kvp path/passwords_custom.yml -t $VAULT_TOKEN

# Пустой вывод. Выполняется примерно секунд 5-10

---------------------------------------------------------------------------------------------------------------------

vault kv put openstack/path/admin-openrc.sh contents=@admin-openrc.sh

Key                Value
---                -----
created_time       2024-08-05T13:42:09.311297952Z
custom_metadata    <nil>
deletion_time      n/a
destroyed          false
version            1

---------------------------------------------------------------------------------------------------------------------

./put_certs.sh

Key                Value
---                -----
created_time       2024-08-05T13:57:37.14004873Z
custom_metadata    <nil>
deletion_time      n/a
destroyed          false
version            1



---------------------------------------------------------------------------------------------------------------------

./put_octavia_certs.sh

Key                Value
---                -----
created_time       2024-08-05T13:58:37.228941702Z
custom_metadata    <nil>
deletion_time      n/a
destroyed          false
version            1
Key                Value



```
