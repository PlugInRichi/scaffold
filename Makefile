#Este es mi primer Makefile
#Este comando simpre se ejecuta
inicio:
	@echo "Ejecutando un comando super cool"

#Esto es una regla llamada "saluda" permite hacer make saluda
saluda:
	echo "Objetivo cumplido"
	
#Puede contener requerimientos de entrada (verifica antes la existencia de hola.c)
instruccion: hola.c

# Para más información:
# https://www.loguea.me/2020/04/24/c%C3%B3mo_creare_un_makefile.html


#################################################################################

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

#Alows format the code using a formating code called python black
format:
	black *py

#Solo me los warnings y errores
lint:
	pylint --disable=R,C Hello.py

test:
	python -m pytest --cov=hello test_Hello.py 