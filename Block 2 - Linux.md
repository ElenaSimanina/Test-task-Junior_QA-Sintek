***Блок 2 - Linux***

   **Вопрос 1. Описать, что выведет данная команда в консоль Linux: grep -C 100 "2021-02-12" application.log**
  
   **Ответ:**

  *grep -C 100 "2021-02-12" application.log*
  Данная команда найдет фрагмент текста  "2021-02-12" в файле application.log и выведет 100 строк до строки, содержащей
  нужный фрагмент и 100 строк после. 
 
  **Вопрос 2. Описать различие команды tail и команды grep**

  **Ответ:**

  Команда grep призводит поиск фрагмента текста (шаблона) в одном или нескольких файлах, или в конвейере в целом. 
  Если нужно найти не одно слово, а словосочетание или целое предложение, то параметр команды grep должно быть выделено кавычками.
  Команда  tail выводит на экран последние 10 строк файлов по умолчанию, или же при помощи задания параметров можно изменить размер выводимой части (например, tail -n 100 application.log -  выведет последние 100 строк)
  Также с помощью  этой команды и опции -f можно отслеживать новую информацию, обновляемую в реальном времени в конкретном файле. 
  Таким образом, различие этих команд в их функционале.Команда grep предназначена для поиска строк, соответствующих шаблону,  а команда tail
  выводит последние строки из файла, а также используется для отслеживания обновлений или мониторинга логов.  

  ***Вопро 3. Возможно ли использовать команды из 2 вопроса вместе, если да, то как?***

  **Ответ:**
  
  Команды tail и grep можно использовать одновременно. Например, нам нужно найти конкрентный  фрагмент текста или шаблон
  при мониторинге определенного файла: 
  *tail -f application.log | grep "2021-02-12"*
  - здесь команда tail  будет выводить изменения файла "application.log" в реальном временени, а команда grep
  искать строки, соответсующие шаблону "2021-02-12". Таким образом, в результате  будут выведены только  строки,
  соответствующие поисковому запросу. 