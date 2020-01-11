exports.handler = (event, context, callback) => {
    console.log('Hello, lambda!');
    callback(null, 'success');
}