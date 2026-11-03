# Tarea 6: Proyecto dbt Local (DuckDB) + Testing + Documentación

Este proyecto implementa el pipeline de transformaciones con dbt utilizando DuckDB local, pruebas de calidad de datos y documentación con linaje (DAG).

## 1. Configuración de Entorno Local
- Base de datos local configurada en DuckDB (`mi_base_local.duckdb`).
- Paquete `dbt-expectations` instalado mediante `packages.yml`.

## 2. Cobertura de Tests
El proyecto ejecuta exitosamente con `dbt build`:
- **Tests Genéricos:** Validaciones `unique` y `not_null`.
- **Tests de dbt-expectations:** Validaciones de rangos y presencia de datos.
- **Singular Tests:** Pruebas personalizadas dentro de `tests/`.

## 3. Grafo de Linaje (DAG)
Captura del linaje completo desde las fuentes (`sources`) hasta la capa final:

![Grafo de Linaje - DAG](assets/dag.png)