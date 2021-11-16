Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :tasks
  get 'tasks/new', to: 'tasks#new', as: :new_tasks

  # criar e mostrar a lista de tasks em uma nova janela
  get 'tasks/:id', to: 'tasks#show', as: :task
  post 'tasks', to: 'tasks#create'

  # fazer um update na lista de tasks
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_tasks
  patch 'tasks/:id', to: 'tasks#update'

  # deletar
  delete 'tasks/:id', to: 'tasks#destroy'
end

# Como usuário, posso listar tarefas
# Como usuário, posso ver os detalhes de uma tarefa
# Como usuário, posso adicionar uma nova tarefa
# Como usuário, posso editar uma tarefa (marcar como concluída / atualizar título e detalhes)
# Como usuário, posso remover uma tarefa
