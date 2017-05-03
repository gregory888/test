# -*- coding: utf-8 -*-

from django.shortcuts import render,render_to_response,HttpResponse,HttpResponseRedirect
from .models import *
from .forms import *

def index(request):
	name = request.GET.get('name')
	return render_to_response("content/index.html",locals())


def test(request,candidateID,testID):
	try:
		test = Test.objects.get(pk = testID)
		if(request.method == 'POST'):
			lastResult = TestResult.objects.filter(test_id = testID,candidate_id = candidateID)
			testResult = TestResult(test_id = testID,candidate_id = candidateID,answer1 = request.POST.get('q1'),answer2 = request.POST.get('q2'),answer3 = request.POST.get('q3'),answer4 = request.POST.get('q4'),answer5 = request.POST.get('q5')) if not lastResult else lastResult[0]
			testResult.save()
			infotext = "Ответ на тест сохранен."

		return render_to_response("content/test.html",locals())
	except:
		return render_to_response("content/error404.html")
	pass

def newcandidate(request):
	if(request.method == 'POST'):
		form = CandidateForm(request.POST)
		#aa = form.cleaned_data['age']
		if form.is_valid():
			fdata = form.cleaned_data
			candidate = Candidate(planet_id = form.cleaned_data['planet'], age = form.cleaned_data['age'], email = form.cleaned_data['email'] , name = form.cleaned_data['name'])
			candidate.save()
			return HttpResponseRedirect('/candidate/'+str(candidate.id))
		return render_to_response("content/newcandidate.html",locals())
	else:
		form = CandidateForm()
		return render_to_response("content/newcandidate.html",locals())

def jedilist(request):
	jediList = Jedi.objects.all()
	return render_to_response("content/jedilist.html",locals())


def jedi(request,jediID):
	try:
		jedi = Jedi.objects.get(pk = jediID)
		tests = TestResult.objects.filter(candidate_id__in = Candidate.objects.filter(knighthood = None,planet = jedi.planet).values_list('id', flat=True))#Candidate.objects.filter(planet = jedi.planet))
		return render_to_response("content/jedi.html",locals())
	except:
		return render_to_response("content/error404.html")

def candidatelist(request):
	candidateList = Candidate.objects.all()
	return render_to_response("content/candidatelist.html",locals())

def candidate(request,candidateID):
	try:
		candidate = Candidate.objects.get(pk = candidateID)
		tests = Test.objects.all()
		return render_to_response("content/candidate.html",locals())
	except:
		return render_to_response("content/error404.html")
	return render_to_response("content/candidatelist.html",locals())


def candidateclan(request,candidateID,knighthoodID):
	candidate = Candidate.objects.get(pk = candidateID)
	candidate.knighthood_id = knighthoodID;
	candidate.save()
	return HttpResponse("1")


