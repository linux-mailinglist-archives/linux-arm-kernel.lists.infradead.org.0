Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FED129D16
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 19:35:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=puYAoWQ/sd/mtDM89VEpg6QqHfPC2W/KsXXkY9UB89E=; b=Pn+846iDX/pZE/b3vB8hFh4Xvu
	PIiBANboqJypm63rcrBQ5WgZReJau3UtKNOvehTm9m/PwypJZV4yjbQsdYeJnASkAisOrxrNXesqK
	H1zhEQ6bTQPuL8JrRqS8TQauJuoBWYiobCGPRsUMmPusASrIySsr5LHxTe3yyKCUD/A5wG9jEaLSP
	j0hdeMt+ULd3tWzi4GhTejBS6S/q/JXtYDJ5oQhFtqCHzb18V4tTZ56RLPofW1JhQ4KvUBJtrY/Ol
	2v0yPwwBq+aRlF3WgmhLz/jgyZClTLAN5swu4kjTsJKigMHfDVceg65sQC/rnLsp512ap6QY8Nqok
	S3XflWEg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUE6O-0000w0-9n; Fri, 24 May 2019 17:35:32 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUE64-0000mf-Rq
 for linux-arm-kernel@lists.infradead.org; Fri, 24 May 2019 17:35:14 +0000
Received: by mail-pg1-x544.google.com with SMTP id w34so747647pga.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 May 2019 10:35:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=BWB6eRLRrW09Jmtj58um2VDPR3CNKPhCszqXJSm+Dmk=;
 b=GXkWbZ+NheHeIFUhuT8VcOsE4YVdLMSJOeDxOcX/3Ice4/hwLnosQ83zB3nGKQ04PK
 r/4puoli9IPCcOGB/jAn5Hx6r70r4Uxq3yEfo40yDl2RA5ODFCn7LSguzdWj2Xd6+bti
 WVRYeNouLoscxEnn59araoOtd7pCqO9Xy2gWz/v3aW5snziNw0MDhBWzkiStYm9WKKYz
 PPGs+PPQR5+91CpI0g/R/fV/hph9ZSm/0zsQJ6+zgGW+bn9QBcLAAhOOR+QMJZN+Vyj5
 h7smvSeZA3vGn2IqVeZR0kKnIPrZhDjvlziOWS376JpurSiD/W2ZnKSI81p4DhwOZ/K/
 LP0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=BWB6eRLRrW09Jmtj58um2VDPR3CNKPhCszqXJSm+Dmk=;
 b=UhSo2OjbPhkjQeC8QvjjbposaD01omfQQRxf/y+jgMC1/2k5BdzfG8YxyJDIvPnXZs
 HF2Rk1MTRcDR6nUG5tQegqG6SWK/VsVXzD/Xsb/GYXQqTWdYh19WnVXuhYFhXcOvC02F
 PzwK9m892acDoloU5ogdk4qdqy9FPQhLlvSrSwtOZoyv4Y9/xZYwoUzxHkKy4Kti8tzh
 a4zXJgx1W1BBdYvQA2e9eFq+eGB2JQzP+us84U60H2qMHHdQOqMM4i7ROYi1FAX+sJna
 wkELV6YnQXQMPW7mL7hswTfCCgq/bdZqeZ8x2cg6graFh6fbQcLD0Vfaz8LECl3ynO7A
 rBig==
X-Gm-Message-State: APjAAAU/88ND5+vloWzKE5zniAgPX9GCX3Vjya8NObER7StxVHlOeVXk
 TT2oT8E6ASGogY1crgW9JMbXXA==
X-Google-Smtp-Source: APXvYqxjyfN7L6TA4km5mRvqFh/gQ8/MLel8McEBWjeohNAtIknRUOGc03T/d0WWYPPByIoZihh03Q==
X-Received: by 2002:a17:90a:650c:: with SMTP id
 i12mr10978396pjj.44.1558719311167; 
 Fri, 24 May 2019 10:35:11 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id k13sm2809575pgr.90.2019.05.24.10.35.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 24 May 2019 10:35:10 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: acme@kernel.org
Subject: [PATCH v2 01/17] perf tools: Configure contextID tracing in CPU-wide
 mode
