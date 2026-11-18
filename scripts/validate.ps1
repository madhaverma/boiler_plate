$ErrorActionPreference = "Stop"

$root = Resolve-Path (Join-Path $PSScriptRoot "..")
Set-Location $root

$requiredFiles = @(
    "AGENTS.md",
    "README.md",
    "CLAUDE.md",
    "GEMINI.md",
    ".github/copilot-instructions.md",
    ".ai/PROJECT.md",
    ".ai/CURRENT.md",
    ".ai/DECISIONS.md",
    ".ai/ARCHITECTURE.md",
    ".ai/TASKS.md",
    ".ai/agents/README.md",
    ".ai/agents/HANDOFF.md",
    ".agents/skills/README.md",
    "docs/external-skills.md",
    "docs/design-workflow.md"
)

$failures = @()

foreach ($file in $requiredFiles) {
    if (-not (Test-Path -LiteralPath $file -PathType Leaf)) {
        $failures += "Missing required file: $file"
    }
}

$skillFiles = Get-ChildItem ".agents\skills" -Filter "SKILL.md" -File -Recurse
if ($skillFiles.Count -eq 0) {
    $failures += "No Agent Skill entry points found"
}

foreach ($skillFile in $skillFiles) {
    $content = Get-Content -LiteralPath $skillFile.FullName -Raw
    if ($content -notmatch '^(---|name\s*:)' ) {
        $failures += "Invalid or missing skill metadata: $($skillFile.FullName)"
    }
}

if (-not (Test-Path -LiteralPath "EXTERNAL_SKILL_VERSIONS.txt" -PathType Leaf)) {
    $failures += "Missing external skill version metadata"
}

if ($failures.Count -gt 0) {
    $failures | ForEach-Object { Write-Error $_ }
    exit 1
}

Write-Host "Validation passed."
Write-Host "Required files: $($requiredFiles.Count)"
Write-Host "Skill entry points: $($skillFiles.Count)"
