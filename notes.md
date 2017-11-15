                new_user_session GET      /users/sign_in(.:format)                devise/sessions#new             (CALL TO ACTION TO PAGE DE SIGN IN/SIGN OUT)
                    user_session POST     /users/sign_in(.:format)                devise/sessions#create      (PAGE DE SIGN IN/OUT, )
            destroy_user_session DELETE   /users/sign_out(.:format)               devise/sessions#destroy
               new_user_password GET      /users/password/new(.:format)           devise/passwords#new
              edit_user_password GET      /users/password/edit(.:format)          devise/passwords#edit
                   user_password PATCH    /users/password(.:format)               devise/passwords#update
                                 PUT      /users/password(.:format)               devise/passwords#update
                                 POST     /users/password(.:format)               devise/passwords#create
        cancel_user_registration GET      /users/cancel(.:format)                 devise/registrations#cancel
           new_user_registration GET      /users/sign_up(.:format)                devise/registrations#new
          edit_user_registration GET      /users/edit(.:format)                   devise/registrations#edit
               user_registration PATCH    /users(.:format)                        devise/registrations#update
                                 PUT      /users(.:format)                        devise/registrations#update
                                 DELETE   /users(.:format)                        devise/registrations#destroy
                                 POST     /users(.:format)                        devise/registrations#create
user_facebook_omniauth_authorize GET|POST /users/auth/facebook(.:format)          users/omniauth_callbacks#passthru
 user_facebook_omniauth_callback GET|POST /users/auth/facebook/callback(.:format) users/omniauth_callbacks#facebook
                            root GET      /                                       pages#home
                     instruments GET      /instruments(.:format)                  instruments#index
                      instrument GET      /instruments/:id(.:format)              instruments#show
                            user GET      /users/:id(.:format)                    users#show
                 booking_reviews POST     /bookings/:booking_id/reviews(.:format) reviews#create
                        bookings GET      /bookings(.:format)                     bookings#index
                                 POST     /bookings(.:format)                     bookings#create
               owner_instruments GET      /owner/instruments(.:format)            owner/instruments#index
                                 POST     /owner/instruments(.:format)            owner/instruments#create
            new_owner_instrument GET      /owner/instruments/new(.:format)        owner/instruments#new
           edit_owner_instrument GET      /owner/instruments/:id/edit(.:format)   owner/instruments#edit
                owner_instrument PATCH    /owner/instruments/:id(.:format)        owner/instruments#update
                                 PUT      /owner/instruments/:id(.:format)        owner/instruments#update
                                 DELETE   /owner/instruments/:id(.:format)        owner/instruments#destroy
                  owner_bookings GET      /owner/bookings(.:format)               owner/bookings#index
