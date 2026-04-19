{
  uses_user_defaults: true,
  want_cursor: false,
  want_claude: false,
  want_codeql: false,
  want_tests: false,
  project_type: 'other',
  project_name: 'Tatsh',
  version: '0.0.0',
  description: 'Profile project.',
  keywords: ['github', 'profile', 'tatsh'],
  want_main: false,
  package_json+: {
    scripts: {
      'check-formatting': "prettier -c . && markdownlint-cli2  --config package.json --configPointer /markdownlint-cli2",
      'check-spelling': "cspell --no-progress './**/*'  './**/.*'",
      format: "prettier -w . && markdownlint-cli2  --config package.json --configPointer /markdownlint-cli2 --fix",
      qa: 'yarn check-spelling && yarn check-formatting',
    },
  },
  prettierignore+: ['github-metrics.svg'],
}
