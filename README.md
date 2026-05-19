# Useful commands:

```bash
latexmk -C; pdflatex -interaction=nonstopmode main.tex; pdflatex -interaction=nonstopmode main.tex; pdflatex -interaction=nonstopmode main.tex; biber main; pdflatex -interaction=nonstopmode main.tex; pdflatex -interaction=nonstopmode main.tex; cp main.pdf /tmp/main.pdf; xdg-open /tmp/main.pdf; latexmk -C;
```

# TODO

train for compass (on subdiv, on regu, on regu for curve and straights)

## 0. My

### 0.1 Complete all TODOs in diploma, all META should be set to DONE

### 0.8 Analyze all citations, maybe replace some with better ones, remove unused, make sure the links are valid and they link to a related content, on trusted website. Maybe add additional citations all over the text. Maybe add "quotes" too

### 0.11 Make it more human-like, not ai-like. Make it more formal. Decrease amount of latex-style sugar (textit, textbf, texttt). Clear from residues of deepseek-like naswers (chinese, prompts, "thank you for your question" etc.). Change quotation marks to regular ones «», check there are no – and —

### 0.12 Format tables properly, so no Overfull errors appear, all tables and images should be with refereneces, images should exist only those that are used. Also regularize naming (рис / рисунок / ...)

### 0.16 Once again re-run it through the deepseek for any advice and errors and typos detection

### 0.20 Adhere to GOST (in particular, format appendices 6.17)

### 0.23 Add both good and bad pictures to showcase how we change (old pictures vs new ones) and what we have to solve

### 0.27 Add images (maybe in analysis) for examples of chamfer / fillet / cut / boss

### 0.28 Add appendix 4 images of simplification

### 0.29 Note the tool I used to make png from stl in some form



# Helpful locations

## Models

1) Sample models

/home/giswarm/tmp/dip_convert_to_png/1_3_01.03 _ Стопорный элемент
/home/giswarm/tmp/dip_convert_to_png/1_3_201459 - Болт корпуса газогенератора
/home/giswarm/tmp/dip_convert_to_png/1_3_208.1502.03.103 - Ниппель Ду15
/home/giswarm/tmp/dip_convert_to_png/1_3_245202.00.002_Лабиринтное уплотнение
4_0_rez_570(1)_6 (148)

2) Separate operation examples

cut: /home/giswarm/tmp/dip_convert_to_png/1_3_020009049 Автошина 31570R22.5 КАМА
chamfer: /home/giswarm/tmp/dip_convert_to_png/1_3_4ЭФО.033.021 - Шпилька
boss: /home/giswarm/tmp/dip_convert_to_png/4_0_rez_570(1)_2__ (10)
fillet: 1_3_А8282.205.03 _ Седло

3) Problem showcase

/home/giswarm/tmp/dip_convert_to_png/1_3_245202.40.011_Вал
example why we need more operations

/home/giswarm/tmp/dip_convert_to_png/1_3_42-110280 - Футорка газогенератора
not circular cut

/home/giswarm/tmp/dip_convert_to_png/1_3_962.10.01.00.000 штуцер  G2
fillet detects chamfer

4) Post showcase

remove: /home/giswarm/tmp/dip_convert_to_png/1_3_01.03 _ Стопорный элемент
cluster: /home/giswarm/tmp/dip_convert_to_png/1_3_01.04 _ Стопорное кольцо

5) Unsorted

1_3_А8282.205.03 _ Седло - good fillet
1_3_А8282.201.02 _ Шляпка - some simple circle cut, but kinda bad
1_3_А8282.46.14 _ Крепление РВД - great complex cuts
1_3_А8282.42.11 _ Втулка малая - great chamfer
4_0_rez_570(1)_7 (123) - attempt at boss

