"""space URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/1.10/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  url(r'^$', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  url(r'^$', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.conf.urls import url, include
    2. Add a URL to urlpatterns:  url(r'^blog/', include('blog.urls'))
"""
from django.conf.urls import url
from django.contrib import admin
from earth.views import *

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^$', index),
    url(r'^test/(?P<candidateID>\d{1,6})/(?P<testID>\d{1,6})$', test),
    url(r'^candidatelist$', candidatelist),       
    url(r'^jedi/(?P<jediID>\d{1,6})$', jedi),   
    url(r'^candidate/(?P<candidateID>\d{1,6})$', candidate),
    url(r'^newcandidate$', newcandidate),
    url(r'^jedilist$', jedilist),
    url(r'^knighthood/(?P<candidateID>\d{1,6})/(?P<knighthoodID>\d{1,6})$', candidateclan),
]
