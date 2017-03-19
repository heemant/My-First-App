Rails.application.routes.draw do
  resources :employees
  resources :departments
  
  get 'startup' => 'orders#startup'
  get 'highsalary' => 'orders#highsalary'
  get 'order_by_age_asc' => 'orders#order_by_age_asc'
  get 'order_by_age_desc' => 'orders#order_by_age_desc'
  get 'order_by_dept' => 'orders#order_by_dept'
  get 'order_by_salary_asc' => 'orders#order_by_salary_asc'
  get 'order_by_salary_desc' => 'orders#order_by_salary_desc'
  get 'retired_list' => 'orders#retired_list'
  get 'top5emp' => 'orders#top5emp'
  get 'top5sremp_by_age' => 'orders#top5sremp_by_age'
  get 'lowsalaryandsenior' => 'orders#lowsalaryandsenior'
  
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
