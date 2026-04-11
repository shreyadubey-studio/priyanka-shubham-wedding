<!DOCTYPE html>

<html lang="hi">
<head>
  <meta charset="UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Priyanka & Shubham Vivah 🌼</title>
  <link href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,600;0,700;1,300;1,400;1,600&family=Noto+Sans+Devanagari:wght@300;400;500;600&family=Outfit:wght@300;400;500;600&display=swap" rel="stylesheet"/>
  <style>
    :root {
      --gold: #C8820A;
      --gold-deep: #8B5500;
      --gold-rich: #E0A020;
      --gold-light: #F5C842;
      --gold-pale: #FFF8E0;
      --gold-soft: #FAEAA0;
      --amber: #D4560A;
      --amber-soft: #FFE8D0;
      --dark: #18080A;
      --dark-mid: #2E1408;
      --cream: #FDFAF0;
      --warm-white: #FFFEF5;
      --text: #1A0E00;
      --muted: #7A5C30;
      --line: #EDD9A0;
      --shadow: 0 8px 32px rgba(200,130,10,0.10);
      --pending: #D4A020;
      --approved: #2A7A3A;
      --rejected: #8B2020;
    }

```
* { box-sizing: border-box; margin: 0; padding: 0; -webkit-tap-highlight-color: transparent; }

body {
  font-family: 'Noto Sans Devanagari', 'Outfit', sans-serif;
  background: var(--cream);
  color: var(--text);
  min-height: 100vh;
}

/* ── HERO ── */
.hero {
  min-height: 100vh;
  background:
    radial-gradient(ellipse at 15% 85%, rgba(200,130,10,0.28) 0%, transparent 50%),
    radial-gradient(ellipse at 85% 15%, rgba(212,86,10,0.18) 0%, transparent 45%),
    linear-gradient(160deg, #18080A 0%, #2E1408 30%, #1A0A00 65%, #0A0400 100%);
  display: flex; flex-direction: column;
  align-items: center; justify-content: center;
  text-align: center; padding: 40px 24px 120px;
  position: relative; overflow: hidden;
}

.hero::before {
  content: '';
  position: absolute; inset: 0;
  background-image:
    radial-gradient(circle, rgba(200,130,10,0.07) 1px, transparent 1px),
    radial-gradient(circle, rgba(245,200,66,0.03) 1px, transparent 1px);
  background-size: 40px 40px, 20px 20px;
  background-position: 0 0, 10px 10px;
  pointer-events: none;
}

.petal {
  position: absolute; pointer-events: none;
  animation: floatPetal 9s ease-in-out infinite; opacity: 0.09;
}
.petal:nth-child(1) { top:8%; left:7%; font-size:44px; animation-delay:0s; }
.petal:nth-child(2) { top:15%; right:9%; font-size:28px; animation-delay:1.8s; }
.petal:nth-child(3) { bottom:25%; left:5%; font-size:36px; animation-delay:3.2s; }
.petal:nth-child(4) { bottom:18%; right:7%; font-size:40px; animation-delay:5s; }
.petal:nth-child(5) { top:48%; left:2%; font-size:22px; animation-delay:2.4s; }
.petal:nth-child(6) { top:32%; right:3%; font-size:26px; animation-delay:6.5s; }

@keyframes floatPetal {
  0%,100%{transform:translateY(0) rotate(0deg);opacity:0.09;}
  50%{transform:translateY(-18px) rotate(14deg);opacity:0.17;}
}

.hero-tag {
  font-size:10px; font-weight:600; letter-spacing:0.28em;
  text-transform:uppercase; color:var(--gold-light); opacity:0.85;
  margin-bottom:18px; animation:fadeUp 0.8s ease both;
  font-family:'Outfit',sans-serif;
}

.hero-names {
  font-family:'Cormorant Garamond',serif;
  font-size:clamp(52px,14vw,110px);
  font-weight:300; line-height:0.92;
  animation:fadeUp 0.9s 0.1s ease both;
}

.bride { color:var(--gold-light); }
.groom { color:#FFE8C0; }

.hero-amp {
  display:block; font-family:'Cormorant Garamond',serif;
  font-size:clamp(30px,8vw,62px);
  color:var(--gold-rich); font-style:italic; margin:4px 0;
}

.hero-ornament {
  display:flex; align-items:center; gap:12px;
  margin:18px 0; animation:fadeUp 1s 0.2s ease both;
}

.orn-line { height:1px; width:50px; background:linear-gradient(90deg,transparent,var(--gold-rich)); }
.orn-line.r { background:linear-gradient(90deg,var(--gold-rich),transparent); }
.orn-gem { font-size:15px; color:var(--gold-rich); }

.hero-date {
  font-family:'Cormorant Garamond',serif;
  font-size:17px; color:var(--gold-light);
  letter-spacing:0.08em; font-style:italic;
  animation:fadeUp 1s 0.3s ease both;
}

.hero-location {
  font-size:11px; color:rgba(255,220,120,0.45);
  margin-top:7px; letter-spacing:0.16em; text-transform:uppercase;
  animation:fadeUp 1s 0.4s ease both; font-family:'Outfit',sans-serif;
}

/* Explore button - clearly visible above bottom */
.hero-explore {
  position:absolute; bottom:52px; left:50%; transform:translateX(-50%);
  display:flex; flex-direction:column; align-items:center; gap:8px;
  animation:fadeUp 1s 0.6s ease both; cursor:pointer;
  background:rgba(200,130,10,0.15); border:1px solid rgba(200,130,10,0.4);
  border-radius:50px; padding:12px 24px;
  backdrop-filter:blur(8px);
  transition:background 0.2s;
}

.hero-explore:hover { background:rgba(200,130,10,0.25); }

.hero-explore-text {
  font-size:12px; color:var(--gold-light);
  font-family:'Outfit',sans-serif; font-weight:500;
  letter-spacing:0.06em;
}

.hero-explore-hint {
  font-size:11px; color:rgba(255,220,120,0.55);
  font-family:'Noto Sans Devanagari',sans-serif;
}

.scroll-arrow { font-size:16px; color:var(--gold-rich); animation:bounce 2s ease infinite; }

@keyframes bounce { 0%,100%{transform:translateY(0);} 50%{transform:translateY(4px);} }

/* ── NAV ── */
.nav {
  position:sticky; top:0; z-index:100;
  background:rgba(24,8,10,0.97); backdrop-filter:blur(20px);
  border-bottom:1px solid rgba(200,130,10,0.22);
  padding:0 12px; display:flex;
  align-items:center; justify-content:space-between; height:52px;
}

.nav-brand {
  font-family:'Cormorant Garamond',serif;
  font-size:18px; color:var(--gold-light); font-style:italic;
  white-space:nowrap;
}

.nav-links { display:flex; gap:2px; }

.nav-links button {
  background:none; border:none; color:rgba(255,220,120,0.4);
  font-family:'Noto Sans Devanagari',sans-serif; font-size:11px; font-weight:500;
  padding:6px 8px; border-radius:8px; cursor:pointer;
  transition:color 0.2s, background 0.2s;
}

.nav-links button:hover, .nav-links button.active {
  color:var(--gold-light); background:rgba(200,130,10,0.15);
}

/* ── SECTIONS ── */
.section {
  display:none; animation:fadeUp 0.4s ease both;
  max-width:720px; margin:0 auto; padding:28px 16px 90px;
}
.section.visible { display:block; }

.sec-tag {
  font-size:10px; font-weight:600; letter-spacing:0.22em;
  text-transform:uppercase; color:var(--gold); margin-bottom:6px;
  font-family:'Outfit',sans-serif;
}

.sec-title {
  font-family:'Cormorant Garamond',serif;
  font-size:clamp(28px,7vw,46px); font-weight:300;
  line-height:1.1; margin-bottom:5px;
}
.sec-title em { font-style:italic; color:var(--amber); }

.sec-sub { color:var(--muted); font-size:13px; line-height:1.65; margin-bottom:22px; }

/* ── TIMELINE ── */
.timeline { display:flex; flex-direction:column; position:relative; }

.timeline::before {
  content:''; position:absolute; left:20px; top:0; bottom:0; width:1px;
  background:linear-gradient(180deg,var(--gold-rich),var(--gold),rgba(200,130,10,0.1));
}

.t-item { display:flex; gap:14px; padding-bottom:20px; position:relative; }

.t-dot {
  width:40px; height:40px; border-radius:50%;
  background:var(--warm-white); border:2px solid var(--gold-rich);
  display:flex; align-items:center; justify-content:center;
  font-size:16px; flex-shrink:0; position:relative; z-index:1;
  box-shadow:0 0 0 4px var(--cream), 0 0 12px rgba(200,130,10,0.18);
}

.t-body {
  background:var(--warm-white); border:1px solid var(--line);
  border-left:3px solid var(--gold-soft); border-radius:16px;
  padding:13px 15px; flex:1; box-shadow:var(--shadow);
}

.t-name {
  font-family:'Cormorant Garamond',serif;
  font-size:19px; font-weight:600; margin-bottom:5px; color:var(--dark-mid);
}

.t-name-hindi { font-size:13px; color:var(--muted); margin-bottom:6px; }

.t-meta { display:flex; flex-wrap:wrap; gap:5px; margin-bottom:7px; }

.t-pill {
  font-size:11px; padding:3px 9px; border-radius:999px;
  background:var(--gold-pale); color:var(--gold-deep);
  font-weight:600; border:1px solid var(--gold-soft);
  font-family:'Outfit',sans-serif;
}

.t-pill.amber { background:var(--amber-soft); color:var(--amber); border-color:#F5C0A0; }
.t-pill.coming { background:#F5F5F5; color:#999; border-color:#DDD; font-style:italic; }

.t-desc { font-size:12px; color:var(--muted); line-height:1.55; }

/* ── ROLES INTRO ── */
.roles-intro {
  background:linear-gradient(135deg,var(--dark) 0%,var(--dark-mid) 100%);
  border-radius:20px; padding:20px; color:white;
  margin-bottom:20px; position:relative; overflow:hidden;
  border:1px solid rgba(200,130,10,0.28);
}

.roles-intro::before {
  content:'◆'; position:absolute; right:14px; top:50%;
  transform:translateY(-50%); font-size:75px; opacity:0.06; color:var(--gold-light);
}

.roles-intro h3 {
  font-family:'Cormorant Garamond',serif; font-size:22px;
  font-weight:400; font-style:italic; margin-bottom:4px; color:var(--gold-light);
}

.roles-intro p { font-size:12px; opacity:0.7; line-height:1.6; }

/* ── ROLE CARDS ── */
.role-category { margin-bottom:20px; }

.role-cat-title {
  font-size:10px; font-weight:600; letter-spacing:0.18em;
  text-transform:uppercase; color:var(--gold); padding:0 2px;
  margin-bottom:8px; font-family:'Outfit',sans-serif;
}

.role-grid { display:grid; grid-template-columns:1fr 1fr; gap:9px; }
@media(max-width:460px) { .role-grid { grid-template-columns:1fr; } }

.role-card {
  background:var(--warm-white); border:2px solid var(--line);
  border-radius:14px; padding:12px 14px; cursor:pointer;
  transition:border-color 0.2s, background 0.2s, transform 0.15s, box-shadow 0.2s;
  position:relative; user-select:none;
}

.role-card:hover { box-shadow:0 4px 14px rgba(200,130,10,0.1); }
.role-card:active { transform:scale(0.98); }
.role-card.selected { border-color:var(--gold-rich); background:var(--gold-pale); box-shadow:0 4px 14px rgba(200,130,10,0.16); }
.role-card.taken { opacity:0.38; cursor:not-allowed; pointer-events:none; }

.role-check {
  position:absolute; top:9px; right:10px;
  width:20px; height:20px; border-radius:50%;
  border:2px solid var(--line);
  display:flex; align-items:center; justify-content:center;
  font-size:10px; transition:all 0.2s;
}

.role-card.selected .role-check { background:var(--gold-rich); border-color:var(--gold-rich); color:white; }

.role-icon { font-size:20px; margin-bottom:6px; }

.role-name {
  font-family:'Cormorant Garamond',serif;
  font-size:15px; font-weight:600;
  margin-bottom:2px; padding-right:22px; color:var(--dark-mid);
}

.role-desc { font-size:11px; color:var(--muted); line-height:1.4; }
.role-taken-badge { font-size:10px; color:var(--gold-deep); font-weight:600; margin-top:4px; }

/* ── APPROVAL STATUS BADGE ── */
.status-badge {
  display:inline-flex; align-items:center; gap:4px;
  font-size:10px; font-weight:600; padding:3px 8px;
  border-radius:999px; margin-top:6px;
  font-family:'Outfit',sans-serif; letter-spacing:0.04em;
}

.status-pending { background:#FFF3CD; color:#856404; border:1px solid #FFE08A; }
.status-approved { background:#D4EDDA; color:#155724; border:1px solid #B8DEC5; }
.status-rejected { background:#F8D7DA; color:#721C24; border:1px solid #EFB8BD; }

/* ── CLAIM FORM ── */
.claim-form {
  background:var(--warm-white); border:1px solid var(--line);
  border-top:3px solid var(--gold-rich); border-radius:20px;
  padding:18px; margin-top:20px; box-shadow:var(--shadow);
}

.claim-form h3 {
  font-family:'Cormorant Garamond',serif; font-size:20px;
  font-weight:400; font-style:italic; margin-bottom:4px; color:var(--dark-mid);
}

.claim-form p { font-size:12px; color:var(--muted); margin-bottom:14px; line-height:1.5; }

.form-input {
  width:100%; border:1.5px solid var(--line); background:var(--cream);
  border-radius:11px; padding:10px 12px; font-size:13px;
  font-family:'Noto Sans Devanagari','Outfit',sans-serif;
  color:var(--text); outline:none; margin-bottom:9px;
  transition:border-color 0.2s;
}

.form-input:focus { border-color:var(--gold-rich); box-shadow:0 0 0 3px rgba(200,130,10,0.1); }

.selected-preview {
  background:var(--gold-pale); border:1px solid var(--gold-soft);
  border-radius:11px; padding:10px 12px; margin-bottom:10px;
  font-size:12px; color:var(--gold-deep); min-height:40px;
  font-weight:500; line-height:1.5;
}

.btn-primary {
  width:100%;
  background:linear-gradient(135deg,var(--dark-mid),var(--gold-deep));
  color:var(--gold-light); border:none; border-radius:11px; padding:12px;
  font-family:'Noto Sans Devanagari','Outfit',sans-serif;
  font-size:13px; font-weight:600; cursor:pointer;
  transition:opacity 0.2s, transform 0.15s;
  box-shadow:0 8px 18px rgba(24,8,10,0.28);
}

.btn-primary:hover { opacity:0.92; }
.btn-primary:active { transform:scale(0.99); }

.btn-secondary {
  width:100%; background:var(--gold-pale);
  color:var(--gold-deep); border:1px solid var(--gold-soft);
  border-radius:11px; padding:11px;
  font-family:'Noto Sans Devanagari','Outfit',sans-serif;
  font-size:13px; font-weight:600; cursor:pointer; margin-top:8px;
  transition:background 0.2s;
}

.btn-secondary:hover { background:var(--gold-soft); }

/* ── ADD ROLE BOX ── */
.add-role-box {
  background:var(--warm-white); border:2px dashed var(--line);
  border-radius:16px; padding:16px; margin-bottom:20px;
}

.add-role-box h4 {
  font-family:'Cormorant Garamond',serif; font-size:18px;
  font-weight:400; color:var(--dark-mid); margin-bottom:3px;
}

.add-role-box p { font-size:12px; color:var(--muted); margin-bottom:12px; }

.add-role-row { display:flex; gap:7px; flex-wrap:wrap; }

.add-role-input {
  flex:1; min-width:110px; border:1.5px solid var(--line);
  background:var(--cream); border-radius:10px; padding:9px 11px;
  font-size:13px; font-family:'Noto Sans Devanagari','Outfit',sans-serif;
  color:var(--text); outline:none; transition:border-color 0.2s;
}

.add-role-input:focus { border-color:var(--gold-rich); }

.btn-add {
  background:linear-gradient(135deg,var(--gold-deep),var(--gold));
  color:white; border:none; border-radius:10px;
  padding:9px 14px; font-family:'Noto Sans Devanagari','Outfit',sans-serif;
  font-size:13px; font-weight:600; cursor:pointer; white-space:nowrap;
  transition:opacity 0.2s;
}

.btn-add:hover { opacity:0.9; }

/* ── RESULTS ── */
.results-header {
  background:linear-gradient(135deg,var(--dark),var(--dark-mid));
  border-radius:16px; padding:16px 18px; margin-bottom:14px;
  border:1px solid rgba(200,130,10,0.2);
}

.results-header h3 {
  font-family:'Cormorant Garamond',serif; font-size:20px;
  font-weight:400; color:var(--gold-light); font-style:italic; margin-bottom:2px;
}

.results-header p { font-size:12px; color:rgba(255,220,120,0.45); }

.assigned-list { display:flex; flex-direction:column; gap:9px; }

.assigned-item {
  background:var(--warm-white); border:1px solid var(--line);
  border-radius:13px; padding:12px 14px;
  display:flex; align-items:flex-start; gap:12px;
  box-shadow:0 2px 8px rgba(200,130,10,0.05);
}

.assigned-avatar {
  width:38px; height:38px; border-radius:50%;
  background:linear-gradient(135deg,var(--gold-deep),var(--gold-rich));
  color:white; display:flex; align-items:center; justify-content:center;
  font-family:'Cormorant Garamond',serif; font-size:17px; font-weight:700;
  flex-shrink:0; border:2px solid var(--gold-soft);
}

.assigned-info { flex:1; }
.assigned-name { font-weight:600; font-size:14px; margin-bottom:2px; color:var(--dark-mid); }
.assigned-role { font-size:11px; color:var(--muted); line-height:1.4; margin-bottom:4px; }

/* ── APPROVAL ADMIN ── */
.admin-section {
  background:var(--warm-white); border:1px solid var(--line);
  border-top:3px solid var(--amber); border-radius:16px;
  padding:16px; margin-bottom:16px;
}

.admin-section h4 {
  font-family:'Cormorant Garamond',serif; font-size:18px;
  font-weight:600; color:var(--dark-mid); margin-bottom:4px;
}

.admin-section p { font-size:12px; color:var(--muted); margin-bottom:14px; }

.admin-password-row { display:flex; gap:8px; margin-bottom:14px; }

.approval-item {
  background:var(--cream); border:1px solid var(--line);
  border-radius:12px; padding:12px; margin-bottom:8px;
}

.approval-name { font-weight:600; font-size:13px; color:var(--dark-mid); margin-bottom:2px; }
.approval-roles { font-size:11px; color:var(--muted); margin-bottom:8px; }

.approval-btns { display:flex; gap:8px; }

.btn-approve {
  flex:1; background:linear-gradient(135deg,#1A5C2A,#2A7A3A);
  color:white; border:none; border-radius:9px; padding:9px;
  font-family:'Noto Sans Devanagari','Outfit',sans-serif;
  font-size:12px; font-weight:600; cursor:pointer;
}

.btn-reject {
  flex:1; background:linear-gradient(135deg,#6B1A1A,#8B2A2A);
  color:white; border:none; border-radius:9px; padding:9px;
  font-family:'Noto Sans Devanagari','Outfit',sans-serif;
  font-size:12px; font-weight:600; cursor:pointer;
}

/* ── VOTING ── */
.vote-card {
  background:var(--warm-white); border:1px solid var(--line);
  border-radius:14px; padding:14px; margin-bottom:10px;
}

.vote-card-name { font-weight:600; font-size:14px; color:var(--dark-mid); margin-bottom:2px; }
.vote-card-role { font-size:11px; color:var(--muted); margin-bottom:8px; }

.vote-bar-wrap { background:#F0E8D0; border-radius:99px; height:6px; margin-bottom:6px; }
.vote-bar { height:6px; border-radius:99px; background:linear-gradient(90deg,var(--gold-deep),var(--gold-rich)); transition:width 0.4s; }

.vote-count { font-size:11px; color:var(--muted); margin-bottom:8px; font-family:'Outfit',sans-serif; }

.btn-vote {
  background:var(--gold-pale); color:var(--gold-deep);
  border:1px solid var(--gold-soft); border-radius:9px;
  padding:7px 14px; font-size:12px; font-weight:600;
  cursor:pointer; font-family:'Noto Sans Devanagari','Outfit',sans-serif;
  transition:background 0.2s;
}

.btn-vote:hover { background:var(--gold-soft); }
.btn-vote.voted { background:var(--gold-rich); color:white; border-color:var(--gold-rich); }

/* ── SUGGESTIONS ── */
.suggestion-card {
  background:var(--warm-white); border:1px solid var(--line);
  border-radius:14px; padding:14px; margin-bottom:10px;
  box-shadow:0 2px 8px rgba(200,130,10,0.05);
}

.suggestion-header {
  display:flex; align-items:center; gap:10px; margin-bottom:8px;
}

.suggestion-avatar {
  width:34px; height:34px; border-radius:50%;
  background:linear-gradient(135deg,var(--gold-deep),var(--gold-rich));
  color:white; display:flex; align-items:center; justify-content:center;
  font-family:'Cormorant Garamond',serif; font-size:16px; font-weight:700;
  flex-shrink:0;
}

.suggestion-meta { flex:1; }
.suggestion-author { font-weight:600; font-size:13px; color:var(--dark-mid); }
.suggestion-time { font-size:10px; color:var(--muted); font-family:'Outfit',sans-serif; }

.suggestion-text { font-size:13px; color:var(--text); line-height:1.55; margin-bottom:8px; }

.suggestion-tags {
  display:flex; flex-wrap:wrap; gap:5px;
}

.tag-pill {
  font-size:11px; padding:3px 8px; border-radius:999px;
  background:var(--gold-pale); color:var(--gold-deep);
  border:1px solid var(--gold-soft); font-weight:600;
  font-family:'Outfit',sans-serif;
}

.suggestion-form {
  background:var(--warm-white); border:1px solid var(--line);
  border-top:3px solid var(--gold-rich); border-radius:16px;
  padding:16px; margin-bottom:16px;
}

.suggestion-form h4 {
  font-family:'Cormorant Garamond',serif; font-size:18px;
  font-weight:400; color:var(--dark-mid); margin-bottom:3px;
}

.suggestion-form p { font-size:12px; color:var(--muted); margin-bottom:12px; }

.tag-input-wrap { position:relative; margin-bottom:9px; }

.tag-suggestions {
  position:absolute; top:100%; left:0; right:0; z-index:50;
  background:white; border:1px solid var(--line);
  border-radius:10px; box-shadow:0 8px 20px rgba(0,0,0,0.1);
  display:none;
}

.tag-suggestions.show { display:block; }

.tag-suggestion-item {
  padding:9px 12px; font-size:13px; cursor:pointer;
  border-bottom:1px solid #F5F0E8;
  transition:background 0.15s;
}

.tag-suggestion-item:hover { background:var(--gold-pale); }
.tag-suggestion-item:last-child { border-bottom:none; }

.added-tags {
  display:flex; flex-wrap:wrap; gap:5px; margin-bottom:9px; min-height:10px;
}

.added-tag {
  font-size:11px; padding:4px 9px; border-radius:999px;
  background:var(--dark); color:var(--gold-light);
  font-weight:500; display:flex; align-items:center; gap:4px;
  cursor:pointer;
}

/* ── INFO ── */
.info-grid { display:grid; grid-template-columns:1fr 1fr; gap:10px; margin-bottom:12px; }
@media(max-width:460px) { .info-grid { grid-template-columns:1fr; } }

.info-card {
  background:var(--warm-white); border:1px solid var(--line);
  border-radius:16px; padding:14px;
  box-shadow:0 2px 8px rgba(200,130,10,0.05);
}

.info-card-icon { font-size:22px; margin-bottom:7px; }
.info-card-label {
  font-size:10px; font-weight:600; letter-spacing:0.14em;
  text-transform:uppercase; color:var(--gold); margin-bottom:3px;
  font-family:'Outfit',sans-serif;
}
.info-card-value {
  font-family:'Cormorant Garamond',serif; font-size:18px; font-weight:600;
  margin-bottom:3px; color:var(--dark-mid);
}
.info-card-sub { font-size:12px; color:var(--muted); line-height:1.5; }

.dress-card {
  background:linear-gradient(135deg,var(--dark) 0%,#3A1200 100%);
  border-radius:16px; padding:18px; margin-bottom:12px;
  border:1px solid rgba(200,130,10,0.22);
  position:relative; overflow:hidden;
}

.dress-card::after {
  content:'🌼✦'; position:absolute; right:12px; top:50%;
  transform:translateY(-50%); font-size:32px; opacity:0.13; letter-spacing:4px;
}

.dress-card .info-card-label { color:var(--gold-light); }
.dress-card .info-card-value { color:var(--gold-light); font-size:19px; }
.dress-card .info-card-sub { color:rgba(255,220,120,0.5); }

.checklist-card {
  background:var(--warm-white); border:1px solid var(--line);
  border-left:3px solid var(--gold-rich); border-radius:16px; padding:16px;
  margin-bottom:12px;
}

.checklist-card .info-card-label { color:var(--gold); }
.checklist-card .info-card-value { font-size:15px; margin-bottom:9px; color:var(--dark-mid); }
.checklist-card .info-card-sub { line-height:2.1; }

.link-card {
  background:linear-gradient(135deg,var(--dark),var(--dark-mid));
  border-radius:16px; padding:16px; margin-bottom:12px;
  border:1px solid rgba(200,130,10,0.2);
}

.link-card .info-card-label { color:var(--gold-light); }
.link-card .info-card-value { color:var(--gold-light); font-size:16px; margin-bottom:8px; }
.link-card .link-url {
  font-size:12px; color:var(--gold-rich);
  word-break:break-all; line-height:1.5;
  font-family:'Outfit',sans-serif;
}

.copy-btn {
  display:inline-block; margin-top:8px; padding:6px 14px;
  background:rgba(200,130,10,0.2); color:var(--gold-light);
  border:1px solid rgba(200,130,10,0.35); border-radius:8px;
  font-size:11px; font-weight:600; cursor:pointer;
  font-family:'Outfit',sans-serif; transition:background 0.2s;
}

.copy-btn:hover { background:rgba(200,130,10,0.35); }

/* ── SUCCESS ── */
.success-box {
  background:linear-gradient(135deg,var(--dark),#3A1800);
  border-radius:16px; padding:22px 18px; color:white;
  text-align:center; margin-top:12px; display:none;
  border:1px solid rgba(200,130,10,0.28);
}

.success-box.show { display:block; animation:fadeUp 0.4s ease; }

.success-box h3 {
  font-family:'Cormorant Garamond',serif; font-size:26px;
  font-weight:300; font-style:italic; margin:8px 0 5px; color:var(--gold-light);
}

.success-box p { font-size:13px; opacity:0.75; line-height:1.6; }

@keyframes fadeUp {
  from{opacity:0;transform:translateY(12px);}
  to{opacity:1;transform:translateY(0);}
}

/* ── BOTTOM NAV ── */
.bottom-nav {
  position:fixed; bottom:0; left:0; right:0; z-index:100;
  background:rgba(24,8,10,0.97); backdrop-filter:blur(20px);
  border-top:1px solid rgba(200,130,10,0.18);
  display:flex; padding:6px 6px 14px; gap:2px;
}

.bottom-nav button {
  flex:1; background:none; border:none; color:rgba(255,220,120,0.32);
  font-family:'Noto Sans Devanagari',sans-serif; font-size:9px; font-weight:500;
  padding:7px 3px; border-radius:10px; cursor:pointer;
  display:flex; flex-direction:column; align-items:center; gap:3px;
  transition:color 0.2s, background 0.2s;
}

.bottom-nav button .bn-icon { font-size:17px; }

.bottom-nav button.active {
  color:var(--gold-light); background:rgba(200,130,10,0.15);
}

.content-wrap { padding-bottom:70px; }

.divider {
  text-align:center; font-size:13px;
  letter-spacing:12px; opacity:0.2; margin:20px 0 16px; color:var(--gold);
}

.empty-state {
  text-align:center; padding:24px 14px;
  background:var(--warm-white); border:1px dashed var(--line);
  border-radius:14px; color:var(--muted); font-size:13px;
}

.pending-notice {
  background:#FFF8E0; border:1px solid var(--gold-soft);
  border-radius:12px; padding:11px 13px; margin-top:10px;
  font-size:12px; color:var(--gold-deep); line-height:1.55;
}
```

  </style>
