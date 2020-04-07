test:
	python -m nose tests

fix:
	autopep8 --in-place -r -a tda
	autopep8 --in-place -r -a tests

dist:
	python setup.py sdist bdist_wheel

release:
	python3 -m twine upload dist/*
