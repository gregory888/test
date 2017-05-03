# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-05-01 17:06
from __future__ import unicode_literals

import django.core.validators
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Candidate',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=15, verbose_name='\u0418\u043c\u044f')),
                ('age', models.IntegerField(validators=[django.core.validators.MaxValueValidator(100), django.core.validators.MinValueValidator(10)], verbose_name='\u0412\u043e\u0437\u0440\u0430\u0441\u0442')),
                ('email', models.EmailField(max_length=254, verbose_name='Email')),
            ],
            options={
                'db_table': 'candidate',
                'verbose_name': '\u041a\u0430\u043d\u0434\u0438\u0434\u0430\u0442',
                'verbose_name_plural': '\u041a\u0430\u043d\u0434\u0438\u0434\u0430\u0442\u044b',
            },
        ),
        migrations.CreateModel(
            name='Jedi',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=15, verbose_name='\u0418\u043c\u044f')),
            ],
            options={
                'db_table': 'jedi',
                'verbose_name': '\u0414\u0436\u0435\u0434\u0430\u0439',
                'verbose_name_plural': '\u0414\u0436\u0435\u0434\u0430\u0438',
            },
        ),
        migrations.CreateModel(
            name='Knighthood',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=15, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u043e\u0440\u0434\u0435\u043d\u0430')),
            ],
            options={
                'db_table': 'knighthood',
                'verbose_name': '\u041e\u0440\u0434\u0435\u043d',
                'verbose_name_plural': '\u041e\u0440\u0434\u0435\u043d\u0430 \u0434\u0436\u0435\u0434\u0430\u0435\u0432',
            },
        ),
        migrations.CreateModel(
            name='Planet',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=15, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u043f\u043b\u0430\u043d\u0435\u0442\u044b')),
            ],
            options={
                'db_table': 'planet',
                'verbose_name': '\u041f\u043b\u0430\u043d\u0435\u0442\u0430',
                'verbose_name_plural': '\u041f\u043b\u0430\u043d\u0435\u0442\u044b',
            },
        ),
        migrations.CreateModel(
            name='Test',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=50, verbose_name='\u041d\u0430\u0437\u0432\u0430\u043d\u0438\u0435 \u0442\u0435\u0441\u0442\u0430')),
                ('question1', models.CharField(max_length=100, verbose_name='\u0412\u043e\u043f\u0440\u043e\u0441 1')),
                ('answer1', models.BooleanField(verbose_name='\u0414\u0410 (1 \u0432\u043e\u043f\u0440\u043e\u0441)')),
                ('question2', models.CharField(blank=True, max_length=100, verbose_name='\u0412\u043e\u043f\u0440\u043e\u0441 2')),
                ('answer2', models.BooleanField(verbose_name='\u0414\u0410 (2 \u0432\u043e\u043f\u0440\u043e\u0441)')),
                ('question3', models.CharField(blank=True, max_length=100, verbose_name='\u0412\u043e\u043f\u0440\u043e\u0441 3')),
                ('answer3', models.BooleanField(verbose_name='\u0414\u0410 (3 \u0432\u043e\u043f\u0440\u043e\u0441)')),
                ('knighthood', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='earth.Knighthood', verbose_name='\u041e\u0440\u0434\u0435\u043d')),
            ],
            options={
                'db_table': 'testQuestions',
                'verbose_name': '\u0422\u0435\u0441\u0442',
                'verbose_name_plural': '\u0422\u0435\u0441\u0442\u044b',
            },
        ),
        migrations.CreateModel(
            name='TestResult',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('answer1', models.BooleanField(verbose_name='\u0414\u0410 (1 \u0432\u043e\u043f\u0440\u043e\u0441)')),
                ('answer2', models.BooleanField(verbose_name='\u0414\u0410 (2 \u0432\u043e\u043f\u0440\u043e\u0441)')),
                ('answer3', models.BooleanField(verbose_name='\u0414\u0410 (3 \u0432\u043e\u043f\u0440\u043e\u0441)')),
                ('answer4', models.BooleanField(verbose_name='\u0414\u0410 (4 \u0432\u043e\u043f\u0440\u043e\u0441)')),
                ('answer5', models.BooleanField(verbose_name='\u0414\u0410 (5 \u0432\u043e\u043f\u0440\u043e\u0441)')),
                ('candidate', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='earth.Candidate', verbose_name='\u041a\u0430\u043d\u0434\u0438\u0434\u0430\u0442')),
                ('test', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='earth.Knighthood', verbose_name='\u0422\u0435\u0441\u0442')),
            ],
            options={
                'db_table': 'testResult',
                'verbose_name': '\u0420\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442 \u0442\u0435\u0441\u0442\u0430',
                'verbose_name_plural': '\u0420\u0435\u0437\u0443\u043b\u044c\u0442\u0430\u0442\u044b \u0442\u0435\u0441\u0442\u043e\u0432',
            },
        ),
        migrations.AddField(
            model_name='jedi',
            name='knighthood',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='earth.Knighthood', verbose_name='\u041e\u0440\u0434\u0435\u043d'),
        ),
        migrations.AddField(
            model_name='jedi',
            name='planet',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='earth.Planet', verbose_name='\u041f\u043b\u0430\u043d\u0435\u0442\u0430'),
        ),
        migrations.AddField(
            model_name='candidate',
            name='knighthood',
            field=models.ForeignKey(blank=True, default=None, on_delete=django.db.models.deletion.CASCADE, to='earth.Knighthood', verbose_name='\u041e\u0440\u0434\u0435\u043d'),
        ),
        migrations.AddField(
            model_name='candidate',
            name='planet',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='earth.Planet', verbose_name='\u041f\u043b\u0430\u043d\u0435\u0442\u0430'),
        ),
    ]
