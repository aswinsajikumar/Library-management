CREATE TABLE transactions (
	transaction_id SERIAL PRIMARY KEY,
	user_id INT REFERENCES users(user_id),
	book_id INT REFERENCES inventory(book_id),
	borrow_date DATE DEFAULT CURRENT_DATE,
	return_date DATE
);