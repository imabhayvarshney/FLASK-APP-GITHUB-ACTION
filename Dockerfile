FROM python:3.8

COPY ./requirements.txt /webapp/requirements.txt

WORKDIR /webapp

ENV PIP_NO_CACHE_DIR=1

#RUN apt get update (If we add this then it will throw error in build  )
RUN pip install -r requirements.txt

#(It is already in requirements.txt)
#RUN pip install flask    

COPY webapp/* /webapp

ENTRYPOINT [ "python" ]

CMD [ "app.py" ]
