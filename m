Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC2441344DB
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:21:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IEjDKH8CZPpP2vlsFDAXSwuaP3Y2GOc5cjGVBKVFVWk=; b=g51
	RPlTVYBXwAFpIeJLYfG3lM42lwsQyx6fBMor447cdlqdIOP8/z0zhp6S5uh+ctkOxhfLZzuHShx/B
	qK8b8XArypREhLFDr/olAHRCbh4fHVSvpRw3/pzygyfse4qp2Y/V4OJnYn5JvQ8QLzWuoQN/QWziV
	hJbWzv5C+v9yGErSLpXPMCOdhpat/fITNpvH4IERItIXCuvjFeB1rS6bU+GbLdLIWvSGUkihSVvcw
	eaF94CDiiVxENvuWy6eegf0O9k99s06BNRdlDE3YpywUjBR7qMb5Z0RW47Z43/FLD2ZC3yguANIY+
	dCy+5mTB1PPHRjBqpRZN3rfK0B3zv6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCCn-0006ZB-0l; Wed, 08 Jan 2020 14:21:05 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCCX-0006Qd-3y
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 14:20:51 +0000
Received: by mail-pl1-x644.google.com with SMTP id bd4so1193321plb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 06:20:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=/aEjzLy1m+pr9fYmy6Qqkup19duszl1cC8/K5QqSxE8=;
 b=qpe8GlFNfBC6nf5YI9O4uRYrjBtZ9BNXvhlnDCUWw9+cDQ2dgu/UNuRLMYVOLuG4se
 r7yvABsHu9PN2tEo2VRv66vibxBWwUHkIC8Zo/3VdZ2UVyeTa1ndzEfkZOT+6Ii/Hu6I
 TRf07r/WYLPB10WjB31B55KI1mG9dd71bATLWaYvl5zTnVHJJCT9PIRyLbkTS1ops9J4
 GQIEcB8et7Y9TEhD/RMcEviZ96NMB3kiWLq5Ae7hxbxsTvyGjns87LUxe84ndOaia2HW
 uctfMEW98f/W/YTrOOZH4qBSaCWi4GnpXVGcppG9rvC7PqCsjCzIyWUqEHlZTlJ6vxno
 j/3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=/aEjzLy1m+pr9fYmy6Qqkup19duszl1cC8/K5QqSxE8=;
 b=TS/PdO6eUzUd56gmtvTVch+3XVItOILQqxoQgNIb0pjHK7KPreiZ6vNfdpn1qayrcp
 vouRh1yvCBdjiU2hzlAH1jY8AOq97EHOwLCC7oItxQi6SIbgTNC6SFkrs4zWpZW1FBAf
 FufuU5ShtfCfxKJYJxgdfzMFrWWZNkyYVyatPkphlLMwzQQQuYAb6Y0Xk1sbwYnkJ7M4
 OXQFcgVHYS2dDuQYgYHGUYmyeQjEuuoJndkQ39Vs79XG1b7HBQixbVZAmUIsrduR2m0B
 mgahoCqouG/7ENI3/x6+/YRZOMcDuJCSHbkOBMr88Wq8LsqgAGao2ol2/OOXsYnYDu+2
 At6w==
X-Gm-Message-State: APjAAAXYTu7a3fOtYGLKTMcmY19OKhfZ32lPZp6NOQSs1GwHTSUlfzmk
 GAbTTgXLarmZEieIkeyaZk/Yrw==
X-Google-Smtp-Source: APXvYqzMYFTj4LN5WwXGXgMh2iMmjC65zcigFPNSkgVq6XH8IcNFu5eijDL7kpj/fzNhdjx6x9GbTA==
X-Received: by 2002:a17:902:6bc9:: with SMTP id
 m9mr5637488plt.260.1578493247423; 
 Wed, 08 Jan 2020 06:20:47 -0800 (PST)
Received: from localhost.localdomain (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id a18sm3515054pjq.30.2020.01.08.06.20.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 06:20:46 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@redhat.com>, Jiri Olsa <jolsa@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Ian Rogers <irogers@google.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Thomas Gleixner <tglx@linutronix.de>, Andi Kleen <ak@linux.intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v4 1/2] perf parse: Refactor struct perf_evsel_config_term
Date: Wed,  8 Jan 2020 22:20:09 +0800
Message-Id: <20200108142010.11269-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_062049_188936_739E8A92 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Leo Yan <leo.yan@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The struct perf_evsel_config_term::val is a union which contains
multiple variables for corresponding types.  This leads the union to
be complex and also causes complex code logic.

