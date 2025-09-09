module.exports = {
  apps: [
    {
      name: 'node-app',
      script: './src/index.js',
      instances: 'max', // Gunakan semua core CPU
      exec_mode: 'cluster', // Mode cluster
      env: {
        NODE_ENV: 'production'
      }
    }
  ]
};
