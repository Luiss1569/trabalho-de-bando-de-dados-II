const Sequelize = require('sequelize');
module.exports = function(sequelize, DataTypes) {
  return sequelize.define('speed', {
    id: {
      type: DataTypes.INTEGER,
      allowNull: false,
      primaryKey: true
    },
    walk: {
      type: DataTypes.SMALLINT,
      allowNull: true
    },
    burrow: {
      type: DataTypes.SMALLINT,
      allowNull: true
    },
    climb: {
      type: DataTypes.SMALLINT,
      allowNull: true
    },
    fly: {
      type: DataTypes.SMALLINT,
      allowNull: true
    },
    swim: {
      type: DataTypes.SMALLINT,
      allowNull: true
    },
    hover: {
      type: DataTypes.BOOLEAN,
      allowNull: true
    }
  }, {
    sequelize,
    tableName: 'speed',
    schema: 'public',
    timestamps: false,
    indexes: [
      {
        name: "speed_pkey",
        unique: true,
        fields: [
          { name: "id" },
        ]
      },
    ]
  });
};
