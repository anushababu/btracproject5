from django.shortcuts import render
from django.http import HttpResponseRedirect,JsonResponse,HttpResponse
from app5.models import *
import os
import random
import string
from django.conf import settings
from django.core.mail import send_mail
import datetime
import hashlib
# Create your views here.
def index(request):
  data=pro_tb.objects.all()
  category=pro_tb.objects.raw('SELECT * FROM app5_pro_tb GROUP BY gender,category')
  return render(request,'index.html',{"data":data,"cat":category})

def checkout(request):
  uid=request.session['myid']
  uidd=register_tb.objects.get(id=uid)
  cart=cart_tb.objects.filter(uid=uidd,status="pending")
  count=cart_tb.objects.filter(uid=uidd,status="pending").count

  total=0
  for x in cart:
    price=x.totalamount
    total=float(price)+total
  return render(request,'checkout.html',{"cart":cart,"total":total,"count":count})

def furniture(request):
	return render(request,'furniture.html')

def login(request):
  if request.method=="POST":
    cemail=request.POST["email"]
    cpassword=request.POST["password"]
    hashpass=hashlib.md5(cpassword.encode('utf8')).hexdigest()
    check=register_tb.objects.filter(email=cemail,password=cpassword,hashpass=hashpass)
    if check:
      for x in check:
        request.session['myid']=x.id
        request.session['myname']=x.name
      return render(request,'index.html',{'success':"successfully logined"})
    else:
      return render(request,'login.html',{'error':'invalid details'})
  else:
    return render(request,'login.html')

def logout(request):
    if request.session.has_key("myid"):
         del request.session['myid']
         del request.session['myname']
    return HttpResponseRedirect('/')  


def mail(request):
  data=pro_tb.objects.all()
  return render(request,'mail.html',{"data":data})

def products(request):
  gd=request.GET["gd"]
  ct=request.GET["ct"]
  data=pro_tb.objects.all()
  category=pro_tb.objects.raw('SELECT * FROM app5_pro_tb GROUP BY gender,category')
  data1=pro_tb.objects.filter(gender=gd,category=ct)
  content={"datakey":data1,"data":data,"category":ct,"cat":category,"gender":gd}
  return render(request,'products.html',content)
   

def register(request):
  if request.method=="POST":
    cname=request.POST["name"]
    cpassword=request.POST["password"]
    cemail=request.POST["email"]
    cphone=request.POST["phone"]
    hashpass=hashlib.md5(cpassword.encode('utf8')).hexdigest()
    check=register_tb.objects.filter(email=cemail)
    if check:
        return render(request,'register.html',{'error':'Already Registered'})
    else:
      add=register_tb(name=cname,email=cemail,phone=cphone,password=cpassword,hashpass=hashpass)
      add.save()
      x = ''.join(random.choices(cname + string.digits, k=8))
      y = ''.join(random.choices(string.ascii_letters + string.digits, k=7))
      subject = 'welcome to Whats App'
      message = f'Hi {cname}, thank you for registering in Whats App . your user username: {cname} and  password: {cpassword}. Follow https://Wa.me/+18478527243 or https://www.tinder.com'
      email_from = settings.EMAIL_HOST_USER 
      recipient_list = [cemail, ]
      send_mail( subject, message, email_from, recipient_list )
      return render(request,'index.html',{'success':'Data Saved'})
  else:
    return render(request,'register.html')

def shortcodes(request):
	return render(request,'short-codes.html')

def single(request):
  if request.session.has_key("myid"):
      proid=request.GET['pid']
      data=pro_tb.objects.filter(id=proid)
      category=pro_tb.objects.raw('SELECT * FROM app5_pro_tb GROUP BY gender,category')
      return render(request,'single.html',{"data":data,"cat":category})
  else:
      return HttpResponseRedirect('/login/')

def addcart(request):
  if request.method == "POST":
      pid=request.GET['pid']
      proid=pro_tb.objects.get(id=pid)
      uid=request.session['myid']
      uidd=register_tb.objects.get(id=uid)
      products=pro_tb.objects.filter(id=pid)
      check=cart_tb.objects.filter(pid=proid,uid=uidd,status="pending")
      qty=request.POST['qty']
      total=0
      for x in products:
          price=x.price
          delv=(int(price)*10)/100
          total=delv+(int(price)*int(qty))
      if check:
          cart=cart_tb.objects.filter(uid=uidd,status="pending")
          total=0
          for x in cart:
            price=x.totalamount
            total=float(price)+total
          count=cart_tb.objects.filter(uid=uidd,status="pending").count
          return render(request,'checkout.html',{"cart":cart,'error':'invalied details',"total":total,"count":count})
      else:
          add=cart_tb(pid=proid,uid=uidd,totalamount=total,quantity=qty)
          add.save()
          cart=cart_tb.objects.filter(uid=uidd,status="pending")
          total=0
          for x in cart:
            price=x.totalamount
            total=float(price)+total
          count=cart_tb.objects.filter(uid=uidd,status="pending").count
          return render(request,"checkout.html",{"cart":cart,"total":total,"count":countl})
  else:
      proid=request.GET['pid']
      data=pro_tb.objects.filter(id=proid)
      return render(request,'single.html',{"data":data})


def updatecart(request):
    cid=request.GET['cid']
    qty=request.POST['qty']
    data=cart_tb.objects.filter(id=cid)
    for x  in data:
        price=x.pid.price
        delv=(int(price)*10)/100
        newprice=(int(qty)*int(price)+float(delv))
        cart_tb.objects.filter(id=cid).update(totalamount=newprice,quantity=qty)
        return HttpResponseRedirect("/checkout/")
    


