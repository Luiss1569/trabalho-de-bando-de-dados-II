const Monster = require("./dao/monster");

const { Sequelize } = require("sequelize");
const dbConfig = require("../config/database");

const conn = new Sequelize(dbConfig);

module.exports = {
  conn,
  Monster,
};
