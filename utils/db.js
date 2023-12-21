require("dotenv").config();
const chalk = require("chalk");
const mongoose = require("mongoose");

const keys = require("../config/keys");
const { database } = keys;

const setupDB = async () => {
  try {
    // Connect to MongoDB

    mongoose
      .connect(database.url)
      .then(() =>
        console.log(`${chalk.green("✓")} ${chalk.blue("MongoDB Connected!")}`)
      )
      .catch((err) => console.log(err));
  } catch (error) {
    return null;
  }
};

module.exports = setupDB;