def deletecart(request):
    cid=request.GET['cid']
    cart_tb.objects.filter(id=cid).delete()
    return HttpResponseRedirect("/checkout/")
  



###################################################################################################################################
###############################################ADMIN###############################################################################

			
def admin_index(request):
  if request.session.has_key("id1"):
      return render(request,'admin/index.html')
  else:
       return HttpResponseRedirect('/admin_signin/') 
          
def admin_signin(request):
   if request.method=="POST":
         cname=request.POST["name"]
         cpassword=request.POST["password"]

         check=signup_tb.objects.filter(name=cname,password=cpassword)
         if check:
              for x in check:
                  request.session['id1']=x.id
                  request.session['name1']=x.name
              return render(request,'admin/index.html',{'success':'successfully logined'})
         else:
             return render(request,'admin/signin.html',{'error':'invalid details'})
   else:
       return render(request,'admin/signin.html')

def admin_signout(request):
    if request.session.has_key("id1"):
         del request.session['id1']
         del request.session['name1']
    return HttpResponseRedirect('/admin_signin/')       

def admin_signup(request):
   if request.method=="POST":
         cname=request.POST["name"]
         cemail=request.POST["email"]
         cpassword=request.POST["password"]
         cphone=request.POST["phone"]
      
         check=signup_tb.objects.filter(email=cemail)
         if check:
               return render(request,'admin/signup.html',{'error':'Already Registered'})
         else:
               add=signup_tb(name=cname,email=cemail,phone=cphone,password=cpassword,)
               add.save()
               return render(request,'admin/index.html',{'success':'successfully Registered'})
   else:
       return render(request,'admin/signup.html')

def admin_tabels(request):
   data=pro_tb.objects.all() 
   return render(request,'admin/tabels.html',{'details':data})

def admin_validation(request):
   return render(request,'admin/validation.html')            

def admin_input(request):
      if request.method=="POST":
         cname=request.POST["name"]
         cprice=request.POST["price"]
         cdescription=request.POST["desc"]
         cimage=request.FILES["image"]
         cgender=request.POST["gender"]
         ccategory=request.POST["category"]

         check=register_tb.objects.filter(name=cname)
         if check:
               return render(request,'admin/input.html',{'error':'Already Registered'})
         else:
               add=pro_tb(name=cname,price=cprice,desc=cdescription,image=cimage,gender=cgender,category=ccategory)
               add.save()
               return render(request,'admin/index.html',{'success':'Data Saved'})
      else:
          return render(request,'admin/input.html')


def admin_update(request):
  if request.method=="POST":
        cname=request.POST["name"]
        cprice=request.POST["price"]
        cdesc=request.POST["desc"]
        cgender=request.POST["gender"]
        ccategory=request.POST["category"]
        proid=request.GET['uid']
        imgval=request.POST['imgup']
        if imgval == "Yes":

          cimage=request.FILES['images']
          oldrec=pro_tb.objects.filter(id=proid)
          updrec=pro_tb.objects.get(id=proid)
          for x in oldrec:
              if x.image: 
                imgurl=x.image.url
                pathtoimage=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))+imgurl
                if os.path.exists(pathtoimage):
                    os.remove(pathtoimage)
                    print('successfully deleted')
          updrec.image=cimage
          updrec.save()        
        add=pro_tb.objects.filter(id=proid).update(name=cname,price=cprice,desc=cdesc,gender=cgender,category=ccategory)
        return HttpResponseRedirect('/admin_tabels/')
  else:
        proid=request.GET['uid']
        data=pro_tb.objects.filter(id=proid)
        return render(request,"admin/update.html",{'details':data})

def admin_delete(request):
  proid=request.GET['uidd']
  oldrec=pro_tb.objects.filter(id=proid)
  for x in oldrec:
    imgurl=x.image.url
    pathtoimage=os.path.dirname(os.path.dirname(os.path.abspath(__file__)))+imgurl
    if os.path.exists(pathtoimage):
      os.remove(pathtoimage)
  data=pro_tb.objects.filter(id=proid).delete()
  return HttpResponseRedirect('/admin_tabels/') 

def admin_paytable(request):
   data=paymnt_tb.objects.all() 
   return render(request,'admin/paytable.html',{'details':data}) 

def admin_ordertable(request):
   data=cart_tb.objects.all() 
   return render(request,'admin/ordertable.html',{'details':data})

   
def admin_form(request):
   data=register_tb.objects.all()
   return render(request,'admin/form.html',{'details':data})

def ajaxview(request):
   uid=request.GET.get('uid')
   user=register_tb.objects.all().filter(id=uid)
   for x in user:
       name=x.name
       email=x.email
       phone=x.phone

   dat={"aa":name,"bb":email,"cc":phone}
   print(dat)
   return JsonResponse(dat)        

###################################################################################################################
##########################################Payment##################################################################

def payment_index(request):
    if request.method =="POST":
        uid=request.session['myid']
        uidd=register_tb.objects.get(id=uid)
        cdate=datetime.datetime.now().date()
        ctime=datetime.datetime.now().time()
        total=request.POST['total']
        add=paymnt_tb(uid=uidd,status="paid",total=total,date=cdate,time=ctime)
        add.save()
        cart_tb.objects.filter(uid=uidd,status="pending").update(status="paid")
        return HttpResponseRedirect("/")
    else:
        total=request.GET['gt']    
        return render(request,'payment/index.html',{"total":total}) 




from reportlab.pdfgen import canvas 
from django.views.generic import View
from project5.utils import render_to_pdf


def downloadpdf(request):
    pid=request.GET['pid']
    data=paymnt_tb.objects.filter(id=pid)
    pdf=render_to_pdf('pdfdownload.html',{'data':data})
    return HttpResponse(pdf,content_type='application/pdf')
  