## Images locations
```
analysis/neural_3d:
 meshcnn_arch.png
impl/architecture_evolution:
 naive_pointcloud_architecture.png
 naive_modular_architecture.png
impl/inference_postprocess:
 inference_pipeline.png
impl/experiments:
 plot_cls_b_acc.png
 plot_cls_b_loss.png
 plot_seg_d_acc_1.png
 plot_seg_d_loss.png
impl/measurements:
 test_model.png
appendices/3:
 scheme_general.png
scheme_mode_auto.png
 scheme_mode_manual.png
appendices/4:
    part_01_original.png
    part_01_fillet_detected.png
    part_01_fillet_remaining.png
    part_01_cutextrusion_detected.png
    part_01_cutextrusion_remaining.png
    part_01_chamfer_detected.png
    part_01_chamfer_remaining.png
    part_01_bossextrusion_detected.png
    part_01_bossextrusion_remaining.png
appendices/5:
 plot_cls_a_acc.png
 plot_cls_a_acc_negative.png
 plot_cls_a_acc_positive.png
 plot_cls_a_loss.png
 plot_cls_b_acc.png
 plot_cls_b_acc_negative.png
 plot_cls_b_acc_positive.png
 plot_cls_b_loss.png
 plot_seg_c_acc_1.png
 plot_seg_c_acc_more_50.png
 plot_seg_c_acc_more_90.png
 plot_seg_c_iou_1.png
 plot_seg_c_loss.png
 plot_seg_d_acc_1.png
 plot_seg_d_acc_more_50.png
 plot_seg_d_acc_more_90.png
 plot_seg_d_iou_1.png
 plot_seg_d_loss.png
 plot_seg_e_acc_1.png
 plot_seg_e_acc_more_50.png
 plot_seg_e_acc_more_90.png
 plot_seg_e_iou_1.png
 plot_seg_e_loss.png
 plot_cls_a_acc_positive.png
 plot_cls_a_acc_negative.png
 plot_cls_b_acc_positive.png
 plot_cls_b_acc_negative.png
```

## Tables location

```
analysis/formats_3d:
 \caption{Сравнение форматов хранения 3D моделей}
 \label{tab:cmp-3d-format}
analysis/neural_3d:
 \caption{Сравнительный анализ архитектур для задачи сегментации CAD-операций}
 \label{tab:cmp-3d-neural}
impl/target_character:
 \caption{Распределение операций в исходном датасете}
 \label{tab:ops-stats-raw}
 \caption{Распределение операций в рабочем датасете}
 \label{tab:ops-stats-filter}
impl/architecture_evolution:
 \caption{Сравнение подходов к реализации}
 \label{tab:approach-comparison}
impl/data_pipeline:
 \caption{Статистика подготовки данных}
 \label{tab:data-stats}
impl/experiments:
 \caption{Сравнение конфигураций классификатора (accuracy на тесте: общая, для положительного класса, для отрицательного класса)}
 \label{tab:cls-comparison}
 \caption{Сравнение конфигураций сегментатора (метрики на тестовой выборке)}
 \label{tab:seg-comparison}
impl/measurements:
 \caption{Замер времени обучения нейронных сетей}
 \label{tab:time-train}
 \caption{Замер времени инференса (Linux, python)}
 \label{tab:time-inference-linux}
 \caption{Замер времени инференса (Windows, exe)}
 \label{tab:time-inference-windows}
```

part_op_example_bossextrusion_original
part_op_example_bossextrusion_detected
part_op_example_chamfer_original
part_op_example_chamfer_detected
part_op_example_cutextrusion_original
part_op_example_cutextrusion_detected
part_op_example_fillet_original
part_op_example_fillet_detected
part_post_example_cluster_detected
part_post_example_remove_detected
part_post_example_original
part_error_example_squarecut_detected
part_error_example_squarecut_original
part_error_example_needrotate
part_error_example_cutfindsfillet_detected
part_error_example_cutfindsfillet_original




TODO


Приложил:
- pdf файл моего магистерского диплома
- лог компиляции этого pdf из latex
- pdf ГОСТ для данной работы