</head>
<body>

<!-- HERO -->

<div class="hero" id="heroSection">
  <div class="petal">🌼</div>
  <div class="petal">✦</div>
  <div class="petal">🌸</div>
  <div class="petal">✦</div>
  <div class="petal">🌼</div>
  <div class="petal">◆</div>

  <div class="hero-tag">एक यादगार विवाह उत्सव</div>

  <div class="hero-names">
    <span class="bride">Priyanka</span>
    <span class="hero-amp">&amp;</span>
    <span class="groom">Shubham</span>
  </div>

  <div class="hero-ornament">
    <div class="orn-line"></div>
    <div class="orn-gem">◆</div>
    <div class="orn-line r"></div>
  </div>

  <div class="hero-date">१ – ३ जुलाई २०२५ · रायपुर</div>
  <div class="hero-location">✦ Royal Club, छत्तीसगढ़ ✦</div>

  <div class="hero-explore" onclick="showSection('events')">
    <div class="scroll-arrow">▾</div>
    <div class="hero-explore-text">Explore the Wedding</div>
    <div class="hero-explore-hint">विवरण के लिए यहाँ क्लिक करें</div>
  </div>
</div>

<!-- NAV -->

<div class="nav" id="mainNav" style="display:none;">
  <div class="nav-brand">Priyanka & Shubham</div>
  <div class="nav-links">
    <button onclick="showSection('events')" id="nav-events">कार्यक्रम</button>
    <button onclick="showSection('roles')" id="nav-roles">भूमिका</button>
    <button onclick="showSection('squad')" id="nav-squad">टीम</button>
    <button onclick="showSection('suggest')" id="nav-suggest">सुझाव</button>
    <button onclick="showSection('info')" id="nav-info">जानकारी</button>
  </div>
