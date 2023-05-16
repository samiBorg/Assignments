FROM python
EXPOSE 8000
WORKDIR /app
COPY requirments.txt .
RUN pip install -r requirments.txt
COPY . .
CMD ["uvicorn", "main:", "app", "--reload"]