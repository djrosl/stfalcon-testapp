angular.module 'stfalcon'
  .controller 'MainController', ->
    'ngInject'
    vm = this

    vm.boards = []
    vm.createBoard = (name)->
      vm.boards.push
        id: vm.boards.length+1
        name: name
      vm.newBoardNameModel = ''
      vm.newBoardName = 0
    return
