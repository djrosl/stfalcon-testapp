angular.module 'stfalcon'
  .config ($stateProvider, $urlRouterProvider) ->
    'ngInject'
    $stateProvider
      .state 'home',
        url: '/'
        templateUrl: 'app/main/main.html'
        controller: 'MainController'
        controllerAs: 'main'
      .state 'board',
        url: '/board/:id'
        templateUrl: 'app/board/board.html'
        controller: 'BoardController'
        controllerAs: 'board'

    $urlRouterProvider.otherwise '/'
