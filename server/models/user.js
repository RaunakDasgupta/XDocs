const mongoose = require("mongoose");

const userSchema = mongoose.Schema({
  name: {
    type: String,
    required: true,
  },
  email: {
    type: String,
    reuired: true,
  },
  profliePic: {
    type: String,
    reuired: true,
  },
});

const User = mongoose.model("User", userSchema);
module.exports= User;
