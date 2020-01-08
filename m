Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABBB41344DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 15:21:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=lWQzn+siqGxCypaKHwhMQEBH9QUM1i1JWDhR8LrDaMI=; b=bS1f3sZ6ae5p1Vr+iVp0n2dS1e
	/CEmpacmmSL/m4EiHHIrTRlo9GbP8cQUMNfW6zKRGr3ZoBFOcp4t1lZpzelrm+IGPUnYq1MEPi5tf
	CzM4KLQTnqzdBYN6zF6PadqdFosfSvCP0228MWwyJvWUADdtZAWerIMoD7/K5fyZfvHVEr7r7n6H0
	xzHdZtYJCapbGYJqLn43gntu497tvo8h263ARnTKN7krp76N3GkWdTc8/QQcKssYXlLf6Y788TbyE
	6IpwJQ38In+eFjYftKBURZqr4G5WRbCsRr6yPaAuOKqpPiInqus4HTOUgi3fJIdbSGgTJgvl7ayhb
	RzGpA0Zw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipCD3-0006gr-E3; Wed, 08 Jan 2020 14:21:21 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipCCd-0006Wc-La
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 14:20:58 +0000
Received: by mail-pf1-x443.google.com with SMTP id i6so1722359pfc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 Jan 2020 06:20:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=u544TYKlKP+HlqPPdgbDDIkBZkVA5cDgelYhK98BAZ0=;
 b=U+IgsMnj6rkSh3PfmGvRFx6cvRHuYi+XYNlQo5C8i7GA/jgU6bQ9k1i0STeNwbWEdF
 og309iCMpI37t+WNo5Vx1S7tIvli5J9EQfN7iMpwIYQ2noRv7UiKQSmGI7tZ6fKLF/uW
 FlXSjpJ95z3tSdENcAaqBxNaPFPfJ1cAgL0U47/TnC57gKZbmV85xZH1N6fwmdZzXQmG
 IFfF1aQzzxW2pGYr33CgQ1dcnuCfgCdkdHDmvgos56Qaa5EHW7MNbuOwFKxpFGh8lJNT
 nKTWg6anfdPKN9LTggT9hTQW/+QwZboENsqP0SKGEHebvi6Cc/iTO/XDIt4AF+mmGcpV
 yzHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=u544TYKlKP+HlqPPdgbDDIkBZkVA5cDgelYhK98BAZ0=;
 b=i4kHI5RR7gzvbOVOCmYksU7DABAli6dmt0jya8CrQ0sGFHDCBjm1sDlwFUyk/K7zNv
 +CAMv2kUDf8yShZ4YMsO7ILkPQrjxvUll3kXYHOQYGKcwfYVPsBOTT3PiJsK7VGZAlzZ
 hTfbC1pRPWMK7e+dnG0p0HyYS6ICHJliK6RvKOZocFu08HhmH27MiwwgsWzegE2WYt3j
 hlNjIosXsfZUx8KD2pJD9XB8xxHlPrmhY2D7z3IggMhHIzkxKWEK2NIYHgT+6vK54+TT
 OZKn3MCM2BWn9H1kLH59RcN2Ym7/sbgd4bqKYeAzkMqh1jLoEulVdKOANpSi7G3UKVe3
 0vTw==
X-Gm-Message-State: APjAAAXC74ogbVqpJK3k9lCyDJyLMUBxCbFLBK8UUkApATBrzVtqSt19
 zgnDhAjWciFiqO9/IyWxv1ZnfA==
X-Google-Smtp-Source: APXvYqx1fwHOK4iS/egLicKEdKsCMKdi21vy2KuUzlPNh9V6QlzeYlYq0LfIfM7IGqMU6a02BXAmIg==
X-Received: by 2002:a62:e411:: with SMTP id r17mr4981389pfh.119.1578493254423; 
 Wed, 08 Jan 2020 06:20:54 -0800 (PST)
Received: from localhost.localdomain (li519-153.members.linode.com.
 [66.175.222.153])
 by smtp.gmail.com with ESMTPSA id a18sm3515054pjq.30.2020.01.08.06.20.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Jan 2020 06:20:54 -0800 (PST)
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
Subject: [PATCH v4 2/2] perf parse: Copy string to perf_evsel_config_term
Date: Wed,  8 Jan 2020 22:20:10 +0800
Message-Id: <20200108142010.11269-2-leo.yan@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108142010.11269-1-leo.yan@linaro.org>
References: <20200108142010.11269-1-leo.yan@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_062055_749554_04A110EA 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
index 5f27f6b7ed94..6b56b35876e7 100644
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
index 4e5b3ebf09cf..12af1bca0cad 100644
--- a/tools/perf/util/evsel_config.h
+++ b/tools/perf/util/evsel_config.h
@@ -32,6 +32,7 @@ enum evsel_term_type {
 struct perf_evsel_config_term {
 	struct list_head      list;
 	enum evsel_term_type  type;
+	bool		      free_str;
 	union {
 		u64	      num;
 		char	      *str;
diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
index caf38518762f..3353e9e8b134 100644
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
