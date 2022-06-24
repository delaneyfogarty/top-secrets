const { Router } = require('express');
const authenticate = require('../middleware/authenticate');
const Secret = require('../models/Secret');

module.exports = Router().get('/', authenticate, async (req, res, next) => {
  try {
    const secrets = await Secret.getAllSecrets();
    res.json(secrets);
  } catch (error) {
    next(error);
  }
});
