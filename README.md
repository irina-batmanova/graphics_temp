# Репозиторий для приема заданий по компьютерной графике // ФИВТ МФТИ 2019 // Семинарист Федоров А.А.
## План занятий и сдач
№ | Дата | Тема
-:|-------|------------------|
1 | 09 февраля | [CU-1: GPGPU. CUDA](https://paper.dropbox.com/doc/CU-1-GPGPU.-CUDA.-H7TyJqeb6Il8yoecGgoU8)
2 | 16 февраля | [CU-2: Shared memory](https://paper.dropbox.com/doc/CU-2-Shared-memory--AXq_E0i9nuOskM~Zy75F_EhnAQ-jiRmAOjZEaGceJZTCNhmA)
- | 23 февраля | Неучебный день
3 | 02 марта | Прием [задания №1](https://bitbucket.org/AndrewFedorov/gl_tasks2019/wiki/task-cu-rasterizer). Если не заводится CUDA, обращайтесь к семинаристу в Telegram заранее.
4 | 9 марта | [GL-1: OpenGL pipeline](https://paper.dropbox.com/doc/GL-1-OpenGL-pipeline--AY~dw~jC7uPNqaTGHMQ9CmnRAQ-CghD82qOYXibqadyVH30I), [GL-2: Interpolation, shaders, attributes, uniforms](https://paper.dropbox.com/doc/GL-2-Interpolation-shaders-attributes-uniforms--AY~sdq4HipHbO5r1wzdZV_eTAQ-9a2mGgGkJQ5zEGqXWZNJv)
5 | 16 марта | [GL-3: Lighting](https://paper.dropbox.com/doc/GL-3-Lighting--AZ8e5BLKQtBXhM39WBJH0Lw8AQ-XerK7F5qZlpCRLCtUX7Wn)
6 | 23 марта | [GL-4: Texturing](https://paper.dropbox.com/doc/GL-4-Texturing--AZ~lntbp3XIE6QCnbx4GOGo4AQ-NGFRF7LdS1sCvFE2MVtBo)
7 | 30 марта | [GL-5: Depth buffer, viewport, stencil, blending](https://paper.dropbox.com/doc/GL-5-Depth-buffer-viewport-stencil-blending.--AaW76aTbvZolgAIil5Hj0AZ_AQ-7Iin75GF1bCeysVlZSmkD)
8 | 6 апреля | [GL-6: Framebuffer, MRT, shadow maps](https://paper.dropbox.com/doc/GL-6-Framebuffer-MRT-shadows--Aa6kn0DaT3icuZ81UDliDbM~AQ-DIrqdOl7B1oBlWxvGvgM4)
9 | 13 апреля | Прием [задания №2](https://bitbucket.org/AndrewFedorov/gl_tasks2019/wiki/Home)
10 | 20 апреля | [GL-7: Forward/deferred rendering, animations, storage](https://paper.dropbox.com/doc/GL-7-Forwarddeferred-rendering-skeletal-animations-immutable-storage.--AcWJZIXCgM6QKNQuLmtHZSrKAQ-pJ6RywtDn7kSMtAXt5fLL)
11 | 27 апреля | [GL-8: PostFX, Query Object](https://paper.dropbox.com/doc/GL-8-PostFX-Query-Object--AcWLLMH2MkNZdlP9d2el7lnoAQ-uT5Zt6DnzoTsLkLcPbTGo) [GL-9: Conditional Render, Instancing, Geometry Shader](https://paper.dropbox.com/doc/GL-9-Conditional-rendering-Instancing-Geometry-shader--AcXSfC5UywXrtwYuMmuNZroFAQ-x83471cChpUGOBBBkoHGS)
12 | 4 мая | у солдата выходной
13 | 11 мая | GL-9
14 | 18 мая | GL-10
15 | 25 мая | Прием задания №3

## Краткое руководство по встраиванию

* Создайте форк этого репозитория.
* Для каждого задания выделена отдельная папка (*task1*, *task2*).
* В папке с заданием создайте свою папку `<номер группы><фамилия на латинице>` (например, *123Ivanov*), работайте только в этой папке.
* Создайте вложенную подпапку `<номер группы><фамилия на латинице>Data<номер задания>` (например, *123IvanovData1*). Используйте эту папку для размещения загружаемых в программе файлов (3D модели, изображения и т.д.).
* В папке `<номер группы><фамилия на латинице>` создайте файл CMakeLists.txt следующего содержимого

```
set(SRC_FILES
    Main.h
    Main.cpp
)

MAKE_OPENGL_TASK(123Ivanov 1 "${SRC_FILES}")
# или MAKE_CUDA_TASK(123 Ivanov 1 "${SRC_FILES}")
```
    
Здесь в переменной **SRC_FILES** укажите имена ваших файлов с исходным кодом.
    
В аргументах макроса **MAKE_OPENGL_TASK** укажите имя папки и номер задания (1, 2 или 3).

### CUDA
Если вы хотите сборку с CUDA, используйте макрос **MAKE_CUDA_TASK** вместо **MAKE_OPENGL_TASK**.

Если версия CUDA, которую находит CMake по умолчанию вас не устраивает, вы можете задать путь в аргументах команды CMAKE:

`-DCUDA_TOOLKIT_ROOT_DIR=/usr/local/cuda-8.0>`

### Образец
В репозитории приведены примеры: задание 1 по CUDA и задание 2 по OpenGL (скопированы из примеров к курсу).

### Зависимости
Не рекомендуется инклюдить файлы из примеров оформления задания: они общие, вдруг вам понадобится что-то поменять.
Скопируйте всё, что вам нужно.