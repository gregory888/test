# -*- coding: utf-8 -*-

from django import forms
from .models import *

from django.core.validators import MaxValueValidator, MinValueValidator

PLANET_LIST = []
for planet in Planet.objects.all():
	PLANET_LIST.append((planet.id,planet.name))


class CandidateForm(forms.Form):
    name = forms.CharField(label=u'Имя',max_length=100,min_length=3)
    planet = forms.ChoiceField(choices = tuple(PLANET_LIST), label=u"Планета", initial='', widget=forms.Select(), required=True)
    age = forms.IntegerField(label=u'Возраст',validators=[MaxValueValidator(100), MinValueValidator(10)])
    email = forms.EmailField(label=u'Email')
