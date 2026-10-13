# 📊 Análisis de Consultas SQL


## 📈 Resumen
✅ 24 correctas de 26 queries

## ✅ Query 1: Correcto

⏱ Tiempo: 0.44 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 2: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 3: Correcto

⏱ Tiempo: 0.35 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 4: Correcto

⏱ Tiempo: 0.36 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 5: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: id_grado

---

## ✅ Query 6: Correcto

⏱ Tiempo: 0.41 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_departamento, PRIMARY

---

## ✅ Query 7: Correcto

⏱ Tiempo: 0.54 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_asignatura,id_curso_escolar, PRIMARY,nif, PRIMARY

---

## ✅ Query 8: Correcto

⏱ Tiempo: 0.43 ms
✅ Se usó índice(s) en la consulta: PRIMARY,id_departamento, PRIMARY, id_profesor,id_grado

---

## ✅ Query 9: Correcto

⏱ Tiempo: 0.41 ms
✅ Se usó índice(s) en la consulta: PRIMARY, PRIMARY,id_curso_escolar

---

## ✅ Query 10: Correcto

⏱ Tiempo: 0.42 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 11: Correcto

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: PRIMARY

---

## ✅ Query 12: Correcto

⏱ Tiempo: 0.35 ms
✅ Se usó índice(s) en la consulta: id_departamento

---

## ✅ Query 13: Correcto

⏱ Tiempo: 0.41 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_profesor

---

## ✅ Query 14: Correcto

⏱ Tiempo: 0.33 ms
✅ Se usó índice(s) en la consulta: id_profesor

---

## ✅ Query 15: Correcto

⏱ Tiempo: 0.28 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 16: Correcto

⏱ Tiempo: 0.32 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 17: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

---

## ✅ Query 18: Correcto

⏱ Tiempo: 0.39 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_departamento

---

## ✅ Query 19: Correcto

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: id_departamento

---

## ✅ Query 20: Correcto

⏱ Tiempo: 0.38 ms
✅ Se usó índice(s) en la consulta: id_grado

---

## ✅ Query 21: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: id_grado

---

## ✅ Query 22: Correcto

⏱ Tiempo: 0.37 ms
✅ Se usó índice(s) en la consulta: PRIMARY, id_grado

---

## ✅ Query 23: Correcto

⏱ Tiempo: 0.40 ms
✅ Se usó índice(s) en la consulta: id_curso_escolar, PRIMARY

---

## ❌ Query 24: Error
- **Descripción**: 1055 (42000): Expression #1 of ORDER BY clause is not in GROUP BY clause and contains nonaggregated column 'universidad.asignatura.id' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by


## ✅ Query 25: Correcto

⏱ Tiempo: 0.34 ms
🔍 No se usó ningún índice en esta consulta.

🚨 **Problemas detectados:**
⚠️ Evitar `SELECT *`. Usar solo las columnas necesarias.

---

## ❌ Query 26: Error
- **Descripción**: 'NoneType' object is not iterable

