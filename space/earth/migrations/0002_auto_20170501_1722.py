# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-05-01 17:22
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('earth', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='test',
            name='answer4',
            field=models.BooleanField(default=1, verbose_name='\u0414\u0410 (4 \u0432\u043e\u043f\u0440\u043e\u0441)'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='test',
            name='answer5',
            field=models.BooleanField(default=1, verbose_name='\u0414\u0410 (5 \u0432\u043e\u043f\u0440\u043e\u0441)'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='test',
            name='question4',
            field=models.CharField(blank=True, max_length=100, verbose_name='\u0412\u043e\u043f\u0440\u043e\u0441 4'),
        ),
        migrations.AddField(
            model_name='test',
            name='question5',
            field=models.CharField(blank=True, max_length=100, verbose_name='\u0412\u043e\u043f\u0440\u043e\u0441 5'),
        ),
        migrations.AlterField(
            model_name='test',
            name='question2',
            field=models.CharField(max_length=100, verbose_name='\u0412\u043e\u043f\u0440\u043e\u0441 2'),
        ),
        migrations.AlterField(
            model_name='test',
            name='question3',
            field=models.CharField(max_length=100, verbose_name='\u0412\u043e\u043f\u0440\u043e\u0441 3'),
        ),
    ]