Date: Fri, 24 May 2019 11:34:52 -0600
Message-Id: <20190524173508.29044-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190524173508.29044-1-mathieu.poirier@linaro.org>
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_103512_904952_9C3E267C 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: suzuki.poulose@arm.com, peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, leo.yan@linaro.org, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When operating in CPU-wide mode being notified of contextID changes is
required so that the decoding mechanic is aware of the process context
switch.

Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>
---
 tools/perf/arch/arm/util/cs-etm.c | 126 +++++++++++++++++++++++++-----
 tools/perf/util/cs-etm.h          |  12 +++
 2 files changed, 119 insertions(+), 19 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index 911426721170..3912f0bf04ed 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -35,8 +35,100 @@ struct cs_etm_recording {
 	size_t			snapshot_size;
 };
 
+static const char *metadata_etmv3_ro[CS_ETM_PRIV_MAX] = {
+	[CS_ETM_ETMCCER]	= "mgmt/etmccer",
+	[CS_ETM_ETMIDR]		= "mgmt/etmidr",
+};
+
+static const char *metadata_etmv4_ro[CS_ETMV4_PRIV_MAX] = {
+	[CS_ETMV4_TRCIDR0]		= "trcidr/trcidr0",
+	[CS_ETMV4_TRCIDR1]		= "trcidr/trcidr1",
+	[CS_ETMV4_TRCIDR2]		= "trcidr/trcidr2",
+	[CS_ETMV4_TRCIDR8]		= "trcidr/trcidr8",
+	[CS_ETMV4_TRCAUTHSTATUS]	= "mgmt/trcauthstatus",
+};
+
 static bool cs_etm_is_etmv4(struct auxtrace_record *itr, int cpu);
 
+static int cs_etm_set_context_id(struct auxtrace_record *itr,
+				 struct perf_evsel *evsel, int cpu)
+{
+	struct cs_etm_recording *ptr;
+	struct perf_pmu *cs_etm_pmu;
+	char path[PATH_MAX];
+	int err = -EINVAL;
+	u32 val;
+
+	ptr = container_of(itr, struct cs_etm_recording, itr);
+	cs_etm_pmu = ptr->cs_etm_pmu;
+
+	if (!cs_etm_is_etmv4(itr, cpu))
+		goto out;
+
+	/* Get a handle on TRCIRD2 */
+	snprintf(path, PATH_MAX, "cpu%d/%s",
+		 cpu, metadata_etmv4_ro[CS_ETMV4_TRCIDR2]);
+	err = perf_pmu__scan_file(cs_etm_pmu, path, "%x", &val);
+
+	/* There was a problem reading the file, bailing out */
+	if (err != 1) {
+		pr_err("%s: can't read file %s\n",
+		       CORESIGHT_ETM_PMU_NAME, path);
+		goto out;
+	}
+
+	/*
+	 * TRCIDR2.CIDSIZE, bit [9-5], indicates whether contextID tracing
+	 * is supported:
+	 *  0b00000 Context ID tracing is not supported.
+	 *  0b00100 Maximum of 32-bit Context ID size.
+	 *  All other values are reserved.
+	 */
+	val = BMVAL(val, 5, 9);
+	if (!val || val != 0x4) {
+		err = -EINVAL;
+		goto out;
+	}
+
+	/* All good, let the kernel know */
+	evsel->attr.config |= (1 << ETM_OPT_CTXTID);
+	err = 0;
+
+out:
+
+	return err;
+}
+
+static int cs_etm_set_option(struct auxtrace_record *itr,
+			     struct perf_evsel *evsel, u32 option)
+{
+	int i, err = -EINVAL;
+	struct cpu_map *event_cpus = evsel->evlist->cpus;
+	struct cpu_map *online_cpus = cpu_map__new(NULL);
+
+	/* Set option of each CPU we have */
+	for (i = 0; i < cpu__max_cpu(); i++) {
+		if (!cpu_map__has(event_cpus, i) ||
+		    !cpu_map__has(online_cpus, i))
+			continue;
+
+		switch (option) {
+		case ETM_OPT_CTXTID:
+			err = cs_etm_set_context_id(itr, evsel, i);
+			if (err)
+				goto out;
+			break;
+		default:
+			goto out;
+		}
+	}
+
+	err = 0;
+out:
+	cpu_map__put(online_cpus);
+	return err;
+}
+
 static int cs_etm_parse_snapshot_options(struct auxtrace_record *itr,
 					 struct record_opts *opts,
 					 const char *str)
@@ -105,8 +197,9 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
 				container_of(itr, struct cs_etm_recording, itr);
 	struct perf_pmu *cs_etm_pmu = ptr->cs_etm_pmu;
 	struct perf_evsel *evsel, *cs_etm_evsel = NULL;
