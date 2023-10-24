package app

type UserFormatter struct {
	ID       int    `json:"id"`
	Username string `json:"username"`
	Email    string `json:"email"`
	Token    string `json:"token"`
}

func FormatUser(app User, token string) UserFormatter {
	formatter := UserFormatter{
		ID:       app.ID,
		Username: app.Username,
		Email:    app.Email,
		Token:    token,
	}

	return formatter
}