</div>

<div class="content-wrap">

  <!-- EVENTS -->

  <div class="section" id="sec-events">
    <div class="sec-tag">विवाह उत्सव</div>
    <div class="sec-title">सभी <em>कार्यक्रम</em></div>
    <div class="sec-sub">रायपुर, छत्तीसगढ़ में तीन दिनों के सात यादगार आयोजन।</div>

```
<div class="timeline">

  <div class="t-item">
    <div class="t-dot">💍</div>
    <div class="t-body">
      <div class="t-name">Engagement</div>
      <div class="t-name-hindi">सगाई</div>
      <div class="t-meta">
        <div class="t-pill coming">🕐 जल्द आ रहा है</div>
      </div>
      <div class="t-desc">उनके हमेशा की शुरुआत। तारीख जल्द घोषित होगी — नज़र रखें! 💍</div>
    </div>
  </div>

  <div class="t-item">
    <div class="t-dot">🌸</div>
    <div class="t-body">
      <div class="t-name">Mehndi Night</div>
      <div class="t-name-hindi">मेहंदी की शाम</div>
      <div class="t-meta">
        <div class="t-pill">📅 १ जुलाई</div>
        <div class="t-pill">🕖 शाम ७ – रात ११</div>
        <div class="t-pill amber">📍 शुभम के घर</div>
      </div>
      <div class="t-desc">संगीत, हँसी और नृत्य से भरी मेहंदी की सुहानी शाम!</div>
    </div>
  </div>

  <div class="t-item">
    <div class="t-dot">🌿</div>
    <div class="t-body">
      <div class="t-name">Haldi</div>
      <div class="t-name-hindi">हल्दी रस्म</div>
      <div class="t-meta">
        <div class="t-pill">📅 २ जुलाई</div>
        <div class="t-pill">🕚 सुबह ११ – दोपहर २</div>
        <div class="t-pill amber">📍 Royal Club, रायपुर</div>
      </div>
      <div class="t-desc">पवित्र हल्दी की रस्म — चचेरे भाई-बहन मिलकर खुशी से हल्दी लगाएं!</div>
    </div>
  </div>

  <div class="t-item">
    <div class="t-dot">🎉</div>
    <div class="t-body">
      <div class="t-name">Sangeet</div>
      <div class="t-name-hindi">संगीत समारोह</div>
      <div class="t-meta">
        <div class="t-pill">📅 २ जुलाई</div>
        <div class="t-pill">🕔 शाम ५ – रात ८</div>
        <div class="t-pill amber">📍 Royal Club, रायपुर</div>
      </div>
      <div class="t-desc">नृत्य प्रदर्शन और उत्सव की भव्य शाम। भाई-बहनों, यह आपकी रात है! 🎤</div>
    </div>
  </div>

  <div class="t-item">
    <div class="t-dot">🐎</div>
    <div class="t-body">
      <div class="t-name">Baraat</div>
      <div class="t-name-hindi">बारात</div>
      <div class="t-meta">
        <div class="t-pill">📅 ३ जुलाई</div>
        <div class="t-pill">🕓 शाम ४ – ६</div>
        <div class="t-pill amber">📍 Royal Club, रायपुर</div>
      </div>
      <div class="t-desc">भव्य बारात — ढोल, नृत्य और पूरी ऊर्जा के साथ!</div>
    </div>
  </div>

  <div class="t-item">
    <div class="t-dot">🔥</div>
    <div class="t-body">
      <div class="t-name">Vivah</div>
      <div class="t-name-hindi">विवाह संस्कार</div>
      <div class="t-meta">
        <div class="t-pill">📅 ३ जुलाई</div>
        <div class="t-pill">🕖 रात ७ – ११</div>
        <div class="t-pill amber">📍 Royal Club, रायपुर</div>
      </div>
      <div class="t-desc">सात फेरों की पावन रस्म — जीवन भर का यादगार पल। ✨</div>
    </div>
  </div>

  <div class="t-item">
    <div class="t-dot">🥂</div>
    <div class="t-body">
      <div class="t-name">Reception</div>
      <div class="t-name-hindi">स्वागत समारोह</div>
      <div class="t-meta">
        <div class="t-pill">📅 ३ जुलाई</div>
        <div class="t-pill">🕖 रात ७ – ११</div>
        <div class="t-pill amber">📍 Royal Club, रायपुर</div>
      </div>
      <div class="t-desc">१०००+ मेहमानों के साथ भव्य स्वागत समारोह। सभी भाई-बहन तैयार रहें! 🎊</div>
    </div>
  </div>

</div>
```

  </div>

  <!-- ROLES -->

  <div class="section" id="sec-roles">
    <div class="sec-tag">भूमिका चुनें</div>
    <div class="sec-title">अपनी <em>भूमिका</em></div>
    <div class="sec-sub">अपनी पसंद की भूमिका चुनें। दूल्हे शुभम की मंजूरी के बाद भूमिका पक्की होगी।</div>

