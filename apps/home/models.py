# -*- encoding: utf-8 -*-
"""
Copyright (c) 2019 - 
"""

from django.db import models
from django.contrib.auth.models import User
#SerieHistoricaDePrecosDeCombustiveis
# Create your models here.
class SerieHistoricaDePrecosDeCombustiveis:
    id: int
    regiao: str
    estado: str
    municipio: str
    revenda: str
    cnpj_revenda: int
    produto: str
    data_coleta: str
    valor_venda: int
    valor_compra: int
    unidade_medida: str
    bandeira: str
    def regiao():
        pass
    def estado():
        pass
    def municipio():
        pass
    def revenda():
        pass
    def cnpj_da_revenda():
        pass
    def produto():
        pass
    def data_da_coleta():
        pass
    def valor_de_venda():
        pass
    def valor_de_compra():
        pass
    def unidade_de_medida():
        pass
    def bandeira():
        pass