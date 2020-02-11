Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C7D215918A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:06:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=udFf98HLvvU6rWZY0hQ93CbUaSC+UYDoFNYawprxh7Y=; b=aU6pm/NrPQO3MMcE2iykH2k2IQ
	kn/+n43soQSoSjP0J0/BZnKq6h7XAvXcyw+j5HYNO2qOxsGXlYOr4P9z9XD6iXtef75xYwJsr1/15
	DVxKzUN8uPBbLLkpWsgGB/O4Y3GqOWjqgPr0DuzoI763LH0GFgtsVDD2dFZHkvCJz+pKmrPNNXJo+
	iSmMW33edvsqWbj4hKNmDPxwrf/ZNbBRxmBYC+o7n5q/A4EWM1GS8lTJMhURBooItNYjMyAlfnVkk
	8D2tst2ql2zLIOHr0izd4PxJgz4NGsvV+F7U69IIAbM5rSywJ/ZMvHWpuT7dB0gh/QR9QKmhYTwsg
	aGhujKFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1WB3-00058b-RS; Tue, 11 Feb 2020 14:06:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1WA3-0003l7-0p
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:05:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 539F31063;
 Tue, 11 Feb 2020 06:05:10 -0800 (PST)
Received: from e121896.warwick.arm.com (e121896.warwick.arm.com [10.32.36.33])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id
 6CB103F68F; Tue, 11 Feb 2020 06:05:07 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: jolsa@redhat.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v4 4/4] perf tools: Support "branch-misses:pp" on arm64
Date: Tue, 11 Feb 2020 14:04:45 +0000
Message-Id: <20200211140445.21986-5-james.clark@arm.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200211140445.21986-1-james.clark@arm.com>
References: <20200210122509.GA2005279@krava>
 <20200211140445.21986-1-james.clark@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_060511_231137_F3F8E631 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, Will Deacon <will@kernel.org>,
 Tan Xiaojun <tanxiaojun@huawei.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tan Xiaojun <tanxiaojun@huawei.com>

At the suggestion of James Clark, use spe to support the precise
ip of some events. Currently its support event is:
branch-misses.

Example usage:

$ ./perf record -e branch-misses:pp dd if=/dev/zero of=/dev/null count=10000
(:p/pp/ppp is same for this case.)

$ ./perf report --stdio
("--stdio is not necessary")

--------------------------------------------------------------------
...
 # Samples: 14  of event 'branch-misses:pp'
 # Event count (approx.): 14
 #
 # Children      Self  Command  Shared Object      Symbol
 # ........  ........  .......  .................  ..........................
 #
    14.29%    14.29%  dd       [kernel.kallsyms]  [k] __arch_copy_from_user
    14.29%    14.29%  dd       libc-2.28.so       [.] _dl_addr
     7.14%     7.14%  dd       [kernel.kallsyms]  [k] __free_pages
     7.14%     7.14%  dd       [kernel.kallsyms]  [k] __pi_memcpy
     7.14%     7.14%  dd       [kernel.kallsyms]  [k] pagecache_get_page
     7.14%     7.14%  dd       [kernel.kallsyms]  [k] unmap_single_vma
     7.14%     7.14%  dd       dd                 [.] 0x00000000000025ec
     7.14%     7.14%  dd       ld-2.28.so         [.] _dl_lookup_symbol_x
     7.14%     7.14%  dd       ld-2.28.so         [.] check_match
     7.14%     7.14%  dd       libc-2.28.so       [.] __mpn_rshift
     7.14%     7.14%  dd       libc-2.28.so       [.] _nl_intern_locale_data
     7.14%     7.14%  dd       libc-2.28.so       [.] read_alias_file
...
--------------------------------------------------------------------

Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
Suggested-by: James Clark <James.Clark@arm.com>
Tested-by: Qi Liu <liuqi115@hisilicon.com>
Signed-off-by: James Clark <james.clark@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Jiri Olsa <jolsa@redhat.com>
Cc: Tan Xiaojun <tanxiaojun@huawei.com>
Cc: Al Grant <al.grant@arm.com>
Cc: Namhyung Kim <namhyung@kernel.org>
---
 tools/perf/arch/arm/util/auxtrace.c | 38 +++++++++++++++++++++++++++++
 tools/perf/builtin-record.c         |  5 ++++
 tools/perf/util/arm-spe.c           |  9 +++++++
 tools/perf/util/arm-spe.h           |  3 +++
 tools/perf/util/auxtrace.h          |  6 +++++
 5 files changed, 61 insertions(+)

diff --git a/tools/perf/arch/arm/util/auxtrace.c b/tools/perf/arch/arm/util/auxtrace.c
index 0a6e75b8777a..18f0ea7556e7 100644
--- a/tools/perf/arch/arm/util/auxtrace.c
+++ b/tools/perf/arch/arm/util/auxtrace.c
@@ -10,11 +10,25 @@
 
 #include "../../util/auxtrace.h"
 #include "../../util/debug.h"
+#include "../../util/env.h"
 #include "../../util/evlist.h"
 #include "../../util/pmu.h"
 #include "cs-etm.h"
 #include "arm-spe.h"
 