Посмотри, пожалуйста
1) есть ли какие-то проблемы с оглавлением и структурой работы?
2) есть ли какие-то фактические / семантические / логические ошибки?
3) что бы ты изменил, добавил или удалил в работе?
4) соответствует ли в целом работа магистерскому диплому, по формату и содержанию? Дай оценку итоговую
5) соответствует ли работа ГОСТ?
6) есть ли проблемы при компиляции pdf из latex?

Отвечай очень развёрнуто и подробно, не бойся показывать 30-40 пунктов проблемных для каждого вопроса, если ты вдруг увидишь столько. Но вначале подумай хорошо, и отвечай только когда подумаешь подробно!


## Общий анализ

Ваша дипломная работа (main.pdf) представляет собой серьёзное исследование на стыке машинного обучения и САПР. Тема актуальна, гибридный подход (нейросетевая сегментация + детерминированное CAD-вычисление) обоснован, объём проделанной работы (очистка датасета из 82 418 моделей, обучение классификаторов и сегментаторов на 21 464 моделях, создание исполняемого модуля main.exe) впечатляет. Однако в представленном виде работа содержит **множество недочётов**, которые делают её **непригодной для итоговой сдачи** без доработки. Ниже приведён детальный разбор по вашим вопросам.

---

### 2.2. Неоднозначность по операции cutExtrusion
В таблице 5 (стр. 51) указано «cutExtrusion (curve)» – подразумеваются вырезания по криволинейным контурам. Однако в постановке задачи (стр. 21) и в классификации (табл. 4) такого уточнения нет. Создаётся впечатление, что сегментатор обучен только на криволинейных вырезаниях, а классификатор – на всех. Нужно либо убрать «(curve)», либо явно объяснить, что для прямолинейных контуров результаты хуже и почему.

### 2.5. Отсутствие описания baseline
В табл. 4 baseline указан как «50% (сбалансированная выборка)». Но в реальности распределение классов в датасете не сбалансировано (см. табл. 5, «исходное распределение классов»). Например, для fillet 40% / 60% – тривиальный классификатор, предсказывающий всегда «фон», дал бы accuracy 60%. А ваша модель даёт 90,6% – это хороший прирост. Но baseline в таблице приведён как 50%, что некорректно. Лучше указать **majority class accuracy** (доля самого частого класса) или **balanced accuracy**.

### 2.6. Нет чёткого разделения на обучение/валидацию/тест
Не указано, какая доля данных использовалась для обучения, валидации и теста (в одном месте сказано «10% от датасета» – видимо, тест). Но нет информации о random seed, стратификации по типам операций и т.д.

### 2.7. В таблицах результатов сегментации нет метрики IoU (Intersection over Union)
Edge accuracy (доля верно классифицированных рёбер) – хорошая метрика, но при сильном дисбалансе классов она может быть обманчива. Для задачи сегментации стоит добавить IoU для класса «операция».

### 2.8. Нет количественного сравнения с другими подходами
В работе упоминаются традиционные алгоритмические методы и подход Autodesk Research, но нет таблицы сравнения (хотя бы на ограниченном наборе). Например, можно было бы запустить детерминированный алгоритм поиска скруглений (по цилиндрическим поверхностям) и сравнить accuracy. Это повысило бы научную ценность.

### 2.10. Сомнительное утверждение про «точность сегментации 96,8% для cutExtrusion»
Такая высокая точность может быть следствием того, что операция cutExtrusion на криволинейных контурах очень контрастна (например, круглые отверстия). Нужно проверить, не было ли переобучения на конкретном типе геометрии. Хорошо бы показать примеры ошибок именно для cutExtrusion.

### 2.11. Отсутствие анализа вычислительной сложности
Сколько времени занимает инференс для одной модели (триангуляция + нормализация + нейросеть + постобработка)? Это важно для практического применения.

### 2.12. Неполное описание метрик в разделе 2.2.3
«Model accuracy @90 – доля моделей, в которых не менее 90% рёбер классифицированы верно» – это понятно, но почему выбран порог 90%? Можно было бы привести распределение.

