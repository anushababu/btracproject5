from django.db import models

# Create your models here.

class register_tb(models.Model):
    name=models.CharField(max_length=255)
    password=models.CharField(max_length=255)
    email=models.CharField(max_length=255)
    phone=models.CharField(max_length=255)
    hashpass=models.TextField()  



   ##################################################################################################################
   ###################################################admin##########################################################

class signup_tb(models.Model):
    name=models.CharField(max_length=255)
    password=models.CharField(max_length=255)  
    email=models.CharField(max_length=255)
    phone=models.CharField(max_length=255)  


class pro_tb(models.Model):
    name=models.CharField(max_length=255)
    price=models.CharField(max_length=255)
    desc=models.TextField()
    image=models.ImageField(upload_to="product/")
    gender=models.CharField(max_length=255)
    category=models.CharField(max_length=255)


class cart_tb(models.Model):
    pid=models.ForeignKey(pro_tb,on_delete=models.CASCADE)
    uid=models.ForeignKey(register_tb,on_delete=models.CASCADE)
    totalamount=models.CharField(max_length=255)
    quantity=models.CharField(max_length=255,default="")
    status=models.CharField(max_length=255,default="pending")    



#############################################################################################################
####################################Payment##################################################################

class paymnt_tb(models.Model):
    uid=models.ForeignKey(register_tb,on_delete=models.CASCADE)
    status=models.CharField(max_length=255)
    date=models.DateField()
    time=models.TimeField()
    total=models.CharField(max_length=255)

    	