```
<div class="roles-intro">
  <h3>आप इस विवाह को यादगार बनाते हैं ✦</h3>
  <p>Royal Club रायपुर में १०००+ मेहमानों के साथ, हर भाई-बहन की भूमिका बहुत अहम है। अपनी पसंद चुनें!</p>
</div>

<!-- Groomsmen / Groomswomen -->
<div class="role-category">
  <div class="role-cat-title">👑 दूल्हे के साथी — Groomsmen</div>
  <div class="role-grid">
    <div class="role-card" id="role-gm1" onclick="toggleRole('gm1')">
      <div class="role-check">✓</div>
      <div class="role-icon">🤵</div>
      <div class="role-name">Groomsman 1</div>
      <div class="role-desc">दूल्हे का पहला साथी — हर रस्म में शुभम के साथ।</div>
      <div class="role-taken-badge" id="taken-gm1"></div>
    </div>
    <div class="role-card" id="role-gm2" onclick="toggleRole('gm2')">
      <div class="role-check">✓</div>
      <div class="role-icon">🤵</div>
      <div class="role-name">Groomsman 2</div>
      <div class="role-desc">दूल्हे का दूसरा साथी — मंच पर हमेशा मौजूद।</div>
      <div class="role-taken-badge" id="taken-gm2"></div>
    </div>
    <div class="role-card" id="role-gm3" onclick="toggleRole('gm3')">
      <div class="role-check">✓</div>
      <div class="role-icon">🤵</div>
      <div class="role-name">Groomsman 3</div>
      <div class="role-desc">दूल्हे का तीसरा साथी — खास रस्मों में सहयोग।</div>
      <div class="role-taken-badge" id="taken-gm3"></div>
    </div>
  </div>
</div>

<div class="role-category">
  <div class="role-cat-title">👸 दुल्हन की सहेलियाँ — Groomswomen</div>
  <div class="role-grid">
    <div class="role-card" id="role-gw1" onclick="toggleRole('gw1')">
      <div class="role-check">✓</div>
      <div class="role-icon">💃</div>
      <div class="role-name">Groomswoman 1</div>
      <div class="role-desc">शादी में दुल्हन की पहली सहेली और सहयोगी।</div>
      <div class="role-taken-badge" id="taken-gw1"></div>
    </div>
    <div class="role-card" id="role-gw2" onclick="toggleRole('gw2')">
      <div class="role-check">✓</div>
      <div class="role-icon">💃</div>
      <div class="role-name">Groomswoman 2</div>
      <div class="role-desc">हर रस्म में दुल्हन की दूसरी खास सहेली।</div>
      <div class="role-taken-badge" id="taken-gw2"></div>
    </div>
    <div class="role-card" id="role-gw3" onclick="toggleRole('gw3')">
      <div class="role-check">✓</div>
      <div class="role-icon">💃</div>
      <div class="role-name">Groomswoman 3</div>
      <div class="role-desc">तीसरी खास सहेली — हमेशा दुल्हन के पास।</div>
      <div class="role-taken-badge" id="taken-gw3"></div>
    </div>
  </div>
</div>

<!-- Ceremony -->
<div class="role-category">
  <div class="role-cat-title">🎊 बारात व रस्में</div>
  <div class="role-grid">
    <div class="role-card" id="role-baraat1" onclick="toggleRole('baraat1')">
      <div class="role-check">✓</div>
      <div class="role-icon">🐎</div>
      <div class="role-name">बारात लीडर</div>
      <div class="role-desc">बारात में सबसे आगे — ढोल, नृत्य और हुड़दंग!</div>
      <div class="role-taken-badge" id="taken-baraat1"></div>
    </div>
    <div class="role-card" id="role-baraat2" onclick="toggleRole('baraat2')">
      <div class="role-check">✓</div>
      <div class="role-icon">💃</div>
      <div class="role-name">बारात डांसर</div>
      <div class="role-desc">बारात में शुरू से अंत तक नृत्य की ऊर्जा बनाए रखें।</div>
      <div class="role-taken-badge" id="taken-baraat2"></div>
    </div>
    <div class="role-card" id="role-pheras" onclick="toggleRole('pheras')">
      <div class="role-check">✓</div>
      <div class="role-icon">🌼</div>
      <div class="role-name">रस्म सहयोगी</div>
      <div class="role-desc">पंडित के पास रहें, पूजा सामग्री तैयार रखें।</div>
      <div class="role-taken-badge" id="taken-pheras"></div>
    </div>
    <div class="role-card" id="role-groom" onclick="toggleRole('groom')">
      <div class="role-check">✓</div>
      <div class="role-icon">🤵</div>
      <div class="role-name">दूल्हे का साया</div>
      <div class="role-desc">शुभम के साथ हर पल — जो भी जरूरत हो।</div>
      <div class="role-taken-badge" id="taken-groom"></div>
    </div>
  </div>
</div>

<!-- Guest -->
<div class="role-category">
  <div class="role-cat-title">🚪 मेहमान प्रबंधन</div>
  <div class="role-grid">
    <div class="role-card" id="role-welcome1" onclick="toggleRole('welcome1')">
      <div class="role-check">✓</div>
      <div class="role-icon">🙏</div>
      <div class="role-name">स्वागत करता</div>
      <div class="role-desc">दरवाजे पर मेहमानों का गर्मजोशी से स्वागत।</div>
      <div class="role-taken-badge" id="taken-welcome1"></div>
    </div>
    <div class="role-card" id="role-welcome2" onclick="toggleRole('welcome2')">
      <div class="role-check">✓</div>
      <div class="role-icon">👴</div>
      <div class="role-name">VIP होस्ट</div>
      <div class="role-desc">बुजुर्गों और खास मेहमानों का व्यक्तिगत ध्यान।</div>
      <div class="role-taken-badge" id="taken-welcome2"></div>
    </div>
    <div class="role-card" id="role-seating" onclick="toggleRole('seating')">
      <div class="role-check">✓</div>
      <div class="role-icon">🪑</div>
      <div class="role-name">बैठक व्यवस्था</div>
      <div class="role-desc">१०००+ मेहमानों को सही जगह बैठाने में मदद।</div>
      <div class="role-taken-badge" id="taken-seating"></div>
    </div>
    <div class="role-card" id="role-kids" onclick="toggleRole('kids')">
      <div class="role-check">✓</div>
      <div class="role-icon">👶</div>
      <div class="role-name">बच्चों की देखभाल</div>
      <div class="role-desc">छोटे बच्चों को खुश और सुरक्षित रखें!</div>
      <div class="role-taken-badge" id="taken-kids"></div>
    </div>
  </div>
</div>

<!-- Food -->
<div class="role-category">
  <div class="role-cat-title">🍽️ खाना व लॉजिस्टिक्स</div>
  <div class="role-grid">
    <div class="role-card" id="role-catering" onclick="toggleRole('catering')">
      <div class="role-check">✓</div>
      <div class="role-icon">🍛</div>
      <div class="role-name">खाना इंचार्ज</div>
      <div class="role-desc">कैटरर के साथ समन्वय, खाने के काउंटर भरे रखें।</div>
      <div class="role-taken-badge" id="taken-catering"></div>
    </div>
    <div class="role-card" id="role-vendor" onclick="toggleRole('vendor')">
      <div class="role-check">✓</div>
      <div class="role-icon">📋</div>
      <div class="role-name">वेंडर समन्वयक</div>
      <div class="role-desc">फोटोग्राफर, DJ, सजावट वालों से संपर्क।</div>
      <div class="role-taken-badge" id="taken-vendor"></div>
    </div>
    <div class="role-card" id="role-gifts" onclick="toggleRole('gifts')">
      <div class="role-check">✓</div>
      <div class="role-icon">🎁</div>
      <div class="role-name">उपहार प्रबंधक</div>
      <div class="role-desc">सभी उपहार और लिफाफे एकत्र व सुरक्षित रखें।</div>
      <div class="role-taken-badge" id="taken-gifts"></div>
    </div>
    <div class="role-card" id="role-float" onclick="toggleRole('float')">
      <div class="role-check">✓</div>
      <div class="role-icon">⚡</div>
      <div class="role-name">फ्लोटिंग हेल्पर</div>
      <div class="role-desc">कोई एक काम नहीं — जहाँ जरूरत हो, वहाँ दौड़ें!</div>
      <div class="role-taken-badge" id="taken-float"></div>
    </div>
  </div>
</div>

<!-- Entertainment -->
<div class="role-category">
  <div class="role-cat-title">🎉 मनोरंजन व मीडिया</div>
  <div class="role-grid">
    <div class="role-card" id="role-mc" onclick="toggleRole('mc')">
      <div class="role-check">✓</div>
      <div class="role-icon">🎤</div>
      <div class="role-name">MC / एंकर</div>
      <div class="role-desc">संगीत और रिसेप्शन होस्ट — मजेदार और दिलकश।</div>
      <div class="role-taken-badge" id="taken-mc"></div>
    </div>
    <div class="role-card" id="role-dance" onclick="toggleRole('dance')">
      <div class="role-check">✓</div>
      <div class="role-icon">🕺</div>
      <div class="role-name">डांस लीड</div>
      <div class="role-desc">संगीत में परिवार का नृत्य प्रस्तुति आयोजित करें।</div>
      <div class="role-taken-badge" id="taken-dance"></div>
    </div>
    <div class="role-card" id="role-dj" onclick="toggleRole('dj')">
      <div class="role-check">✓</div>
      <div class="role-icon">🎵</div>
      <div class="role-name">DJ समन्वयक</div>
      <div class="role-desc">गाने का अनुरोध, सही वक्त पर सही गाना।</div>
      <div class="role-taken-badge" id="taken-dj"></div>
    </div>
    <div class="role-card" id="role-reels" onclick="toggleRole('reels')">
      <div class="role-check">✓</div>
      <div class="role-icon">📸</div>
      <div class="role-name">रील्स & फोटो</div>
      <div class="role-desc">यादगार पलों को कैमरे में कैद करें — WhatsApp & Insta।</div>
      <div class="role-taken-badge" id="taken-reels"></div>
    </div>
  </div>
</div>

<!-- Custom Roles -->
<div class="role-category" id="customRoleCategory" style="display:none;">
  <div class="role-cat-title">✦ परिवार द्वारा जोड़ी गई भूमिकाएँ</div>
  <div class="role-grid" id="customRoleGrid"></div>
</div>

<!-- Add Custom Role -->
<div class="add-role-box">
  <h4>✦ नई भूमिका जोड़ें</h4>
  <p>अपनी भूमिका नहीं दिखी? यहाँ जोड़ें — दूसरे भी ले सकेंगे!</p>
  <div class="add-role-row">
    <input class="add-role-input" id="customRoleName" placeholder="भूमिका का नाम"/>
    <input class="add-role-input" id="customRoleDesc" placeholder="छोटा विवरण"/>
    <button class="btn-add" onclick="addCustomRole()">+ जोड़ें</button>
  </div>
</div>

<!-- Claim Form -->
<div class="claim-form" id="claimForm">
  <h3>अपनी भूमिका लें 🌼</h3>
  <p>ऊपर से भूमिका चुनें, फिर नाम भरकर अनुरोध करें। शुभम की मंजूरी के बाद पक्की होगी।</p>
  <div class="selected-preview" id="selectedPreview">अभी कोई भूमिका नहीं चुनी…</div>
  <input class="form-input" id="cousinName" placeholder="आपका पूरा नाम"/>
  <input class="form-input" id="cousinPhone" placeholder="WhatsApp नंबर (वैकल्पिक)"/>
  <button class="btn-primary" onclick="claimRoles()">✦ भूमिका के लिए अनुरोध करें</button>
</div>

<div class="success-box" id="successBox">
  <div style="font-size:36px;">🌼✦🎉</div>
  <h3>अनुरोध भेज दिया!</h3>
  <p id="successMsg">आपका अनुरोध भेज दिया गया है। शुभम की मंजूरी का इंतजार करें।</p>
</div>
```

  </div>

  <!-- SQUAD / RESULTS -->

  <div class="section" id="sec-squad">
    <div class="sec-tag">विवाह टीम</div>
    <div class="sec-title">हमारी <em>टीम</em></div>
    <div class="sec-sub">देखें किसने कौन सी भूमिका ली है — और क्या मंजूर हुई।</div>

