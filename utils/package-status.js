// 📦 Package Status Table
// Generates a markdown table listing packages and their versions.

const fs = require('fs');
const path = require('path');

const packagesDir = path.join(__dirname, '..', 'packages');
if (!fs.existsSync(packagesDir)) {
  console.log('No packages directory');
  process.exit(0);
}

const entries = fs
  .readdirSync(packagesDir, { withFileTypes: true })
  .filter((dirent) => dirent.isDirectory())
  .map((dirent) => dirent.name);

const rows = entries
  .map((name) => {
    const pkgPath = path.join(packagesDir, name, 'package.json');
    if (!fs.existsSync(pkgPath)) return null;
    const pkg = JSON.parse(fs.readFileSync(pkgPath));
    const stats = fs.statSync(pkgPath);
    const updated = stats.mtime.toISOString().split('T')[0];
    return `| ${name} | ${pkg.version} | ${updated} |`;
  })
  .filter(Boolean);

console.log('| Package | Version | Last Updated |');
console.log('|---------|---------|--------------|');
rows.forEach((r) => console.log(r));
