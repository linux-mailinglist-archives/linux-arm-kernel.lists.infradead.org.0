Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7CD1394A4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 16:19:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nGUU8Lu6SfOK3cnN6QavxpO1l7ovRswvHct6159KcOI=; b=Q1+ZXEa6shjgmdfu+7UjPivxmt
	UeE2K2uFmGMA/vcCQhT/cdg81fQ/Sl2ltSNkUf2a3pHS7FMrAEQ50xxCYTAUG7Yg3uFZ3CpflqKmO
	Qz4qtxjAP46NKmmXdF6GoB1Acqb6aQjwZ22LyVvNk5QSoIkdFXWt/cVTpgDX42Y5Ocdeu3Yq6EmvO
	OoJtdn9Z8bPevBR/r1klEY9mqMKhbyqHHzrIfkst0ypkW+xJK97MM+F8MAG9Hi0TX0yOM4r5AMEPr
	gc2x1a0JPuQvF30XBKs99gu1c5qkIl1xcW4DHPUuy9jtOkHq0Koa2joMtx0sjrxJeyT94y5E1IypQ
	/W5yfO+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir1Uh-0006QR-U0; Mon, 13 Jan 2020 15:19:07 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir1UE-000664-Jp
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 15:18:40 +0000
Received: by mail-pg1-x543.google.com with SMTP id x8so4844088pgk.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Jan 2020 07:18:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L8mTqANxv5DHSW2L9Rb94kZJyHHKwSNLneAjemBS510=;
 b=mxTio0Y7CRyOEVA5QUx8Zmc+d9pNPUYeqHPZoahnw+cqEMz4oQ3qDsQEyF0Ij/7kDp
 IgJqVAMLKqsfx+JKU+EV9qk8cm/M9jBJyTVwgDdFT53RgpMxJReg6FXyoztl7afd0EsL
 VBiucLJxb3ypOgYzaXGrxUuzZcPtH04UpOHzfKWUnJonBN2owFIasHl7O2+eG5sOBLaj
 yW7bhcF0WN/JTbGBZytFNCpx9LBUjB6YnIreLH4MmZ02lBF+UsfE+g9s/eZlvyGyw0jI
 TdKJ2Sm8C+Mil73jor6INuX6VWbt3TpqrStwVYveyfuTRBHMbYwvaxXLpzBvEOD4zgwE
 L+2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L8mTqANxv5DHSW2L9Rb94kZJyHHKwSNLneAjemBS510=;
 b=XX1j4AJo6wgswClns+ec4V642gcAhvYhO3fga5n4rbue3gmLAqJacKSBygS48qiNlA
 2EhAimG+jjRQ1+VBWDEh+yOtJ9QlmIkexAiEKtl8dMylBxuZagy5MAJrFev7Cry2yCgx
 /T57qJ8kz4N555K/kB2uTlUVvwut2+O6zRvCxvJjsK/WcZLS9CeSGQw+059jcBbsBqbf
 tDu858ZN9byTX3QqwvyzEl5v4ZkImuCQEgpqPOsJBcPrrfnuDblH9KiR2zd4lsFcqsgZ
 L7QS2w1fEC7ECoLu8USicAaA3nEWtUJkSST3kpODXy7vfJX59O2f/EXxcHHQ834tCSYE
 wqpw==
X-Gm-Message-State: APjAAAWPo6i0+neQAIutMRgQ61YPaXJknbFnjdY0Bf7UXqDU9OPrEfUR
 yzd+lX8ROKtO8qUGIepbjws2XQ==
X-Google-Smtp-Source: APXvYqwDfc0YRYN28OgL6fIvpz43tf0oXRiK76qKO5DOWbG7gHtvSrm8Sum5l4RoRoBSw82CPBvKIw==
X-Received: by 2002:a63:646:: with SMTP id 67mr21302788pgg.150.1578928715832; 
 Mon, 13 Jan 2020 07:18:35 -0800 (PST)