```
<!-- Voting -->
<div style="margin-bottom:20px;">
  <div class="sec-tag" style="margin-bottom:6px;">मतदान</div>
  <div style="font-size:13px; color:var(--muted); margin-bottom:12px;">जो भूमिका के लिए एक से ज्यादा लोग हों, वहाँ अपना वोट दें। शुभम अंतिम निर्णय लेंगे।</div>
  <div id="voteSection"></div>
</div>

<div class="divider">✦ ◆ ✦</div>

<!-- Approved -->
<div class="results-header">
  <h3>✦ मंजूर भूमिकाएँ</h3>
  <p id="squadCount">लोड हो रहा है…</p>
</div>
<div class="assigned-list" id="assignedList"></div>

<div class="divider">✦ ◆ ✦</div>

<!-- Pending -->
<div class="sec-tag" style="margin-bottom:6px;">प्रतीक्षारत अनुरोध</div>
<div class="assigned-list" id="pendingList"></div>

<div class="divider">✦ ◆ ✦</div>

<!-- Unclaimed -->
<div class="sec-tag" style="margin-bottom:6px;">खाली भूमिकाएँ</div>
<div style="font-size:13px; color:var(--muted); margin-bottom:12px;">इन्हें अभी भी लिया जा सकता है!</div>
<div id="unclaimedList" class="assigned-list"></div>

<!-- Admin / Groom Approval -->
<div class="divider">✦ ◆ ✦</div>
<div class="admin-section">
  <h4>👑 दूल्हे का पैनल — Shubham</h4>
  <p>शुभम यहाँ से भूमिका अनुरोध मंजूर या अस्वीकार कर सकते हैं।</p>

  <div class="admin-password-row">
    <input class="form-input" style="margin:0;" id="adminPass" type="password" placeholder="पासवर्ड डालें"/>
    <button class="btn-add" onclick="adminLogin()">प्रवेश</button>
  </div>

  <div id="adminPanel" style="display:none;">
    <div id="adminApprovalList"></div>
  </div>
</div>
```

  </div>

  <!-- SUGGESTIONS -->

  <div class="section" id="sec-suggest">
    <div class="sec-tag">सुझाव</div>
    <div class="sec-title">आपके <em>सुझाव</em></div>
    <div class="sec-sub">कोई भी विचार, योजना या मज़ेदार आइडिया यहाँ लिखें। लोगों को टैग करें!</div>

