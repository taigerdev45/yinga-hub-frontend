# Yinga Hub – Frontend (PWA) 
 
 Application Progressive Web App (PWA) pour l'orientation budgétaire et l'inscription universitaire en Chine destinée aux étudiants africains. 
 
 ## 🎯 Objectif du projet 
 
 Digitaliser et rendre accessible le processus d'orientation et d'inscription en Chine avec un focus fort sur : 
 - **Recommandations exclusivement budgétaires** (basées sur un questionnaire financier) 
 - **Expérience offline-first** (questionnaire + drafts + synchronisation automatique) 
 - **Simplicité et résilience** sur connexions instables (Afrique subsaharienne) 
 - **Accessibilité** WCAG 2.1+ et performance < 2 s 
 
 **Pas d'applications natives** — uniquement une PWA installable via navigateur. 
 
 ## ⚡ Parcours utilisateur principal (Étudiant) 
 
 1. Landing page responsive → prompt d'installation PWA  
 2. Création de compte / Connexion (email / téléphone + OTP)  
 3. Dashboard personnel (avancement dossier + notifications push web)  
 4. **Questionnaire financier** (offline via IndexedDB / Dexie.js)  
 5. Upload documents (drag & drop + resumable via Supabase Storage)  
 6. Recommandations budgétaires (top 5 villes/universités – scores % + coûts estimés)  
 7. Suivi dossier (timeline realtime) + messagerie interne + paiements  
 8. Déconnexion 
 
 **Points UX critiques**  
 - Progress bars partout  
 - Toasts & notifications push web  
 - Alertes offline + synchronisation automatique  
 - Taux de conversion cible : > 70 % 
 
 ## 🛠 Stack technique (2026) 
 
 - **Framework** : React 19  
 - **Build & PWA** : Vite + vite-plugin-pwa (Workbox)  
 - **Stockage offline** : IndexedDB via Dexie.js  
 - **Synchronisation** : Background Sync API (Workbox-background-sync)  
 - **Requête API** : Apollo Client + GraphQL (Supabase pg_graphql)  
 - **État global** : Zustand (léger)  
 - **UI** : Tailwind CSS + Headless UI / Radix UI  
 - **Internationalisation** : i18next (fr / en / zh)  
 - **Tests** : Vitest + Testing Library  
 - **Qualité** : ESLint + Prettier + Stylelint + Husky + lint-staged  
 
 ## Structure des dossiers (conventionnelle)          
 src/ 
 ├── assets/               # images, icons, fonts 
 ├── components/           # composants réutilisables 
 ├── features/             # slices métier (auth, questionnaire, dashboard, etc.) 
 │   ├── auth/ 
 │   ├── dashboard/ 
 │   ├── questionnaire/ 
 │   ├── upload/ 
 │   ├── recommendations/ 
 │   └── payments/ 
 ├── hooks/                # hooks custom 
 ├── lib/                  # utils, api client, dexie config 
 ├── pages/                # pages principales (route-based) 
 ├── services/             # logique métier non-UI 
 ├── stores/               # Zustand stores 
 ├── types/                # types TypeScript globaux 
 └── App.tsx / main.tsx