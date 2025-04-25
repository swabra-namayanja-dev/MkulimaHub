from rest_framework import viewsets, generics
from django.contrib.auth.models import User
from .models import LoanApplication, Product, PriceAlert
from .serializers import (
    UserSerializer, LoanApplicationSerializer, ProductSerializer, PriceAlertSerializer
)

class RegisterUserView(generics.CreateAPIView):
    queryset = User.objects.all()
    serializer_class = UserSerializer

class LoanApplicationViewSet(viewsets.ModelViewSet):
    queryset = LoanApplication.objects.all()
    serializer_class = LoanApplicationSerializer

class ProductViewSet(viewsets.ModelViewSet):
    queryset = Product.objects.all()
    serializer_class = ProductSerializer

class PriceAlertViewSet(viewsets.ModelViewSet):
    queryset = PriceAlert.objects.all()
    serializer_class = PriceAlertSerializer
