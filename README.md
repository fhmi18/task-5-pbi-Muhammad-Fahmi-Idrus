# Final Task BTPNS - Ringin
Task ini bertujuan sebagai penilaian akhir virtual internship pada BTPNS dengan menggunakan bahasa pemrograman Golang.

[![forthebadge made-with-go](http://ForTheBadge.com/images/badges/made-with-go.svg)](https://go.dev/)

API yang telah dibuat pada Task ini adalah sebagai berikut:


## Register User
Jika user belum memiliki account maka harus melakukan register terlebih dahulu, jika berhasil maka akan ditampilkan sebagai berikut:

```sh
{
    "meta":{
        message: "Account has been register"
        code: 200,
        status: "success"
    },
    "data": {
        "id":1,
        "username": "contoh",
        "email": "contoh@gmail.com",
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxM30.nqm1sK4i0kcst1s-ZiB99kOPmN6h5Uhi82gjJu2If8E"
    }
}
```

Jika user tidak berhasil melakukan Register maka akan ditampilkan sebagai berikut:

```sh
{
    "meta":{
        message: "Register account failed"
        code: 422,
        status: "error"
    },
    "data": {
        "errors": [
            "Key: 'RegisterUserInput.Username' Error:Field validation for 'Username' failed on the 'required' tag",
            "Key: 'RegisterUserInput.Email' Error:Field validation for 'Email' failed on the 'required' tag",
            "Key: 'RegisterUserInput.Password' Error:Field validation for 'Password' failed on the 'required' tag"
        ]
}
```


## Login

User dapat melakukan Login jika telah melakukan register, jika berhasil login maka akan ditampilkan sebagai berikut:

```sh
{
    "meta": {
        "message": "Successfuly loggedin",
        "code": 200,
        "Status": "success"
    },
    "data": {
        "id": 13,
        "username": "mada",
        "email": "mada@gmail.com",
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VyX2lkIjoxM30.nqm1sK4i0kcst1s-ZiB99kOPmN6h5Uhi82gjJu2If8E"
    }
}
```

Jika user tidak dapat melakukan login akan ditampilan sebagai berikut:
```sh
{
    "meta": {
        "message": "Login failed",
        "code": 422,
        "Status": "error"
    },
    "data": {
        "errors": "No user found on that email"
    }
}
```

## Email Check

Email check bertujuan untuk mengetahui email yang telah didaftarkan pada database. Jika email telah terdaftar maka akan ditampilkan sebagai berikut:

```sh
{
    "meta": {
        "message": "Email has been registered",
        "code": 200,
        "Status": "success"
    },
    "data": {
        "is_available": false
    }
}
```

## Upload Photo
User dapat melakukan upload photo profil, jika berhasil maka akan ditampilkan sebagai berikut:
```sh
{
    "meta": {
        "message": "Avatar successfuly uploaded",
        "code": 200,
        "Status": "success"
    },
    "data": {
        "is_uploaded": true
    }
}
```

## Database
Untuk mendownload database yang telah dibuat bisa melalui link berikut:
- [DOWNLOAD](https://drive.google.com/file/d/1At8GLy29QPYYwaF1BrjyP5ubb69GX5bK/view?usp=sharing)  *Klik link 



