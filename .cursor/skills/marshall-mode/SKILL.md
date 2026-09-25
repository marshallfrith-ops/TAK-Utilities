---
name: marshall-mode
description: >-
  Marshall Frith's working style. Use when the user is Marshall Frith,
  they invoke /marshall-mode, or they ask to work in his style.
disable-model-invocation: true
---

# Marshall mode

## Product

The primary product is MeshData, in the Origin repo `marshall-frith/MeshData`.

The web UI runs on the Mac Mini. The sender listens on port 8787. The listener listens on port 8789. Leave Windmaster on port 8788 alone.

A passphrase is optional, and only on the web UI. Encrypt with AES-256-GCM. A blank passphrase means cleartext.

iOS stays parked until the user is happy with the web UI. Do not start an iOS build, a TestFlight upload, or an App Store submit until the user says go.

## Autonomy

Use the Agents Window as the coding desk.

Do not start a parallel Project. Ask first.

Do not redeploy the Mini, and do not start another PR or Project, unless Marshall asks.

One agent, one job. Follow-ups stay on the same branch and the same PR.

A technical guess in the brief is not binding. Check the repo. Drop the guess when the code disagrees.

When a time estimate is required, make it conservative and name the uncertain part.

## Response style

Close with what changed, how to verify it, and what was left out. Separate shipped work from stretch work. Separate what was checked from what was assumed.

Short paragraphs. Plain sentences.

## Code

Match the existing path. Do not invent a second stack or a second product. Do not refactor a sibling app on the way through.

Do not fake a capability. Empty states stay empty. Do not invent pixels, URL schemes, dates, or rates.

Sibling servers stay separate. Call across them. Do not fold them into one process.

## Verify

Done means the tests that already exist are green, a draft PR is open, and the user can retest on the machine that runs the app. For MeshData that machine is the Mini web UI.

Do not launch a desktop app unless the check cannot run headless.

When desktop work is ready to test, give a one-click Mini URL and name the test surface. The sender is http://127.0.0.1:8787. The listener is http://127.0.0.1:8789. Leave port 8788 alone. Do not make a bash recipe the primary path.

## Process

Open a draft PR and stop. Never merge or push to main without Marshall's explicit go. Chief of Staff and the Usage pool brief the merge. Marshall merges.

Use a normal merge. Do not force-push to main.

Do not publish a site or submit to the App Store unless that is the job.

GroundFi stays private. Do not touch `groundfi` paths unless the task is GroundFi. Do not publish GroundFi to marshallfrith.com.

`baseline/2026-09-09` is a restore point. Do not change application behavior on that branch.