-	const struct cpu_map *cpus = evlist->cpus;
+	struct cpu_map *cpus = evlist->cpus;
 	bool privileged = (geteuid() == 0 || perf_event_paranoid() < 0);
+	int err = 0;
 
 	ptr->evlist = evlist;
 	ptr->snapshot_mode = opts->auxtrace_snapshot_mode;
@@ -241,19 +334,24 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
 
 	/*
 	 * In the case of per-cpu mmaps, we need the CPU on the
-	 * AUX event.
+	 * AUX event.  We also need the contextID in order to be notified
+	 * when a context switch happened.
 	 */
-	if (!cpu_map__empty(cpus))
+	if (!cpu_map__empty(cpus)) {
 		perf_evsel__set_sample_bit(cs_etm_evsel, CPU);
 
+		err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_CTXTID);
+		if (err)
+			goto out;
+	}
+
 	/* Add dummy event to keep tracking */
 	if (opts->full_auxtrace) {
 		struct perf_evsel *tracking_evsel;
-		int err;
 
 		err = parse_events(evlist, "dummy:u", NULL);
 		if (err)
-			return err;
+			goto out;
 
 		tracking_evsel = perf_evlist__last(evlist);
 		perf_evlist__set_tracking_event(evlist, tracking_evsel);
@@ -266,7 +364,8 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
 			perf_evsel__set_sample_bit(tracking_evsel, TIME);
 	}
 
-	return 0;
+out:
+	return err;
 }
 
 static u64 cs_etm_get_config(struct auxtrace_record *itr)
@@ -314,6 +413,8 @@ static u64 cs_etmv4_get_config(struct auxtrace_record *itr)
 	config_opts = cs_etm_get_config(itr);
 	if (config_opts & BIT(ETM_OPT_CYCACC))
 		config |= BIT(ETM4_CFG_BIT_CYCACC);
+	if (config_opts & BIT(ETM_OPT_CTXTID))
+		config |= BIT(ETM4_CFG_BIT_CTXTID);
 	if (config_opts & BIT(ETM_OPT_TS))
 		config |= BIT(ETM4_CFG_BIT_TS);
 	if (config_opts & BIT(ETM_OPT_RETSTK))
@@ -363,19 +464,6 @@ cs_etm_info_priv_size(struct auxtrace_record *itr __maybe_unused,
 	       (etmv3 * CS_ETMV3_PRIV_SIZE));
 }
 
-static const char *metadata_etmv3_ro[CS_ETM_PRIV_MAX] = {
-	[CS_ETM_ETMCCER]	= "mgmt/etmccer",
-	[CS_ETM_ETMIDR]		= "mgmt/etmidr",
-};
-
-static const char *metadata_etmv4_ro[CS_ETMV4_PRIV_MAX] = {
-	[CS_ETMV4_TRCIDR0]		= "trcidr/trcidr0",
-	[CS_ETMV4_TRCIDR1]		= "trcidr/trcidr1",
-	[CS_ETMV4_TRCIDR2]		= "trcidr/trcidr2",
-	[CS_ETMV4_TRCIDR8]		= "trcidr/trcidr8",
-	[CS_ETMV4_TRCAUTHSTATUS]	= "mgmt/trcauthstatus",
-};
-
 static bool cs_etm_is_etmv4(struct auxtrace_record *itr, int cpu)
 {
 	bool ret = false;
diff --git a/tools/perf/util/cs-etm.h b/tools/perf/util/cs-etm.h
index 0e97c196147a..826c9eedaf5c 100644
--- a/tools/perf/util/cs-etm.h
+++ b/tools/perf/util/cs-etm.h
@@ -103,6 +103,18 @@ struct intlist *traceid_list;
 #define KiB(x) ((x) * 1024)
 #define MiB(x) ((x) * 1024 * 1024)
 
+/*
+ * Create a contiguous bitmask starting at bit position @l and ending at
+ * position @h. For example
+ * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
+ *
+ * Carbon copy of implementation found in $KERNEL/include/linux/bitops.h
+ */
+#define GENMASK(h, l) \
+	(((~0UL) - (1UL << (l)) + 1) & (~0UL >> (BITS_PER_LONG - 1 - (h))))
+
+#define BMVAL(val, lsb, msb)	((val & GENMASK(msb, lsb)) >> lsb)
+
 #define CS_ETM_HEADER_SIZE (CS_HEADER_VERSION_0_MAX * sizeof(u64))
 
 #define __perf_cs_etmv3_magic 0x3030303030303030ULL
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