This patch refactors the structure to use two general variables in the
'val' union: one is 'num' for unsigned 64-bit integer and another is
'str' for string variable.  This can simplify the data structure and
the related code, this also can benefit for possibly extension.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/arch/arm/util/cs-etm.c |  2 +-
 tools/perf/builtin-top.c          |  2 +-
 tools/perf/util/auxtrace.c        |  2 +-
 tools/perf/util/evsel.c           | 24 +++++++-------
 tools/perf/util/evsel_config.h    | 17 ++--------
 tools/perf/util/parse-events.c    | 55 ++++++++++++++++++-------------
 6 files changed, 49 insertions(+), 53 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index ede040cf82ad..2898cfdf8fe1 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -226,7 +226,7 @@ static int cs_etm_set_sink_attr(struct perf_pmu *pmu,
 		if (term->type != PERF_EVSEL__CONFIG_TERM_DRV_CFG)
 			continue;
 
-		sink = term->val.drv_cfg;
+		sink = term->val.str;
 		snprintf(path, PATH_MAX, "sinks/%s", sink);
 
 		ret = perf_pmu__scan_file(pmu, path, "%x", &hash);
diff --git a/tools/perf/builtin-top.c b/tools/perf/builtin-top.c
index 795e353de095..459be44ca2ff 100644
--- a/tools/perf/builtin-top.c
+++ b/tools/perf/builtin-top.c
@@ -947,7 +947,7 @@ static int perf_top__overwrite_check(struct perf_top *top)
 		config_terms = &evsel->config_terms;
 		list_for_each_entry(term, config_terms, list) {
 			if (term->type == PERF_EVSEL__CONFIG_TERM_OVERWRITE)
-				set = term->val.overwrite ? 1 : 0;
+				set = term->val.num ? 1 : 0;
 		}
 
 		/* no term for current and previous event (likely) */
diff --git a/tools/perf/util/auxtrace.c b/tools/perf/util/auxtrace.c
index eb087e7df6f4..a5c945aadfa7 100644
--- a/tools/perf/util/auxtrace.c
+++ b/tools/perf/util/auxtrace.c
@@ -772,7 +772,7 @@ int auxtrace_parse_sample_options(struct auxtrace_record *itr,
 		term = perf_evsel__get_config_term(evsel, AUX_SAMPLE_SIZE);
 		if (term) {
 			has_aux_sample_size = true;
-			evsel->core.attr.aux_sample_size = term->val.aux_sample_size;
+			evsel->core.attr.aux_sample_size = term->val.num;
 			/* If possible, group with the AUX event */
 			if (aux_evsel && evsel->core.attr.aux_sample_size)
 				perf_evlist__regroup(evlist, aux_evsel, evsel);
diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index a69e64236120..5f27f6b7ed94 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -789,43 +789,43 @@ static void apply_config_terms(struct evsel *evsel,
 		switch (term->type) {
 		case PERF_EVSEL__CONFIG_TERM_PERIOD:
 			if (!(term->weak && opts->user_interval != ULLONG_MAX)) {
-				attr->sample_period = term->val.period;
+				attr->sample_period = term->val.num;
 				attr->freq = 0;
 				perf_evsel__reset_sample_bit(evsel, PERIOD);
 			}
 			break;
 		case PERF_EVSEL__CONFIG_TERM_FREQ:
 			if (!(term->weak && opts->user_freq != UINT_MAX)) {
-				attr->sample_freq = term->val.freq;
+				attr->sample_freq = term->val.num;
 				attr->freq = 1;
 				perf_evsel__set_sample_bit(evsel, PERIOD);
 			}
 			break;
 		case PERF_EVSEL__CONFIG_TERM_TIME:
-			if (term->val.time)
+			if (term->val.num)
 				perf_evsel__set_sample_bit(evsel, TIME);
 			else
 				perf_evsel__reset_sample_bit(evsel, TIME);
 			break;
 		case PERF_EVSEL__CONFIG_TERM_CALLGRAPH:
-			callgraph_buf = term->val.callgraph;
+			callgraph_buf = term->val.str;
 			break;
 		case PERF_EVSEL__CONFIG_TERM_BRANCH:
-			if (term->val.branch && strcmp(term->val.branch, "no")) {
+			if (term->val.str && strcmp(term->val.str, "no")) {
 				perf_evsel__set_sample_bit(evsel, BRANCH_STACK);
-				parse_branch_str(term->val.branch,
+				parse_branch_str(term->val.str,
 						 &attr->branch_sample_type);
 			} else
 				perf_evsel__reset_sample_bit(evsel, BRANCH_STACK);
 			break;
 		case PERF_EVSEL__CONFIG_TERM_STACK_USER:
-			dump_size = term->val.stack_user;
+			dump_size = term->val.num;
 			break;
 		case PERF_EVSEL__CONFIG_TERM_MAX_STACK:
-			max_stack = term->val.max_stack;
+			max_stack = term->val.num;
 			break;
 		case PERF_EVSEL__CONFIG_TERM_MAX_EVENTS:
-			evsel->max_events = term->val.max_events;
+			evsel->max_events = term->val.num;
 			break;
 		case PERF_EVSEL__CONFIG_TERM_INHERIT:
 			/*
@@ -834,17 +834,17 @@ static void apply_config_terms(struct evsel *evsel,
 			 * inherit using config terms, override global
 			 * opt->no_inherit setting.
 			 */
-			attr->inherit = term->val.inherit ? 1 : 0;
+			attr->inherit = term->val.num ? 1 : 0;
 			break;
 		case PERF_EVSEL__CONFIG_TERM_OVERWRITE:
-			attr->write_backward = term->val.overwrite ? 1 : 0;
+			attr->write_backward = term->val.num ? 1 : 0;
 			break;
 		case PERF_EVSEL__CONFIG_TERM_DRV_CFG:
 			break;
 		case PERF_EVSEL__CONFIG_TERM_PERCORE:
 			break;
 		case PERF_EVSEL__CONFIG_TERM_AUX_OUTPUT:
-			attr->aux_output = term->val.aux_output ? 1 : 0;
+			attr->aux_output = term->val.num ? 1 : 0;
 			break;
 		case PERF_EVSEL__CONFIG_TERM_AUX_SAMPLE_SIZE:
 			/* Already applied by auxtrace */
diff --git a/tools/perf/util/evsel_config.h b/tools/perf/util/evsel_config.h
index 1f8d2fe0b66e..4e5b3ebf09cf 100644
--- a/tools/perf/util/evsel_config.h
+++ b/tools/perf/util/evsel_config.h
@@ -33,21 +33,8 @@ struct perf_evsel_config_term {
 	struct list_head      list;
 	enum evsel_term_type  type;
 	union {
-		u64	      period;
-		u64	      freq;
-		bool	      time;
-		char	      *callgraph;
-		char	      *drv_cfg;
-		u64	      stack_user;
-		int	      max_stack;
-		bool	      inherit;
-		bool	      overwrite;
-		char	      *branch;
-		unsigned long max_events;
-		bool	      percore;
-		bool	      aux_output;
-		u32	      aux_sample_size;
-		u64	      cfg_chg;
+		u64	      num;
+		char	      *str;
 	} val;
 	bool weak;
 };
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index ed7c008b9c8b..caf38518762f 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1219,8 +1219,7 @@ static int config_attr(struct perf_event_attr *attr,
 static int get_config_terms(struct list_head *head_config,
 			    struct list_head *head_terms __maybe_unused)
 {
-#define ADD_CONFIG_TERM(__type, __name, __val)			\
-do {								\
+#define ADD_CONFIG_TERM(__type)					\
 	struct perf_evsel_config_term *__t;			\
 								\
 	__t = zalloc(sizeof(*__t));				\
@@ -1229,9 +1228,19 @@ do {								\
 								\
 	INIT_LIST_HEAD(&__t->list);				\
 	__t->type       = PERF_EVSEL__CONFIG_TERM_ ## __type;	\
-	__t->val.__name = __val;				\
 	__t->weak	= term->weak;				\
-	list_add_tail(&__t->list, head_terms);			\
+	list_add_tail(&__t->list, head_terms)
+
+#define ADD_CONFIG_TERM_VAL(__type, __val)			\
+do {								\
+	ADD_CONFIG_TERM(__type);				\
+	__t->val.num = __val;					\
+} while (0)
+
+#define ADD_CONFIG_TERM_STR(__type, __val)			\
+do {								\
+	ADD_CONFIG_TERM(__type);				\
+	__t->val.str = __val;					\
 } while (0)
 
 	struct parse_events_term *term;
@@ -1239,53 +1248,53 @@ do {								\
 	list_for_each_entry(term, head_config, list) {
 		switch (term->type_term) {
 		case PARSE_EVENTS__TERM_TYPE_SAMPLE_PERIOD:
-			ADD_CONFIG_TERM(PERIOD, period, term->val.num);
+			ADD_CONFIG_TERM_VAL(PERIOD, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_SAMPLE_FREQ:
-			ADD_CONFIG_TERM(FREQ, freq, term->val.num);
+			ADD_CONFIG_TERM_VAL(FREQ, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_TIME:
-			ADD_CONFIG_TERM(TIME, time, term->val.num);
+			ADD_CONFIG_TERM_VAL(TIME, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_CALLGRAPH:
-			ADD_CONFIG_TERM(CALLGRAPH, callgraph, term->val.str);
+			ADD_CONFIG_TERM_STR(CALLGRAPH, term->val.str);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_BRANCH_SAMPLE_TYPE:
-			ADD_CONFIG_TERM(BRANCH, branch, term->val.str);
+			ADD_CONFIG_TERM_STR(BRANCH, term->val.str);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_STACKSIZE:
-			ADD_CONFIG_TERM(STACK_USER, stack_user, term->val.num);
+			ADD_CONFIG_TERM_VAL(STACK_USER, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_INHERIT:
-			ADD_CONFIG_TERM(INHERIT, inherit, term->val.num ? 1 : 0);
+			ADD_CONFIG_TERM_VAL(INHERIT, term->val.num ? 1 : 0);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_NOINHERIT:
-			ADD_CONFIG_TERM(INHERIT, inherit, term->val.num ? 0 : 1);
+			ADD_CONFIG_TERM_VAL(INHERIT, term->val.num ? 0 : 1);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_MAX_STACK:
-			ADD_CONFIG_TERM(MAX_STACK, max_stack, term->val.num);
+			ADD_CONFIG_TERM_VAL(MAX_STACK, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_MAX_EVENTS:
-			ADD_CONFIG_TERM(MAX_EVENTS, max_events, term->val.num);
+			ADD_CONFIG_TERM_VAL(MAX_EVENTS, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_OVERWRITE:
-			ADD_CONFIG_TERM(OVERWRITE, overwrite, term->val.num ? 1 : 0);
+			ADD_CONFIG_TERM_VAL(OVERWRITE, term->val.num ? 1 : 0);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_NOOVERWRITE:
-			ADD_CONFIG_TERM(OVERWRITE, overwrite, term->val.num ? 0 : 1);
+			ADD_CONFIG_TERM_VAL(OVERWRITE, term->val.num ? 0 : 1);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_DRV_CFG:
-			ADD_CONFIG_TERM(DRV_CFG, drv_cfg, term->val.str);
+			ADD_CONFIG_TERM_STR(DRV_CFG, term->val.str);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_PERCORE:
-			ADD_CONFIG_TERM(PERCORE, percore,
-					term->val.num ? true : false);
+			ADD_CONFIG_TERM_VAL(PERCORE,
+					    term->val.num ? true : false);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_AUX_OUTPUT:
-			ADD_CONFIG_TERM(AUX_OUTPUT, aux_output, term->val.num ? 1 : 0);
+			ADD_CONFIG_TERM_VAL(AUX_OUTPUT, term->val.num ? 1 : 0);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_AUX_SAMPLE_SIZE:
-			ADD_CONFIG_TERM(AUX_SAMPLE_SIZE, aux_sample_size, term->val.num);
+			ADD_CONFIG_TERM_VAL(AUX_SAMPLE_SIZE, term->val.num);
 			break;
 		default:
 			break;
@@ -1322,7 +1331,7 @@ static int get_config_chgs(struct perf_pmu *pmu, struct list_head *head_config,
 	}
 
 	if (bits)
-		ADD_CONFIG_TERM(CFG_CHG, cfg_chg, bits);
+		ADD_CONFIG_TERM_VAL(CFG_CHG, bits);
 
 #undef ADD_CONFIG_TERM
 	return 0;
@@ -1387,7 +1396,7 @@ static bool config_term_percore(struct list_head *config_terms)
 
 	list_for_each_entry(term, config_terms, list) {
 		if (term->type == PERF_EVSEL__CONFIG_TERM_PERCORE)
-			return term->val.percore;
+			return term->val.num;
 	}
 
 	return false;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
