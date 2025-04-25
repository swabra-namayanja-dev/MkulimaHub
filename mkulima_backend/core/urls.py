from django.contrib import admin
from django.urls import path, include
from rest_framework.routers import DefaultRouter
from core.views import LoanApplicationViewSet, ProductViewSet, PriceAlertViewSet, RegisterUserView

router = DefaultRouter()
router.register(r'loans', LoanApplicationViewSet)
router.register(r'products', ProductViewSet)
router.register(r'prices', PriceAlertViewSet)

urlpatterns = [
    path('admin/', admin.site.urls),
    path('api/', include(router.urls)),
    path('api/register/', RegisterUserView.as_view(), name='register'),
]