### 2.13. Битые символы в тексте
На стр. 10, 13, 14, 15 и др. вместо русских букв – кракозябры. Например, на стр. 10: «Òðà äè öè îí íûå àë ãî ðèò ìè ÷åñ êèå ìå òî äû» – это слово «Традиционные алгоритмические методы». Такой текст нельзя оставлять.

### 2.15. В разделе 1.6.2 упоминаются «DeepCAD (2021)» и «CAD-SIGNet (2023)», но в списке литературы нет соответствующих источников
В списке литературы (стр. 67–70) нет работ [stanfordrlcad] и [11] (CAD-SIGNet) – они пропущены. Есть только [11] Khan et al., но это не отформатировано как публикация.

### 2.17. Отсутствие чёткого описания, как именно CAD-ядро вычисляет параметры по STL
В разделе 2.6.4 сказано: «Детерминированно вычисляет параметры операции (например, для выдавливания — направление и глубину, для скругления — радиус)». Но как? По STL-сетке, которая является аппроксимацией? Это может быть неточно. Нужно пояснить, что CAD-ядро использует исходный STEP (который был загружен пользователем) для точных вычислений, а STL нужен только для локализации. В тексте это не раскрыто.

---

## 3. Что бы я изменил, добавил или удалил

### 3.1. Обязательные исправления (без них работа не может быть допущена к защите)
1. **Вставить все рисунки** (графики обучения, схемы архитектуры, примеры сегментации, блок-схемы). Без них работа теряет >50% содержания.
2. **Устранить битую кодировку** – пересохранить файл в UTF-8 и вручную поправить кракозябры.
3. **Заполнить все TODO** в аннотации и по тексту (страницы, рисунки, таблицы, библиография).
4. **Исправить оглавление** (вынести приложения, убрать пункты 2.9–2.17).
5. **Вставить реальные изображения деталей** в приложение Б (сейчас только подписи).
6. **Проверить и исправить логику фильтрации датасета** – добавить шаг «первичная обработка» до 44 181 модели.

### 3.2. Рекомендуемые улучшения для повышения качества
7. **Добавить метрику IoU** для сегментации (по классу операции).
8. **Добавить сравнение с детерминированным baseline** (например, поиск цилиндрических граней для fillet).
9. **Указать размер выборок** для каждого эксперимента (сколько моделей в train/val/test для каждой операции).
10. **Добавить анализ ошибок** с примерами (рисунки ложноположительных/ложноотрицательных сегментов).
11. **В раздел 2.8.1 добавить подраздел о проблемах с вычислительными ресурсами** (обучение на RTX 4090 занимало X часов, инференс – Y секунд).
12. **Переписать аннотацию** в безличной форме (сейчас «В работе проведён анализ…» – можно, но лучше «Проведён анализ…» без «В работе»).
13. **Добавить благодарности** (научному руководителю, рецензенту, организации) – обычно это делают в конце введения или отдельно.
14. **Удалить повторяющиеся абзацы** (например, описание параметрического моделирования на стр. 20 и 18 частично дублируется).
15. **Заменить нечитаемые символы в формулах** (на стр. 46 формула кросс-энтропии выглядит нормально, но на стр. 10 есть `Â - Ðåð` – это мусор).
16. **Уточнить, что такое «o3d_UnHistoried»** – если это операция, то она не поддерживается, и такие модели исключаются. Написать об этом.

### 3.3. Дополнительные изменения для соответствия магистерскому уровню
17. **Добавить раздел «Перспективы дальнейших исследований»** (уже есть 2.8.2, но можно расширить).
18. **Привести в приложении С реальные замеры времени** для инференса на разных конфигурациях.
19. **Оформить список литературы по ГОСТ Р 7.0.100-2018** (сейчас смесь стилей).
20. **Добавить акты внедрения** (в работе сказано, что модуль внедрён в опытную эксплуатацию – хорошо бы приложить сканы актов).
21. **Указать версии использованного ПО** (PyTorch, MeshCNN, КОМПАС-3D) в разделе 2.2.2.
22. **В раздел 2.7.4 добавить количественную оценку типовых ошибок** (сколько процентов моделей содержат ошибку «отверстие как скругление» и т.д.).

