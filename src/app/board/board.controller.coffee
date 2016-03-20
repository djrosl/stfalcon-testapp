angular.module 'stfalcon'
  .controller 'BoardController', ($stateParams)->
    'ngInject'
    vm = this
    
    vm.lists = []
    vm.boardId = $stateParams.id
    vm.addCard = (title, listId)->
      return false if !title
      vm.lists[listId].cards.push
        id: vm.lists[listId].cards.length+1
        content: title
      vm.newCardTitle = ''
      vm.addCardTitle = 0
    vm.removeCard = (listIndex, cardIndex)->
      vm.lists[listIndex].cards.splice cardIndex, 1
    vm.isEditingCard =
      list: -1
      card: -1
    vm.editing = {}
    vm.editCardModal = (listIndex, cardIndex)->
      vm.editCardModalShow = 1
      vm.editingCard = angular.copy vm.lists[listIndex].cards[cardIndex]
      vm.editing.listIndex = listIndex
      vm.editing.cardIndex = cardIndex
    vm.saveCard = (content, listIndex, cardIndex)->
      vm.lists[listIndex].cards[cardIndex].content = content
      vm.editCardModalShow = 0
    vm.addList = (title)->
      vm.lists.push
        id: vm.lists.length+1
        header: title
        cards: []
      vm.enterTitleShow = 0
      vm.newListTitle = ''


    return
