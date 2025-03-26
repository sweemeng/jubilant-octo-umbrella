FROM alpine AS builder

ENV PYTHONUNBUFFERED=1
RUN apk add --update --no-cache python3 py3-pip py3-virtualenv  
WORKDIR /app
COPY ./apps/requirement.txt ./
COPY ./apps/app.py ./
RUN python3 -m venv /app/venv
RUN /app/venv/bin/pip3 install -r ./requirement.txt
FROM alpine AS runtime
WORKDIR /app
ENV PATH=/app/venv/bin:$PATH
COPY --from=builder /app/venv ./venv
RUN apk add --update --no-cache python3 py3-pip py3-virtualenv
COPY ./apps .
CMD ["python", "/app/venv/bin/flask", "run", "--host=0.0.0.0"]