Received: from localhost.localdomain (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id w8sm13844307pfn.186.2020.01.13.07.18.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 13 Jan 2020 07:18:35 -0800 (PST)
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
Subject: [PATCH v5 2/2] perf parse: Copy string to perf_evsel_config_term
Date: Mon, 13 Jan 2020 23:18:06 +0800
Message-Id: <20200113151806.17854-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200113151806.17854-1-leo.yan@linaro.org>
References: <20200113151806.17854-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_071838_910353_08675B6F 
X-CRM114-Status: GOOD (  16.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

perf with CoreSight fails to record trace data with command:

  perf record -e cs_etm/@tmc_etr0/u --per-thread ls
  failed to set sink "" on event cs_etm/@tmc_etr0/u with 21 (Is a
  directory)/perf/

This failure is root caused with the commit 1dc925568f01 ("perf
parse: Add a deep delete for parse event terms").

The log shows, cs_etm fails to parse the sink attribution; cs_etm event
relies on the event configuration to pass sink name, but the event
specific configuration data cannot be passed properly with flow:

  get_config_terms()
    ADD_CONFIG_TERM(DRV_CFG, term->val.str);
      __t->val.str = term->val.str;
        `> __t->val.str is assigned to term->val.str;

  parse_events_terms__purge()
    parse_events_term__delete()
      zfree(&term->val.str);
        `> term->val.str is freed and assigned to NULL pointer;

  cs_etm_set_sink_attr()
    sink = __t->val.str;
      `> sink string has been freed.

To fix this issue, in the function get_config_terms(), this patch
changes to use strdup() for allocation a new duplicate string rather
than directly assignment string pointer.

This patch addes a new field 'free_str' in the data structure
perf_evsel_config_term; 'free_str' is set to true when the union is used
as a string pointer; thus it can tell perf_evsel__free_config_terms() to
free the string.

Fixes: 1dc925568f01 ("perf parse: Add a deep delete for parse event terms")
Suggested-by: Jiri Olsa <jolsa@kernel.org>
Signed-off-by: Leo Yan <leo.yan@linaro.org>
---
 tools/perf/util/evsel.c        | 2 ++
 tools/perf/util/evsel_config.h | 1 +
 tools/perf/util/parse-events.c | 7 ++++++-
 3 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index 549abd43816f..6fe9e28180e5 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -1265,6 +1265,8 @@ static void perf_evsel__free_config_terms(struct evsel *evsel)
 
 	list_for_each_entry_safe(term, h, &evsel->config_terms, list) {
 		list_del_init(&term->list);
+		if (term->free_str)
+			free(term->val.str);
 		free(term);
 	}
 }
diff --git a/tools/perf/util/evsel_config.h b/tools/perf/util/evsel_config.h
index b4a65201e4f7..e026ab67b008 100644
--- a/tools/perf/util/evsel_config.h
+++ b/tools/perf/util/evsel_config.h
@@ -32,6 +32,7 @@ enum evsel_term_type {
 struct perf_evsel_config_term {
 	struct list_head      list;
 	enum evsel_term_type  type;
+	bool		      free_str;
 	union {
 		u64	      period;
 		u64	      freq;
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index 64b394519a4c..cc36c1f2e7eb 100644
--- a/tools/perf/util/parse-events.c
+++ b/tools/perf/util/parse-events.c
@@ -1240,7 +1240,12 @@ do {								\
 #define ADD_CONFIG_TERM_STR(__type, __val)			\
 do {								\
 	ADD_CONFIG_TERM(__type);				\
-	__t->val.str = __val;					\
+	__t->val.str = strdup(__val);				\
+	if (!__t->val.str) {					\
+		zfree(&__t);					\
+		return -ENOMEM;					\
+	}							\
+	__t->free_str = true;					\
 } while (0)
 
 	struct parse_events_term *term;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
