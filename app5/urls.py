from django.urls import path
from . import views
 
urlpatterns=[
    path('',views.index),
    path('checkout/',views.checkout),
    path('furniture/',views.furniture),
    path('login/',views.login),
    path('mail/',views.mail),
    path('products/',views.products),
    path('register/',views.register),
    path('shortcodes/',views.shortcodes),
    path('single/',views.single),
    path('logout/',views.logout),
    path('addcart/',views.addcart),
    path('updatecart/',views.updatecart),
    path('deletecart/',views.deletecart),
    path('downloadpdf/',views.downloadpdf),




#####################################################################################################################################
#####################################################Admin###########################################################################

    path('admin_index/',views.admin_index),
    path('admin_signin/',views.admin_signin),
    path('admin_signup/',views.admin_signup),
    path('admin_tabels/',views.admin_tabels),
    path('admin_validation/',views.admin_validation),
    path('admin_signout/',views.admin_signout),
    path('admin_input/',views.admin_input),
    path('admin_update/',views.admin_update),
    path('admin_delete/',views.admin_delete),
    path('admin_paytable/',views.admin_paytable),
    path('admin_ordertable/',views.admin_ordertable),
    path('admin_form/',views.admin_form),
    path('ajaxview/',views.ajaxview),

#############################################################################################################
###########################################PAYMENT###########################################################

    path('payment_index/',views.payment_index),
    
]
