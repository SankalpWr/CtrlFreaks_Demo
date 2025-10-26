# Jenkins Sample Pipeline (Shell)

A tiny, dependency-free project you can push to GitHub to demo Jenkins + webhooks.

## What it does
- **Build:** runs a small shell script to create `dist/hello.txt`
- **Test:** verifies the script prints `Hello, Jenkins!`
- **Jenkinsfile:** already configured for a simple 2-stage pipeline

## Local run
```bash
chmod +x build.sh tests/run_tests.sh src/hello.sh
./build.sh
./tests/run_tests.sh
```

## Push to your GitHub
```bash
git init
git add .
git commit -m "Initial commit: Jenkins sample pipeline"
git branch -M main
git remote add origin <YOUR-REPO-URL>
git push -u origin main
```

In Jenkins, create a **Pipeline** or **Multibranch Pipeline** job that points at your GitHub repo.
Use **Script Path: Jenkinsfile** (root of repo). Enable the **GitHub hook trigger** in job settings and add a webhook in your repo pointing to `https://<your-jenkins>/github-webhook/`.