---

## 4. Соответствие магистерскому диплому и итоговая оценка

### Положительные стороны (уровень магистра)
- **Актуальная и сложная тема** – восстановление истории построения.
- **Глубокий обзор** нейросетевых архитектур (PointNet, DGCNN, MeshCNN) и форматов данных.
- **Гибридный подход** с разделением ответственности – это научная новизна.
- **Большой объём экспериментальных данных** (82 418 исходных, 21 464 после очистки).
- **Реализация рабочего прототипа** (main.exe) с интеграцией в КОМПАС-3D.
- **Наличие количественных результатов** (accuracy, edge accuracy) – доказательство состоятельности.
- **Соответствие структуре** (введение, обзор, реализация, эксперименты, заключение, приложения).

### Негативные стороны (снижающие оценку)
- **Техническая незавершённость:** отсутствие рисунков, битые символы, TODO, неправильное оглавление – это **недопустимо для итоговой версии**. Такой текст воспринимается как черновик.
- **Логическая ошибка в описании фильтрации датасета** (несоответствие чисел).
- **Нет сравнения с альтернативными подходами** (даже простым детерминированным).
- **Нет анализа вычислительной сложности и времени работы.**
- **Отсутствие некоторых источников в списке литературы** (DeepCAD, CAD-SIGNet).
- **Приложения не содержат реальных изображений** (только подписи).

### Итоговая оценка (по 10-балльной шкале)
- Содержательная часть (научная новизна, объём, методология): **8/10** (хорошо, но без сравнения с аналогами и без IoU).
- Техническое оформление (структура, графика, читаемость): **3/10** (очень плохо из-за отсутствия рисунков, битой кодировки, TODO).
- Соответствие требованиям к магистерской диссертации: **5/10** – в текущем виде работу **нельзя допускать к защите** без исправления перечисленных критических недостатков. После исправления (вставка рисунков, чистка кодировки, корректировка оглавления и логических ошибок) оценка может подняться до **8/10**.

### Заключительная рекомендация
Вам необходимо **срочно доработать текст**:
1. Восстановить все рисунки из исходных материалов (графики обучения из TensorBoard, скриншоты сегментации, блок-схемы из .docx отчёта).
2. Вычистить битые символы (лучше пересобрать PDF из исходного .docx или .tex с правильной кодировкой).
3. Исправить оглавление и нумерацию приложений.
4. Согласовать цифры фильтрации датасета.
5. Заполнить все TODO.
6. Добавить сравнение с простым детерминированным методом (хотя бы на 100 моделях).
7. Вставить реальные картинки деталей в приложение Б.

После этих доработок работа будет соответствовать уровню магистерской диссертации и сможет претендовать на высокую оценку. Удачи!




# Useful commands

```bash
### 1. Полная очистка
latexmk -C

### 2. Первый проход (создаёт .aux и .toc с временными номерами)
pdflatex -interaction=nonstopmode main.tex

### 3. Второй проход (читает .toc, но номера могут быть ещё неверными)
pdflatex -interaction=nonstopmode main.tex

### 4. Третий проход (окончательно фиксирует номера страниц в оглавлении)
pdflatex -interaction=nonstopmode main.tex

### 5. Если есть библиография (biber)
biber main

### 6. Ещё два прохода pdflatex для подхвата ссылок и окончательной корректировки номеров
pdflatex -interaction=nonstopmode main.tex
pdflatex -interaction=nonstopmode main.tex

### 7. Скопировать и отобразить
cp main.pdf /tmp/main.pdf
xdg-open /tmp/main.pdf

### 8. Полная очистка
latexmk -C
```


latexmk -C ; latexmk main.tex ; biber main ; latexmk main.tex; cp ./main.pdf /tmp/ ; xdg-open /tmp/main.pdf ; latexmk -C;

latexmk -pvc

