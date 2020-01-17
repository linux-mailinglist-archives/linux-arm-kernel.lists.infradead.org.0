Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 138BA1403B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 06:55:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VhKeS0uT4u4+s8Qin24pyBCE3RuyZpMfif1pb1mTtuY=; b=SZpbHHW8hCAHR5rHQzW0CM92/1
	deRL0q7Rm/LK6d8t0LQJR0IzE9+K85wljp3OBnRFQ/GswN+beNSsVX1uF0N+n5ED0A2XgIQCrYm3H
	LbGB7den9B27krv9n3nZqHdJOqqAJR+CEG5yiIMxJoL/g78Nx6M4dkCMNLe5vl+hBCtVdR5Qo2vJI
	5zMhCxTiHmQdxQCRToVGAffGSWjNqTnhePNdV3BEJEzVd68W28UC14rUjBIYAU4u6Hq8Pw1L7dM7k
	ckOmxM0BSdSUnGEin79kpmR8fOw9i5Y2cRLbxtvR3i1aly3zzdk486wtu7DzojJd92P3s1JUj2zW6
	HWegG3fQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isKbE-0006Lp-9K; Fri, 17 Jan 2020 05:55:16 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isKay-0006HI-4T
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 05:55:01 +0000
Received: by mail-pj1-x1044.google.com with SMTP id u63so3863942pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 Jan 2020 21:54:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=cJRwCEmirG6Qk7nYW+0FE/1CNK6//qT3tTI8E5PNpMA=;
 b=lPlIfRpToRKgwDkPLokcX3NialrfQAvg9asfk1gs2Zx1kn3jO2wHdJLtP7kOjDx1vo
 DzcMnLR+5lt3t6kDZfMBPC+btbYiD3Zt+gHLYr+/iFxh43hpbFKFRNG/HJyYDyNZ1jGL
 S+z0oRu2dis/qFoPJ2R/s1LD81i8c4eVvgMdL7EKOJtMaE6mx/b20uo4sSiGTj9ZWAf1
 L1TzFtdMZ52szOnTUbuEvcmycdR/Bh9qyz4ntN3GmlyaxrQfCtFdV7jnAcOcy9lW+n/C
 SH/21uf//u7pbhOxPgcOxzPk4UwBAFacNesNvX9EYlwe3BCdjcEvxn896i33hVxP2Feu
 bFUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=cJRwCEmirG6Qk7nYW+0FE/1CNK6//qT3tTI8E5PNpMA=;
 b=XaBlyObWKJ+pfWmAn0GrSc17htTBKRf4V+8ZoywETnKClVTHm5YnlvtRRLXRR/YGO5
 cI46WreTLgqo5LAHOqWxjHA21/htEDuHOJCV5+bw8aZENU6rdsMmn652bsLX721s5rCB
 Qsc1uBZ25UhacFncylCBf4Mgvq1IewmmsUMOnDtDD/kyPB0vP2Ig8wgKhROPhZuZRj7P
 NI9533qtDdagW3KDs8TQMIU0ZgeGGr5v21gJT5P6K+Wn5FL813tpuwwdISxoB43TwKIu
 RwPQXpgCPjknhyto+DCXjsWjlk2HFbu8+Qe9VFdjATZoIhsslNHmwjEjoX6EmEYEyEzH
 zcWg==
X-Gm-Message-State: APjAAAVtJUZwHictdnxv7vj1Khioc9MgREP1N0IKUdAfLYC2zZ4/GVHK
 Wp0bebJwEYP4SKrMpJsuPKGx7A==
X-Google-Smtp-Source: APXvYqyeWf6hLgPEdGlQtK3uj/y/j+bNPfn5Psp4slZjMK15FqcEaoQ97V8/BD11DRWuoBQSV3NTlw==
X-Received: by 2002:a17:902:b617:: with SMTP id
 b23mr36778643pls.285.1579240499250; 
 Thu, 16 Jan 2020 21:54:59 -0800 (PST)
Received: from localhost.localdomain (li96-55.members.linode.com.
 [74.207.254.55])
 by smtp.gmail.com with ESMTPSA id u7sm27578364pfh.128.2020.01.16.21.54.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 16 Jan 2020 21:54:58 -0800 (PST)
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Ingo Molnar <mingo@redhat.com>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@kernel.org>, Namhyung Kim <namhyung@kernel.org>,
 Ian Rogers <irogers@google.com>, Andi Kleen <ak@linux.intel.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Mike Leach <mike.leach@linaro.org>
Subject: [PATCH v6 2/2] perf parse: Copy string to perf_evsel_config_term
Date: Fri, 17 Jan 2020 13:52:51 +0800
Message-Id: <20200117055251.24058-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200117055251.24058-1-leo.yan@linaro.org>
References: <20200117055251.24058-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_215500_176672_B8B5E434 
X-CRM114-Status: GOOD (  16.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Acked-by: Jiri Olsa <jolsa@kernel.org>
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
index f59f3c8da473..c01ba6f8fdad 100644
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
