> [!NOTE]
> For English [click here](#User-interface-of-iOS-applications), or scroll down.

# Пользовательский интерфейс iOS-приложений

## Урок 1. Проектирование интерфейса, часть 1. Разбор основных сетевых возможностей и их применение на практике

Вы будете создавать клиент для социальной сети ВКонтакте. На этом курсе вам не понадобится аккаунт, так как мы будем заниматься только пользовательским интерфейсом. Все данные будут демонстрационными: вы выведете выдуманные тексты, записанные прямо в коде. Работать с реальными данными мы начнём со следующего курса.

1. Создать приложение.
2. Добавить форму для входа.
3. Адаптировать форму для телефонов в альбомной ориентации, планшетов.

## Урок 2. Проектирование интерфейса, часть 2. Добавление экранов. Переходы между экранами. UINavigationController. Segue

На основе предыдущего задания из предыдущего урока:
1. Добавить в приложение UITabbarViewController, три UITableViewController и один UICollectionViewController.
2. После того, как пользователь ввел верные логин и пароль, перейти на UITabbarViewController.
3. Добавить две вкладки в UITabbarViewController.
4. На первой вкладке настроить переходы в следующем порядке: UINavigationController- UITableViewController - UICollectionViewController. Будущая вкладка для отображения друзей пользователя ВКонтакте и его фотографий. Переход с таблицы на коллекцию должен происходить по нажатию на ячейку.
5. На второй вкладке - в порядке: UINavigationController - UITableViewController - UITableViewController. Первый контроллер для отображения групп пользователя, второй для отображения глобального поиска групп, которые могут быть интересны пользователя. Для перехода с первой таблицы на вторую на NavigationBar необходимо создать Bar Button Item. **В этих цепочках UINavigationController не является отдельным экраном, он нужен для управления переходами.**

# User interface of iOS applications

## Lesson 1. Interface design, part 1. Analysis of the main network capabilities and their practical application

You will be creating a client for the VKontakte social network. You will not need an account in this course, as we will only deal with the user interface. All the data will be demo: you will output fictional texts written directly in the code. We will start working with real data from the next course.

1. Create an application.
2. Add a login form.
3. Adapt the login form for phones in landscape orientation and tablets.

## Lesson 2. Interface Design, part 2. Adding screens. Transitions between screens. UINavigationController. Segue

Based on the previous assignment from the previous lesson:
1. Add a UITabBarViewController, three UITableViewControllers and one UICollectionViewController to the application.
2. After the user has entered the correct username and password, go to the UITabBarViewController.
3. Add two tabs to the UITabBarViewController.
4. On the first tab, configure the transitions in the following order: UINavigationController- UITableViewController - UICollectionViewController. A future tab for displaying the user's VKontakte friends and photos. The transition from the table to the collection should take place by clicking on the cell.
5. On the second tab, in this order: UINavigationController - UITableViewController - UITableViewController. The first controller is for displaying user groups, the second is for displaying a global search for groups that may be of interest to the user. To switch from the first table to the second one on the NavigationBar, you need to create a Bar Button Item. **In these chains, the UINavigationController is not a separate screen, it is needed to control transitions.**
