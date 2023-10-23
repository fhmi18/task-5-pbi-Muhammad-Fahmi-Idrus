package app

import "gorm.io/gorm"

type Repository interface {
	Save(app User) (User, error)
}

type repository struct {
	db *gorm.DB
}

func NewRepository(db *gorm.DB) *repository {
	return &repository{db}
}

func (r *repository) Save(app User) (User, error) {
	err := r.db.Create(&app).Error
	if err != nil {
		return app, err
	}
	return app, nil
}
