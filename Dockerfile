FROM python:3.6

USER root

RUN pip install \
  Sphinx==2.4.4 \
  sphinxcontrib-confluencebuilder \
  sphinxcontrib-plantuml \
  recommonmark \
  m2r2

RUN apt update && apt install default-jre -y

COPY plantuml.jar /plantuml.jar

COPY entrypoint entrypoint

ENTRYPOINT ["/entrypoint"]
