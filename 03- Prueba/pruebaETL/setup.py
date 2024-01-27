from setuptools import find_packages, setup

setup(
    name="pruebaETL",
    packages=find_packages(exclude=["pruebaETL_tests"]),
    install_requires=[
        "dagster",
        "dagster-cloud"
    ],
    extras_require={"dev": ["dagster-webserver", "pytest"]},
)
