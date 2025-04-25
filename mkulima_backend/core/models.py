# core/models.py
from django.db import models
from django.contrib.auth.models import User

class Farmer(models.Model):
    name = models.CharField(max_length=100)
    phone = models.CharField(max_length=20)
    location = models.CharField(max_length=250)
    farmer_type= models.CharField(max_length=20)
    status = models.CharField(max_length=20)

class LoanApplication(models.Model):
    user = models.ForeignKey(User, on_delete=models.CASCADE)
    amount = models.DecimalField(max_digits=10, decimal_places=2)
    reason = models.TextField()
    date_applied = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"Loan of {self.amount} by {self.user.username}"

class Product(models.Model):
    name = models.CharField(max_length=100)
    price = models.CharField(max_length=100)

    def __str__(self):
        return self.name

class PriceAlert(models.Model):
    crop = models.CharField(max_length=100)
    price = models.CharField(max_length=100)

    def __str__(self):
        return f"{self.crop}: {self.price}"