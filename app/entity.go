package app

import (
	"time"
)

type User struct {
	ID        int
	Username  string
	Email     string
	Password  string
	Photo     string
	CreatedAt time.Time
	UpdatedAt time.Time
}