```
<!-- Write suggestion -->
<div class="suggestion-form">
  <h4>✦ अपना सुझाव लिखें</h4>
  <p>@नाम लिखकर किसी को टैग करें।</p>

  <input class="form-input" id="suggName" placeholder="आपका नाम"/>
  <textarea class="form-input" id="suggText" rows="3" placeholder="आपका सुझाव लिखें… (e.g. हमें एक surprise dance करना चाहिए @Rahul के साथ!)"></textarea>

  <div class="tag-input-wrap">
    <input class="form-input" style="margin:0;" id="tagInput" placeholder="@किसी को टैग करें (नाम टाइप करें)" oninput="showTagSuggestions()" onblur="hideTagSugg()"/>
    <div class="tag-suggestions" id="tagSuggestions"></div>
  </div>

  <div class="added-tags" id="addedTags"></div>

  <button class="btn-primary" onclick="submitSuggestion()">✦ सुझाव भेजें</button>
</div>

<!-- Existing suggestions -->
<div id="suggestionsList"></div>
```

  </div>

  <!-- INFO -->

  <div class="section" id="sec-info">
    <div class="sec-tag">जानकारी</div>
    <div class="sec-title">विवाह का <em>विवरण</em></div>
    <div class="sec-sub">रायपुर पहुँचने से पहले यह सब जान लें।</div>

```
<div class="dress-card">
  <div class="info-card-icon">👗</div>
  <div class="info-card-label">पोशाक संहिता</div>
  <div class="info-card-value">पारंपरिक भारतीय वेशभूषा</div>
  <div class="info-card-sub">महिलाएँ: लहंगा / साड़ी &nbsp;·&nbsp; पुरुष: शेरवानी / कुर्ता<br/>सभी भाई-बहन WhatsApp ग्रुप में रंग समन्वय करें! 🌼</div>
</div>

<div class="info-grid">
  <div class="info-card">
    <div class="info-card-icon">📍</div>
    <div class="info-card-label">मुख्य स्थल</div>
    <div class="info-card-value">Royal Club</div>
    <div class="info-card-sub">रायपुर, छत्तीसगढ़<br/>सटीक पता WhatsApp पर</div>
  </div>
  <div class="info-card">
    <div class="info-card-icon">👥</div>
    <div class="info-card-label">मेहमान</div>
    <div class="info-card-value">~१०००</div>
    <div class="info-card-sub">भव्य पारंपरिक विवाह — सभी तैयार रहें!</div>
  </div>
  <div class="info-card">
    <div class="info-card-icon">📅</div>
    <div class="info-card-label">तारीखें</div>
    <div class="info-card-value">१–३ जुलाई</div>
    <div class="info-card-sub">२०२५<br/>तीन दिन का उत्सव</div>
  </div>
  <div class="info-card">
    <div class="info-card-icon">🌼</div>
    <div class="info-card-label">कार्यक्रम</div>
    <div class="info-card-value">७ आयोजन</div>
    <div class="info-card-sub">सगाई · मेहंदी · हल्दी · संगीत · बारात · विवाह · स्वागत</div>
  </div>
</div>

<!-- Website Link Card -->
<div class="link-card">
  <div class="info-card-icon">🔗</div>
  <div class="info-card-label">वेबसाइट लिंक</div>
  <div class="info-card-value">इस वेबसाइट को शेयर करें</div>
  <div class="link-url" id="siteUrl">https://shreyadubey-studio.github.io/priyanka-shubham-wedding</div>
  <div class="copy-btn" onclick="copyLink()">📋 लिंक कॉपी करें</div>
</div>

<div class="checklist-card">
  <div class="info-card-icon">✅</div>
  <div class="info-card-label">भाई-बहनों की सूची</div>
  <div class="info-card-value">दिन की तैयारी</div>
  <div class="info-card-sub">
    🌼 &nbsp;अभी भूमिका के लिए अनुरोध करें<br/>
    ✦ &nbsp;अपने कार्यक्रम से १ घंटे पहले पहुँचें<br/>
    🌼 &nbsp;फोन पूरा चार्ज रखें<br/>
    ✦ &nbsp;शादी से एक रात पहले परिवार मीटिंग में आएँ<br/>
    🌼 &nbsp;अपनी टीम से पोशाक रंग तय करें<br/>
    ✦ &nbsp;सबसे ज़रूरी — खूब मज़े करें! 🎊
  </div>
</div>
```

  </div>

</div>

<!-- BOTTOM NAV -->

