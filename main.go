package main

import (
	"log"
	"pbi-ringin/app"

	"github.com/gin-gonic/gin"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

func main() {
	dsn := "root:@tcp(127.0.0.1:3306)/pbi-ringin?charset=utf8mb4&parseTime=True&loc=Local"
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		log.Fatal(err.Error())
	}

	userRepository := app.NewRepository(db)
	userService := app.NewService(userRepository)

	// input := app.LoginInput{
	// 	Email:    "roymar@gmail.com",
	// 	Password: "password",
	// }
	// user, err := userService.Login(input)
	// if err != nil {
	// 	fmt.Println("Terjadi kesalahan pada Email atau Password")
	// 	fmt.Println(err.Error())
	// }

	// fmt.Println(user.Email)
	// fmt.Println(user.Username)

	userHandler := app.NewUserHandler(userService)

	router := gin.Default()
	api := router.Group("/api/v1")

	api.POST("/users", userHandler.RegisterUser)
	api.POST("/sessions", userHandler.Login)
	api.POST("/email_checkers", userHandler.CheckEmailAvailability)

	router.Run()
}
