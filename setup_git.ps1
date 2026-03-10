Remove-Item -Recurse -Force .git -ErrorAction SilentlyContinue
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/taigerdev45/yinga-hub-frontend.git
git branch -M main
git push -f origin main
git push -f origin main:dev
git push -f origin main:feature/edy-landing-auth-dashboard
git push -f origin main:feature/brady-questionnaire-upload-offline
git push -f origin main:feature/barry-recos-suivi-paiements-chat
git push -f origin main:feature/shared-ui-i18n-accessibility