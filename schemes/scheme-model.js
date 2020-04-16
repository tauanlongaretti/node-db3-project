const db = require('../data/dbConfig.js')

function find() {
    return db('schemes');
}

function findById(id) {
    return db('schemes')
        .where({id})
        .first();
}

module.exports = {
    find,
    findById,
    // findSteps,
    // add,
    // addStep,
    // update,
    // remove
};