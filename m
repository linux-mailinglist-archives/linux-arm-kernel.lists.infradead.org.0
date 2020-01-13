Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4EC13949F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:18:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vw6YNHvwo3vM2s186eKb4OJOnYRp4QYITmvVTHI2L9A=; b=upV
	gUf4+fe67HFgY5UHSMjCCEANvzrckayG+TlagdEu2YX2ooXOkAw1EanDsYjkX8BT5jIT+7IVhF1+7
	2Cd+KvWHAEOaesjLU5fQMSLJcpKcCZ/HwWN/NbrAU+lDDhaL3xYcfougb+98Z0OW6CChhli8+nFJ3
	VAJSbKyMiAmSbVNb7xh8Xcg+OYieECn51Yy97efEe0T0UlAAdGgec4TWRRsqorx76tPbmM52byVhG
	qrd3SFKuOLN/ga2xwKiyZ4K+NgdWiJYpq5EcnaWr8Df9DbKyoaqTtuIFDuUTYMuo97JIlIIxcF0iZ
	IuuZladyqb2FV545zIH3hi7eZ6VVMTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1US-00063E-AC; Mon, 13 Jan 2020 15:18:52 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1U5-0005w7-0s
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:18:31 +0000
Received: by mail-pg1-x542.google.com with SMTP id b137so4850289pga.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 07:18:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=B3v9KtfRVLcMP3bzkZxOovc2P22Cupcw5q1+cH+SLAo=;
 b=Wjzz2n96sKJS1QC6z2trsjWbqW8PtL1kdpLv29GTElHUmKRDRyGEnpAh4gzC29It1t
 b1MxQds4441JbXh27ZDchdiDpIclEJU9tMbdK7ahg18suf8VbABcOJeqP2gtUbNkziVL
 1JPbEM7jlfYN3arsgDlDSFF2ISibIaqN6/hZQktR+wT74OjZDyX991hgUMU+nP6QChyi
 c7EaI7jwMaLmRNSWRnpPr/dGzEIE/aCoTXlwQ7SnIHYHrIXFxlAb40VJ5MNzsjwGaMks
 QGqFH3VH/n1O1V2CHr3CTSxxXg8YEQ/OE+cc3C6nKALmgrbTFPG1PWTFYLxC7akKCJmt
 ikAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=B3v9KtfRVLcMP3bzkZxOovc2P22Cupcw5q1+cH+SLAo=;
 b=TRv++C4W5OuXZHUDexBd+1/DJGTycErKbRpAqRoqyWckJMpoiqHZHQ/KxkkCODg9bW
 lz5A/RWi+VP5UKb75VVz2KrFipdn9vsxNTgIUDVEaGaGlWqMzYQb7cnZD9JZnZqt3uM8
 YeBTZycDExuB+tbqpbel3t0TA9mwUyUCpwJStmJKel/pf5wIuWYwUS5J0GxGanxXwAx5
 SynHPmli2Bg38tTMhjuJYtc1d8xw6SWSDjLxad4X0mEjEBwh6vqCWrqNiwXACl8mn/1Z
 du1tnTt741TAOJ2uzRUxfUyRQNVwt3b3fjKknEi2Dao5H2nZ64JGwGKwUP3g+pDrlhg9
 Dz3A==
X-Gm-Message-State: APjAAAXCxK0XAAi4zvEjOr03N4fZjMPpbv5vEcWxlLIwNIgRxJMdHUcK
 AkkysxardbD7PQxC4BzH6RYXog==
X-Google-Smtp-Source: APXvYqwyXUT3hWWx8NEhGL0PgApe2Pfhim+F10Cwc4bTEuGWAQvD6gYxsKyMrh8J7VDr2uOL45pbjA==
X-Received: by 2002:a63:9e12:: with SMTP id s18mr21041025pgd.380.1578928707867; 
 Mon, 13 Jan 2020 07:18:27 -0800 (PST)
