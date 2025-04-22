require("dotenv").config();

const apiKeyMiddleware = (req, res, next) => {
    const clientKey = req.headers['x-api-key'];
    const serverKey = process.env.API_KEY;
  
    if (!clientKey) {
      return res.status(403).json({ error: 'Chave de API ausente' });
    }
    if (clientKey !== serverKey) {
        return res.status(403).json({ error: 'Chave de API invalida' });
    }
   
    next();
  };
  
  module.exports = apiKeyMiddleware;
  