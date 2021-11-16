Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'tasks', to: 'tasks#index', as: :tasks

end

# Como usuário, posso listar tarefas
# Como usuário, posso ver os detalhes de uma tarefa
# Como usuário, posso adicionar uma nova tarefa
# Como usuário, posso editar uma tarefa (marcar como concluída / atualizar título e detalhes)
# Como usuário, posso remover uma tarefa