Received: from localhost.localdomain (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id w8sm13844307pfn.186.2020.01.13.07.18.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 07:18:27 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Jiri Olsa <jolsa@kernel.org>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Namhyung Kim <namhyung@kernel.org>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Adrian Hunter <adrian.hunter@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/2] perf parse: Refactor struct perf_evsel_config_term
Date: Mon, 13 Jan 2020 23:18:05 +0800
Message-Id: <20200113151806.17854-1-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_071829_293853_9A164C4A 
X-CRM114-Status: GOOD (  14.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
fields 'callgraph', 'drv_cfg' and 'branch' as string pointers.  This
leads to the complex code logic for handling every type's string
separately, and it's hard to release string as a general way.

This patch refactors the structure to add a common field 'str' in the
'val' union as string pointer and remove the other three fields
'callgraph', 'drv_cfg' and 'branch'.  Without passing field name, the
patch simplifies the string handling with macro ADD_CONFIG_TERM_STR()
for string pointer assignment.

Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/arch/arm/util/cs-etm.c |  2 +-
 tools/perf/util/evsel.c           |  6 ++--
 tools/perf/util/evsel_config.h    |  4 +--
 tools/perf/util/parse-events.c    | 53 ++++++++++++++++++-------------
 4 files changed, 36 insertions(+), 29 deletions(-)

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
diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index a69e64236120..549abd43816f 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -808,12 +808,12 @@ static void apply_config_terms(struct evsel *evsel,
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
diff --git a/tools/perf/util/evsel_config.h b/tools/perf/util/evsel_config.h
index 1f8d2fe0b66e..b4a65201e4f7 100644
--- a/tools/perf/util/evsel_config.h
+++ b/tools/perf/util/evsel_config.h
@@ -36,18 +36,16 @@ struct perf_evsel_config_term {
 		u64	      period;
 		u64	      freq;
 		bool	      time;
-		char	      *callgraph;
-		char	      *drv_cfg;
 		u64	      stack_user;
 		int	      max_stack;
 		bool	      inherit;
 		bool	      overwrite;
-		char	      *branch;
 		unsigned long max_events;
 		bool	      percore;
 		bool	      aux_output;
 		u32	      aux_sample_size;
 		u64	      cfg_chg;
+		char	      *str;
 	} val;
 	bool weak;
 };
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index ed7c008b9c8b..64b394519a4c 100644
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
+#define ADD_CONFIG_TERM_VAL(__type, __name, __val)		\
+do {								\
+	ADD_CONFIG_TERM(__type);				\
+	__t->val.__name = __val;				\
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
+			ADD_CONFIG_TERM_VAL(PERIOD, period, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_SAMPLE_FREQ:
-			ADD_CONFIG_TERM(FREQ, freq, term->val.num);
+			ADD_CONFIG_TERM_VAL(FREQ, freq, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_TIME:
-			ADD_CONFIG_TERM(TIME, time, term->val.num);
+			ADD_CONFIG_TERM_VAL(TIME, time, term->val.num);
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
+			ADD_CONFIG_TERM_VAL(STACK_USER, stack_user, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_INHERIT:
-			ADD_CONFIG_TERM(INHERIT, inherit, term->val.num ? 1 : 0);
+			ADD_CONFIG_TERM_VAL(INHERIT, inherit, term->val.num ? 1 : 0);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_NOINHERIT:
-			ADD_CONFIG_TERM(INHERIT, inherit, term->val.num ? 0 : 1);
+			ADD_CONFIG_TERM_VAL(INHERIT, inherit, term->val.num ? 0 : 1);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_MAX_STACK:
-			ADD_CONFIG_TERM(MAX_STACK, max_stack, term->val.num);
+			ADD_CONFIG_TERM_VAL(MAX_STACK, max_stack, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_MAX_EVENTS:
-			ADD_CONFIG_TERM(MAX_EVENTS, max_events, term->val.num);
+			ADD_CONFIG_TERM_VAL(MAX_EVENTS, max_events, term->val.num);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_OVERWRITE:
-			ADD_CONFIG_TERM(OVERWRITE, overwrite, term->val.num ? 1 : 0);
+			ADD_CONFIG_TERM_VAL(OVERWRITE, overwrite, term->val.num ? 1 : 0);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_NOOVERWRITE:
-			ADD_CONFIG_TERM(OVERWRITE, overwrite, term->val.num ? 0 : 1);
+			ADD_CONFIG_TERM_VAL(OVERWRITE, overwrite, term->val.num ? 0 : 1);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_DRV_CFG:
-			ADD_CONFIG_TERM(DRV_CFG, drv_cfg, term->val.str);
+			ADD_CONFIG_TERM_STR(DRV_CFG, term->val.str);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_PERCORE:
-			ADD_CONFIG_TERM(PERCORE, percore,
-					term->val.num ? true : false);
+			ADD_CONFIG_TERM_VAL(PERCORE, percore,
+					    term->val.num ? true : false);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_AUX_OUTPUT:
-			ADD_CONFIG_TERM(AUX_OUTPUT, aux_output, term->val.num ? 1 : 0);
+			ADD_CONFIG_TERM_VAL(AUX_OUTPUT, aux_output, term->val.num ? 1 : 0);
 			break;
 		case PARSE_EVENTS__TERM_TYPE_AUX_SAMPLE_SIZE:
-			ADD_CONFIG_TERM(AUX_SAMPLE_SIZE, aux_sample_size, term->val.num);
+			ADD_CONFIG_TERM_VAL(AUX_SAMPLE_SIZE, aux_sample_size, term->val.num);
 			break;
 		default:
 			break;
@@ -1322,7 +1331,7 @@ static int get_config_chgs(struct perf_pmu *pmu, struct list_head *head_config,
 	}
 
 	if (bits)
-		ADD_CONFIG_TERM(CFG_CHG, cfg_chg, bits);
+		ADD_CONFIG_TERM_VAL(CFG_CHG, cfg_chg, bits);
 
 #undef ADD_CONFIG_TERM
 	return 0;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
