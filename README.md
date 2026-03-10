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
 
 ## 📂 Structure du projet (Feature-First)
 
 ```bash
 src/ 
 ├── assets/               # images, icons, fonts 
 ├── components/           # composants réutilisables (Button, Input, etc.)
 ├── features/             # SLICES MÉTIER (le cœur de l'app)
 │   ├── auth/             # Login, Register, OTP
 │   ├── dashboard/        # Vue d'ensemble, notifications
 │   ├── questionnaire/    # Formulaire financier, étapes
 │   ├── upload/           # Gestion des documents, drag & drop
 │   ├── recommendations/  # Algorithme de suggestion, affichage résultats
 │   └── payments/         # Intégration paiement mobile/carte
 ├── hooks/                # hooks custom partagés
 ├── lib/                  # configuration des libs tierces (axios, dexie, i18n)
 ├── pages/                # assemblage des features pour le routing
 ├── services/             # logique métier pure (hors React)
 ├── stores/               # stores globaux (Zustand)
 ├── types/                # définitions TypeScript globales
 └── App.tsx / main.tsx
 ```
 
 ## 🌿 Branches actives (Convention de nommage)
 
 - `main`                → **Production** (stable, déployable)
 - `dev`                 → **Intégration** (toutes les features fusionnées ici)
 - `feature/edy-landing-auth-dashboard`          → Landing page, Auth, Dashboard
 - `feature/brady-questionnaire-upload-offline`  → Questionnaire, Upload, Offline mode
 - `feature/barry-recos-suivi-paiements-chat`    → Recommandations, Suivi, Paiements
 - `feature/shared-ui-i18n-accessibility`        → Composants UI partagés, i18n, A11y