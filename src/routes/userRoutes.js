const express = require("express");
const { registerUser, loginUser, getUsers, verifyUser } = require("../controllers/userController");

const router = express.Router();

router.post("/register", registerUser);
router.post("/login", loginUser);
router.get('/', getUsers);
router.get('/verify/:userId', verifyUser);

module.exports = router;
