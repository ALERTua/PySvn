
@echo off
set PYPI_REPO_NAME=artifactory_upload

choice /C YN /m "Did you change the version?"
if ["%errorlevel%"]==["2"] exit /b

echo Publishing
poetry publish --repository %PYPI_REPO_NAME% --build %*

echo -i https://artifactory.wgdp.io/artifactory/api/pypi/wotk-pypi-wotdevtool/simple/ --extra-index-url https://artifactory.wgdp.io/artifactory/api/pypi/wotd-pypi/simple/ --extra-index-url https://pypi.python.org/simple
