package main

import (
	"log"
	"net/http"
	"pbi-ringin/app"

	"github.com/gin-gonic/gin"
	"gorm.io/driver/mysql"
	"gorm.io/gorm"
)

func main() {
	// dsn := "root:@tcp(127.0.0.1:3306)/pbi-ringin?charset=utf8mb4&parseTime=True&loc=Local"
	// db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	// if err != nil {
	// 	log.Fatal(err.Error())
	// }
	// fmt.Println("Connection Success!!")

	// var users []app.User
	// db.Find(&users)

	// for _, app := range users {
	// 	fmt.Println(app.Username)
	// }

	router := gin.Default()
	router.GET("/handler", handler)
	router.Run()
}

func handler(c *gin.Context) {
	dsn := "root:@tcp(127.0.0.1:3306)/pbi-ringin?charset=utf8mb4&parseTime=True&loc=Local"
	db, err := gorm.Open(mysql.Open(dsn), &gorm.Config{})
	if err != nil {
		log.Fatal(err.Error())
	}
	
	var users []app.User
	db.Find(&users)

	c.JSON(http.StatusOK, users)
}