+#define SPE_ATTR_TS_ENABLE		BIT(0)
+#define SPE_ATTR_PA_ENABLE		BIT(1)
+#define SPE_ATTR_PCT_ENABLE		BIT(2)
+#define SPE_ATTR_JITTER			BIT(16)
+#define SPE_ATTR_BRANCH_FILTER		BIT(32)
+#define SPE_ATTR_LOAD_FILTER		BIT(33)
+#define SPE_ATTR_STORE_FILTER		BIT(34)
+
+#define SPE_ATTR_EV_RETIRED		BIT(1)
+#define SPE_ATTR_EV_CACHE		BIT(3)
+#define SPE_ATTR_EV_TLB			BIT(5)
+#define SPE_ATTR_EV_BRANCH		BIT(7)
+
 static struct perf_pmu **find_all_arm_spe_pmus(int *nr_spes, int *err)
 {
 	struct perf_pmu **arm_spe_pmus = NULL;
@@ -108,3 +122,27 @@ struct auxtrace_record
 	*err = 0;
 	return NULL;
 }
+
+void auxtrace__preprocess_evlist(struct evlist *evlist)
+{
+	struct evsel *evsel;
+	struct perf_pmu *pmu;
+
+	evlist__for_each_entry(evlist, evsel) {
+		/* Currently only supports precise_ip for branch-misses on arm64 */
+		if (!strcmp(perf_env__arch(evlist->env), "arm64")
+			&& evsel->core.attr.config == PERF_COUNT_HW_BRANCH_MISSES
+			&& evsel->core.attr.precise_ip)
+		{
+			pmu = perf_pmu__find("arm_spe_0");
+			if (pmu) {
+				evsel->pmu_name = pmu->name;
+				evsel->core.attr.type = pmu->type;
+				evsel->core.attr.config = SPE_ATTR_TS_ENABLE
+							| SPE_ATTR_BRANCH_FILTER;
+				evsel->core.attr.config1 = SPE_ATTR_EV_BRANCH;
+				evsel->core.attr.precise_ip = 0;
+			}
+		}
+	}
+}
\ No newline at end of file
diff --git a/tools/perf/builtin-record.c b/tools/perf/builtin-record.c
index 4c301466101b..3bc61f03d572 100644
--- a/tools/perf/builtin-record.c
+++ b/tools/perf/builtin-record.c
@@ -2451,6 +2451,11 @@ int cmd_record(int argc, const char **argv)
 
 	argc = parse_options(argc, argv, record_options, record_usage,
 			    PARSE_OPT_STOP_AT_NON_OPTION);
+
+	if (auxtrace__preprocess_evlist) {
+		auxtrace__preprocess_evlist(rec->evlist);
+	}
+
 	if (quiet)
 		perf_quiet_option();
 
diff --git a/tools/perf/util/arm-spe.c b/tools/perf/util/arm-spe.c
index 4ef22a0775a9..b21806c97dd8 100644
--- a/tools/perf/util/arm-spe.c
+++ b/tools/perf/util/arm-spe.c
@@ -778,6 +778,15 @@ arm_spe_synth_events(struct arm_spe *spe, struct perf_session *session)
 	attr.sample_id_all = evsel->core.attr.sample_id_all;
 	attr.read_format = evsel->core.attr.read_format;
 
+	/* If it is in the precise ip mode, there is no need to
+	 * synthesize new events. */
+	if (!strncmp(evsel->name, "branch-misses", 13)) {
+		spe->sample_branch_miss = true;
+		spe->branch_miss_id = evsel->core.id[0];
+
+		return 0;
+	}
+
 	/* create new id val to be a fixed offset from evsel id */
 	id = evsel->core.id[0] + 1000000000;
 
diff --git a/tools/perf/util/arm-spe.h b/tools/perf/util/arm-spe.h
index 98d3235781c3..8b1fb191d03a 100644
--- a/tools/perf/util/arm-spe.h
+++ b/tools/perf/util/arm-spe.h
@@ -20,6 +20,8 @@ enum {
 union perf_event;
 struct perf_session;
 struct perf_pmu;
+struct evlist;
+struct evsel;
 
 struct auxtrace_record *arm_spe_recording_init(int *err,
 					       struct perf_pmu *arm_spe_pmu);
@@ -28,4 +30,5 @@ int arm_spe_process_auxtrace_info(union perf_event *event,
 				  struct perf_session *session);
 
 struct perf_event_attr *arm_spe_pmu_default_config(struct perf_pmu *arm_spe_pmu);
+void arm_spe_precise_ip_support(struct evlist *evlist, struct evsel *evsel);
 #endif
diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
index 80617b0d044d..4f89a3a31ab2 100644
--- a/tools/perf/util/auxtrace.h
+++ b/tools/perf/util/auxtrace.h
@@ -584,6 +584,7 @@ void auxtrace__dump_auxtrace_sample(struct perf_session *session,
 int auxtrace__flush_events(struct perf_session *session, struct perf_tool *tool);
 void auxtrace__free_events(struct perf_session *session);
 void auxtrace__free(struct perf_session *session);
+void auxtrace__preprocess_evlist(struct evlist *evlist) __attribute__((weak));
 
 #define ITRACE_HELP \
 "				i:	    		synthesize instructions events\n"		\
@@ -728,6 +729,11 @@ void auxtrace__free(struct perf_session *session __maybe_unused)
 {
 }
 
+static inline
+void auxtrace__preprocess_evlist(struct evlist *evlist __maybe_unused)
+{
+}
+
 static inline
 int auxtrace_index__write(int fd __maybe_unused,
 			  struct list_head *head __maybe_unused)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
