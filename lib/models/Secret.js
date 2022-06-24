const pool = require('../utils/pool');

module.exports = class Secret {
  id;
  title;
  description;
  created_at;

  constructor(row) {
    this.id = row.id;
    this.title = row.title;
    this.description = row.description;
    this.created_at = row.created_at;
  }

  static async getAllSecrets() {
    const { rows } = await pool.query(
      'SELECT id, title, description, created_at FROM secrets;'
    );

    return rows.map((row) => new Secret(row));
  }
};
