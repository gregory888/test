# -*- coding: utf-8 -*-

from __future__ import unicode_literals

from django.core.validators import MaxValueValidator, MinValueValidator
from django.db import models

class Planet(models.Model):
	class Meta:
		db_table = 'planet'
		verbose_name = u'Планета'
		verbose_name_plural = u'Планеты'
	name = models.CharField(u'Название планеты',max_length=15)

	def __unicode__(self):
		return self.name

class Knighthood(models.Model):
	class Meta:
		db_table = 'knighthood'
		verbose_name = u'Орден'
		verbose_name_plural = u'Ордена джедаев'
	name = models.CharField(u'Название ордена',max_length=15)
	def __unicode__(self):
		return self.name

class Jedi(models.Model):
	class Meta:
		db_table = 'jedi'
		verbose_name = u'Джедай'
		verbose_name_plural = u'Джедаи'
	knighthood = models.ForeignKey(Knighthood,verbose_name = 'Орден', on_delete = models.CASCADE)
	planet = models.ForeignKey(Planet,verbose_name = 'Планета', on_delete = models.CASCADE)
	name = models.CharField(u'Имя',max_length=15)
	def __unicode__(self):
		return self.name

class Candidate(models.Model):
	class Meta:
		db_table = 'candidate'
		verbose_name = u'Кандидат'
		verbose_name_plural = u'Кандидаты'

	knighthood = models.ForeignKey(Knighthood,verbose_name = 'Орден',null=True,default = None, blank = True, on_delete = models.CASCADE)
	planet = models.ForeignKey(Planet,verbose_name = 'Планета', on_delete = models.CASCADE)
	name = models.CharField(u'Имя',max_length=15)
	age = models.IntegerField(u'Возраст',validators=[MaxValueValidator(100), MinValueValidator(10)])
	email = models.EmailField(u'Email')

	def __unicode__(self):
		return self.name+ ", возраст: " +str(self.age)



class Test(models.Model):
	class Meta:
		db_table = 'testQuestions'
		verbose_name = u'Тест'
		verbose_name_plural = u'Тесты'
	name = models.CharField(u'Название теста',max_length=50)
	knighthood = models.ForeignKey(Knighthood,verbose_name = 'Орден', on_delete = models.CASCADE)
	question1 = models.CharField(u'Вопрос 1',max_length=100)
	answer1 = models.BooleanField(u'ДА (1 вопрос)')
	question2 = models.CharField(u'Вопрос 2',max_length=100)
	answer2 = models.BooleanField(u'ДА (2 вопрос)')
	question3 = models.CharField(u'Вопрос 3',max_length=100)
	answer3 = models.BooleanField(u'ДА (3 вопрос)')
	question4 = models.CharField(u'Вопрос 4',max_length=100, blank = True)
	answer4 = models.BooleanField(u'ДА (4 вопрос)')
	question5 = models.CharField(u'Вопрос 5',max_length=100, blank = True)
	answer5 = models.BooleanField(u'ДА (5 вопрос)')

	def total(self):
		r = 3
		if((self.question4)):
			r+=1
		if((self.question5)):
			r+=1
		return r

	def __unicode__(self):
		return self.name

class TestResult(models.Model):
	class Meta:
		db_table = 'testResult'
		verbose_name = u'Результат теста'
		verbose_name_plural = u'Результаты тестов'
	test = models.ForeignKey(Test,verbose_name = 'Тест', on_delete = models.CASCADE)
	candidate = models.ForeignKey(Candidate,verbose_name = 'Кандидат', on_delete = models.CASCADE)
	answer1 = models.BooleanField(u'ДА (1 вопрос)')
	answer2 = models.BooleanField(u'ДА (2 вопрос)')
	answer3 = models.BooleanField(u'ДА (3 вопрос)')
	answer4 = models.BooleanField(u'ДА (4 вопрос)')
	answer5 = models.BooleanField(u'ДА (5 вопрос)')

	def validAnswers(self):
		r = 1 if self.answer1 == self.test.answer1 else 0
		if(self.answer2 == self.test.answer2):
			r+=1
		if(self.answer3 == self.test.answer3):
			r+=1
		if((self.test.question4)and(self.answer4 == self.test.answer4)):
			r+=1
		if((self.test.question5)and(self.answer5 == self.test.answer5)):
			r+=1
		return r


	def __unicode__(self):
		return "Тест: " + unicode(self.test) + ", кандидат: "+unicode(self.candidate)