<div class="bottom-nav" id="bottomNav" style="display:none;">
  <button id="bn-events" onclick="showSection('events')">
    <span class="bn-icon">🗓️</span>कार्यक्रम
  </button>
  <button id="bn-roles" onclick="showSection('roles')">
    <span class="bn-icon">✋</span>भूमिका
  </button>
  <button id="bn-squad" onclick="showSection('squad')">
    <span class="bn-icon">👑</span>टीम
  </button>
  <button id="bn-suggest" onclick="showSection('suggest')">
    <span class="bn-icon">💡</span>सुझाव
  </button>
  <button id="bn-info" onclick="showSection('info')">
    <span class="bn-icon">ℹ️</span>जानकारी
  </button>
</div>

<script>
  const STORAGE_KEY = 'prishubh_v4';
  const ADMIN_PASS = 'shubham2025';

  let selectedRoles = [];
  let taggedPeople = [];
  let data = JSON.parse(localStorage.getItem(STORAGE_KEY) || '{"assignments":[],"customRoles":[],"suggestions":[],"votes":{}}');

  const builtinRoles = {
    gm1:'Groomsman 1', gm2:'Groomsman 2', gm3:'Groomsman 3',
    gw1:'Groomswoman 1', gw2:'Groomswoman 2', gw3:'Groomswoman 3',
    baraat1:'बारात लीडर', baraat2:'बारात डांसर',
    pheras:'रस्म सहयोगी', groom:'दूल्हे का साया',
    welcome1:'स्वागत करता', welcome2:'VIP होस्ट',
    seating:'बैठक व्यवस्था', kids:'बच्चों की देखभाल',
    catering:'खाना इंचार्ज', vendor:'वेंडर समन्वयक',
    gifts:'उपहार प्रबंधक', float:'फ्लोटिंग हेल्पर',
    mc:'MC / एंकर', dance:'डांस लीड',
    dj:'DJ समन्वयक', reels:'रील्स & फोटो'
  };

  function getAllRoleNames() {
    const all = { ...builtinRoles };
    data.customRoles.forEach(r => { all[r.id] = r.name; });
    return all;
  }

  function saveData() { localStorage.setItem(STORAGE_KEY, JSON.stringify(data)); }

  function getApprovedTakenRoles() {
    const taken = {};
    data.assignments.filter(a => a.status === 'approved').forEach(a => {
      a.roles.forEach(r => { taken[r] = a.name; });
    });
    return taken;
  }

  function getAllTakenRoles() {
    const taken = {};
    data.assignments.forEach(a => {
      a.roles.forEach(r => { taken[r] = a.name; });
    });
    return taken;
  }

  function toggleRole(roleId) {
    const taken = getAllTakenRoles();
    if (taken[roleId]) return;
    const card = document.getElementById('role-' + roleId);
    if (!card) return;
    const idx = selectedRoles.indexOf(roleId);
    if (idx === -1) { selectedRoles.push(roleId); card.classList.add('selected'); }
    else { selectedRoles.splice(idx, 1); card.classList.remove('selected'); }
    updatePreview();
  }

  function updatePreview() {
    const p = document.getElementById('selectedPreview');
    const allNames = getAllRoleNames();
    p.textContent = selectedRoles.length
      ? '✓ ' + selectedRoles.map(r => allNames[r] || r).join(' · ')
      : 'अभी कोई भूमिका नहीं चुनी…';
  }

  function addCustomRole() {
    const name = document.getElementById('customRoleName').value.trim();
    const desc = document.getElementById('customRoleDesc').value.trim();
    if (!name) { alert('कृपया भूमिका का नाम लिखें!'); return; }
    const id = 'custom_' + Date.now();
    data.customRoles.push({ id, name, desc: desc || 'परिवार द्वारा जोड़ी गई भूमिका' });
    saveData();
    document.getElementById('customRoleName').value = '';
    document.getElementById('customRoleDesc').value = '';
    renderCustomRoles();
    renderTakenBadges();
    alert('✦ भूमिका "' + name + '" जोड़ दी गई!');
  }

  function renderCustomRoles() {
    const grid = document.getElementById('customRoleGrid');
    const cat = document.getElementById('customRoleCategory');
    if (!data.customRoles.length) { cat.style.display = 'none'; return; }
    cat.style.display = 'block';
    const taken = getAllTakenRoles();
    grid.innerHTML = data.customRoles.map(r => `
      <div class="role-card ${taken[r.id]?'taken':''} ${selectedRoles.includes(r.id)?'selected':''}"
           id="role-${r.id}" onclick="toggleRole('${r.id}')">
        <div class="role-check">✓</div>
        <div class="role-icon">✦</div>
        <div class="role-name">${escHtml(r.name)}</div>
        <div class="role-desc">${escHtml(r.desc)}</div>
        <div class="role-taken-badge" id="taken-${r.id}">${taken[r.id]?'✓ '+taken[r.id]+' ने ली':''}
        </div>
      </div>`).join('');
  }

  function renderTakenBadges() {
    const taken = getAllTakenRoles();
    const allRoles = getAllRoleNames();
    Object.keys(allRoles).forEach(id => {
      const card = document.getElementById('role-' + id);
      const badge = document.getElementById('taken-' + id);
      if (!card || !badge) return;
      if (taken[id]) {
        card.classList.add('taken'); card.classList.remove('selected');
        badge.textContent = '✓ ' + taken[id] + ' ने ली';
      } else {
        card.classList.remove('taken'); badge.textContent = '';
      }
    });
  }

  function claimRoles() {
    const name = document.getElementById('cousinName').value.trim();
    if (!name) { alert('कृपया अपना नाम लिखें!'); return; }
    if (!selectedRoles.length) { alert('कृपया कम से कम एक भूमिका चुनें!'); return; }
    const taken = getAllTakenRoles();
    const conflict = selectedRoles.find(r => taken[r]);
    if (conflict) {
      const allNames = getAllRoleNames();
      alert('"' + (allNames[conflict]||conflict) + '" पहले से ' + taken[conflict] + ' ने ली है।'); return;
    }
    data.assignments.push({
      name, roles: [...selectedRoles],
      phone: document.getElementById('cousinPhone').value.trim(),
      status: 'pending', time: Date.now()
    });
    saveData();
    document.getElementById('successMsg').textContent =
      name + ', आपका अनुरोध भेज दिया गया है: ' + selectedRoles.map(r => getAllRoleNames()[r]||r).join(', ') + '। शुभम की मंजूरी का इंतजार करें! 🌼';
    document.getElementById('successBox').classList.add('show');
    document.getElementById('claimForm').style.display = 'none';
    selectedRoles = [];
    renderTakenBadges(); renderCustomRoles();
  }

  // ── VOTING ──
  function vote(roleId, personName) {
    const key = roleId + '_' + personName;
    const myVotes = JSON.parse(localStorage.getItem('myVotes_v4') || '[]');
    if (myVotes.includes(key)) { alert('आप पहले ही वोट दे चुके हैं!'); return; }
    if (!data.votes[roleId]) data.votes[roleId] = {};
    if (!data.votes[roleId][personName]) data.votes[roleId][personName] = 0;
    data.votes[roleId][personName]++;
    myVotes.push(key);
    localStorage.setItem('myVotes_v4', JSON.stringify(myVotes));
    saveData();
    renderSquad();
  }

  // ── SQUAD / RESULTS ──
  function renderSquad() {
    const allNames = getAllRoleNames();
    const approved = data.assignments.filter(a => a.status === 'approved');
    const pending = data.assignments.filter(a => a.status === 'pending');
    const approvedTaken = getApprovedTakenRoles();
    const allTaken = getAllTakenRoles();
    const myVotes = JSON.parse(localStorage.getItem('myVotes_v4') || '[]');

    // Approved list
    const list = document.getElementById('assignedList');
    const countEl = document.getElementById('squadCount');
    countEl.textContent = approved.length + ' भूमिकाएँ मंजूर हुई हैं';
    if (!approved.length) {
      list.innerHTML = '<div class="empty-state">अभी कोई भूमिका मंजूर नहीं हुई।</div>';
    } else {
      list.innerHTML = approved.map(a => `
        <div class="assigned-item">
          <div class="assigned-avatar">${a.name.charAt(0).toUpperCase()}</div>
          <div class="assigned-info">
            <div class="assigned-name">${escHtml(a.name)}</div>
            <div class="assigned-role">${a.roles.map(r=>allNames[r]||r).join(' · ')}</div>
            <span class="status-badge status-approved">✓ मंजूर</span>
          </div>
        </div>`).join('');
    }

    // Pending list
    const pList = document.getElementById('pendingList');
    if (!pending.length) {
      pList.innerHTML = '<div class="empty-state">कोई प्रतीक्षारत अनुरोध नहीं।</div>';
    } else {
      pList.innerHTML = pending.map(a => `
        <div class="assigned-item">
          <div class="assigned-avatar" style="background:linear-gradient(135deg,#8B5500,#C8820A);">${a.name.charAt(0).toUpperCase()}</div>
          <div class="assigned-info">
            <div class="assigned-name">${escHtml(a.name)}</div>
            <div class="assigned-role">${a.roles.map(r=>allNames[r]||r).join(' · ')}</div>
            <span class="status-badge status-pending">⏳ मंजूरी बाकी</span>
          </div>
        </div>`).join('');
    }

    // Unclaimed
    const unclaimed = Object.keys(allNames).filter(id => !allTaken[id]);
    const uList = document.getElementById('unclaimedList');
    if (!unclaimed.length) {
      uList.innerHTML = '<div class="empty-state">सभी भूमिकाएँ ले ली गई हैं! 🎉</div>';
    } else {
      uList.innerHTML = unclaimed.map(id => `
        <div class="assigned-item" style="opacity:0.6;">
          <div class="assigned-avatar" style="background:linear-gradient(135deg,#C8A060,#E5C080);font-size:13px;">?</div>
          <div class="assigned-info">
            <div class="assigned-name">${escHtml(allNames[id])}</div>
            <div class="assigned-role" style="color:var(--gold);">उपलब्ध — अभी लें!</div>
          </div>
        </div>`).join('');
    }

    // Voting — roles with multiple pending requests
    const roleRequests = {};
    pending.forEach(a => {
      a.roles.forEach(r => {
        if (!roleRequests[r]) roleRequests[r] = [];
        roleRequests[r].push(a.name);
      });
    });

    const contested = Object.keys(roleRequests).filter(r => roleRequests[r].length > 1);
    const voteEl = document.getElementById('voteSection');

    if (!contested.length) {
      voteEl.innerHTML = '<div class="empty-state">अभी कोई विवादित भूमिका नहीं है।</div>';
    } else {
      voteEl.innerHTML = contested.map(roleId => {
        const people = roleRequests[roleId];
        const roleName = allNames[roleId] || roleId;
        const votes = data.votes[roleId] || {};
        const totalVotes = Object.values(votes).reduce((a,b)=>a+b,0) || 1;
        return `<div class="vote-card">
          <div class="vote-card-role">${escHtml(roleName)} — ${people.length} अनुरोध</div>
          ${people.map(p => {
            const v = votes[p] || 0;
            const pct = Math.round((v/totalVotes)*100);
            const voted = myVotes.includes(roleId+'_'+p);
            return `<div style="margin-bottom:10px;">
              <div class="vote-card-name">${escHtml(p)}</div>
              <div class="vote-bar-wrap"><div class="vote-bar" style="width:${pct}%"></div></div>
              <div class="vote-count">${v} वोट (${pct}%)</div>
              <button class="btn-vote ${voted?'voted':''}" onclick="vote('${escJs(roleId)}','${escJs(p)}')">${voted?'✓ वोट दिया':'वोट दें'}</button>
            </div>`;
          }).join('')}
        </div>`;
      }).join('');
    }
  }

  // ── ADMIN ──
  function adminLogin() {
    const pass = document.getElementById('adminPass').value;
    if (pass !== ADMIN_PASS) { alert('गलत पासवर्ड!'); return; }
    document.getElementById('adminPanel').style.display = 'block';
    renderAdminPanel();
  }

  function renderAdminPanel() {
    const allNames = getAllRoleNames();
    const pending = data.assignments.filter(a => a.status === 'pending');
    const el = document.getElementById('adminApprovalList');
    if (!pending.length) {
      el.innerHTML = '<div class="empty-state">कोई प्रतीक्षारत अनुरोध नहीं।</div>'; return;
    }
    el.innerHTML = pending.map((a,i) => {
      const realIdx = data.assignments.indexOf(a);
      return `<div class="approval-item">
        <div class="approval-name">${escHtml(a.name)}</div>
        <div class="approval-roles">${a.roles.map(r=>allNames[r]||r).join(' · ')}</div>
        <div class="approval-btns">
          <button class="btn-approve" onclick="approveRole(${realIdx})">✓ मंजूर करें</button>
          <button class="btn-reject" onclick="rejectRole(${realIdx})">✗ अस्वीकार करें</button>
        </div>
      </div>`;
    }).join('');
  }

  function approveRole(idx) {
    data.assignments[idx].status = 'approved';
    saveData(); renderAdminPanel(); renderSquad(); renderTakenBadges();
    alert('✓ भूमिका मंजूर कर दी गई!');
  }

  function rejectRole(idx) {
    const name = data.assignments[idx].name;
    data.assignments[idx].status = 'rejected';
    saveData(); renderAdminPanel(); renderSquad(); renderTakenBadges();
    alert('भूमिका अस्वीकार कर दी गई। ' + name + ' दूसरी भूमिका ले सकते हैं।');
  }

  // ── SUGGESTIONS ──
  function getAllNames() {
    const names = new Set();
    data.assignments.forEach(a => names.add(a.name));
    data.suggestions.forEach(s => names.add(s.author));
    return [...names];
  }

  function showTagSuggestions() {
    const input = document.getElementById('tagInput').value.trim();
    const sugg = document.getElementById('tagSuggestions');
    if (!input) { sugg.classList.remove('show'); return; }
    const names = getAllNames().filter(n => n.toLowerCase().includes(input.toLowerCase()) && !taggedPeople.includes(n));
    if (!names.length) { sugg.classList.remove('show'); return; }
    sugg.innerHTML = names.slice(0,5).map(n =>
      `<div class="tag-suggestion-item" onmousedown="addTag('${escJs(n)}')">${escHtml(n)}</div>`
    ).join('');
    sugg.classList.add('show');
  }

  function hideTagSugg() {
    setTimeout(() => document.getElementById('tagSuggestions').classList.remove('show'), 200);
  }

  function addTag(name) {
    if (taggedPeople.includes(name)) return;
    taggedPeople.push(name);
    document.getElementById('tagInput').value = '';
    document.getElementById('tagSuggestions').classList.remove('show');
    renderAddedTags();
  }

  function removeTag(name) {
    taggedPeople = taggedPeople.filter(t => t !== name);
    renderAddedTags();
  }

  function renderAddedTags() {
    const el = document.getElementById('addedTags');
    el.innerHTML = taggedPeople.map(t =>
      `<div class="added-tag" onclick="removeTag('${escJs(t)}')">@${escHtml(t)} ✕</div>`
    ).join('');
  }

  function submitSuggestion() {
    const author = document.getElementById('suggName').value.trim();
    const text = document.getElementById('suggText').value.trim();
    if (!author || !text) { alert('कृपया नाम और सुझाव लिखें!'); return; }
    data.suggestions.unshift({ author, text, tags: [...taggedPeople], time: Date.now() });
    saveData();
    document.getElementById('suggName').value = '';
    document.getElementById('suggText').value = '';
    taggedPeople = [];
    renderAddedTags();
    renderSuggestions();
    alert('✦ सुझाव भेज दिया गया!');
  }

  function renderSuggestions() {
    const el = document.getElementById('suggestionsList');
    if (!data.suggestions.length) {
      el.innerHTML = '<div class="empty-state">अभी कोई सुझाव नहीं — पहले आप लिखें! 💡</div>'; return;
    }
    el.innerHTML = data.suggestions.map(s => {
      const d = new Date(s.time);
      const timeStr = d.toLocaleDateString('hi-IN') + ' ' + d.toLocaleTimeString('hi-IN',{hour:'2-digit',minute:'2-digit'});
      return `<div class="suggestion-card">
        <div class="suggestion-header">
          <div class="suggestion-avatar">${s.author.charAt(0).toUpperCase()}</div>
          <div class="suggestion-meta">
            <div class="suggestion-author">${escHtml(s.author)}</div>
            <div class="suggestion-time">${timeStr}</div>
          </div>
        </div>
        <div class="suggestion-text">${escHtml(s.text)}</div>
        ${s.tags.length ? `<div class="suggestion-tags">${s.tags.map(t=>`<span class="tag-pill">@${escHtml(t)}</span>`).join('')}</div>` : ''}
      </div>`;
    }).join('');
  }

  // ── COPY LINK ──
  function copyLink() {
    const url = document.getElementById('siteUrl').textContent;
    navigator.clipboard.writeText(url).then(() => alert('✦ लिंक कॉपी हो गया!')).catch(() => {
      alert('लिंक: ' + url);
    });
  }

  function escHtml(t) {
    return String(t??'').replace(/&/g,'&amp;').replace(/</g,'&lt;').replace(/>/g,'&gt;');
  }

  function escJs(t) {
    return String(t??'').replace(/'/g,"\\'").replace(/"/g,'\\"');
  }

  function showSection(name) {
    document.getElementById('heroSection').style.display = 'none';
    document.getElementById('mainNav').style.display = 'flex';
    document.getElementById('bottomNav').style.display = 'flex';

    ['events','roles','squad','suggest','info'].forEach(s => {
      document.getElementById('sec-' + s).classList.remove('visible');
      const bn = document.getElementById('bn-' + s);
      const nv = document.getElementById('nav-' + s);
      if (bn) bn.classList.remove('active');
      if (nv) nv.classList.remove('active');
    });

    document.getElementById('sec-' + name).classList.add('visible');
    const bn = document.getElementById('bn-' + name);
    const nv = document.getElementById('nav-' + name);
    if (bn) bn.classList.add('active');
    if (nv) nv.classList.add('active');

    if (name === 'roles') { renderCustomRoles(); renderTakenBadges(); }
    if (name === 'squad') { renderSquad(); }
    if (name === 'suggest') { renderSuggestions(); }

    window.scrollTo(0, 0);
  }

  // Init
  renderCustomRoles();
  renderTakenBadges();
</script>

</body>
</html>
