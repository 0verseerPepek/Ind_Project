              Тема розробки:"Автентифікація та відображення даних"
              
 Постановка задачі:
 
 1.Реалізація базової автентифікації
 
 2.Формування даних для перегляду
 
 Реалізація процесу.

 При надходженні на сервер HTTP запиту з використанням методу POST, дані у вигляді JSON-а приймаються та обробляються на сервері. Існують 2 можливі види надходження запитів, один для автентифікації, та один для генерування надішовших даних.
 
 Хід виконання функцій.
 
 З API надсилається запит на сервер для перевірки існуючого користувача.Сервер при обробці даних повертає один з двох варіантів, або підтвердження того, що користувач існує, або того, що його не існує і він зареєстрований.Дані повертаються у вигляді JSON. Також додатково на сервері реєструється сесія для роботи з запитами зі сторони авторизваного користувача.
 
 З API надходить запит, як і в попередньому вигляді, але з іншого роду даними. Сервер, який має в сесії авторизованого користувача, обробляє надійшовші дані та формує з них веб-форму, яка містить фотографію(робота з фото відбувається за допомогою використання gem-у Carrierwave), яку буде відображено на певній HTML сторінці.
 
 Є можливість перегляду створених сервером веб-форм та авторизації через сайт, після якого, якщо авторизований користувач є власником, створених попередньо веб-форм з даними, користувачеві надається можливість видаляти веб-форму та всі дані які з нею пов'язані.Для цього використовується gem Devise.