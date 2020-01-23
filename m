Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F003146DE0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jl+Yuv50y7itz2YHvMI6oiW10+nhGr9kX4ZXu0vvd3o=; b=j2gMdWYmEPenQk
	7WwXbSmRV0G3p4SKMFScqSNkGMipvKlfCd8S+N+W9CJ/DTekD8UHEYXVgoKFREUQm7abIL7DW2S//
	Jvr6BI/hdBBfsmNE9+bwt4jFdUq0q0wbGxg2kZ0LfZzyW7JgLKvWKASeHgRbE4oglqtOmCO8FecUB
	wzu7Bn1mgWvT32WSDLBJVlN7nEqp12QTdeBR5+yeSgR3mYRtTIUQylOQTOkATR/LhyyKw/HN/LJ71
	bkNlzgpRU1eO149KJiUiwWjUdY2QkpNyzt81zK+5AIw0cwiGACmouUMbgHORrql6TtOlRnJk0uyw8
	5sBv5DGZpuy4OU/GLHVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuf37-0006ii-Hc; Thu, 23 Jan 2020 16:09:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuf1t-0005tn-TW
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:08:27 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C42B4106F;
 Thu, 23 Jan 2020 08:08:24 -0800 (PST)
Received: from e112479-lin.arm.com (unknown [10.37.9.147])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C8E223F68E;
 Thu, 23 Jan 2020 08:08:19 -0800 (PST)
From: James Clark <james.clark@arm.com>
To: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/7] perf tools: Support "branch-misses:pp" on arm64
Date: Thu, 23 Jan 2020 16:07:31 +0000
Message-Id: <20200123160734.3775-5-james.clark@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200123160734.3775-1-james.clark@arm.com>
References: <20200123160734.3775-1-james.clark@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_080826_200371_DF668676 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
 wxf.wang@hisilicon.com, Peter Zijlstra <peterz@infradead.org>,
 Will Deacon <will@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 suzuki.poulose@arm.com, Arnaldo Carvalho de Melo <acme@kernel.org>,
 gengdongjiu@huawei.com, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, liuqi115@hisilicon.com,
 James Clark <james.clark@arm.com>, huawei.libin@huawei.com,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, liwei391@huawei.com,
 Tan Xiaojun <tanxiaojun@huawei.com>
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
 tools/perf/util/arm-spe.c | 41 +++++++++++++++++++++++++++++++++++++++
 tools/perf/util/arm-spe.h |  3 +++
 tools/perf/util/evlist.c  |  2 ++
 3 files changed, 46 insertions(+)

diff --git a/tools/perf/util/arm-spe.c b/tools/perf/util/arm-spe.c
index c99814c58745..0fcaefd386a6 100644
--- a/tools/perf/util/arm-spe.c
+++ b/tools/perf/util/arm-spe.c
@@ -35,6 +35,19 @@
 
 #define MAX_TIMESTAMP (~0ULL)
 
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
 struct arm_spe {
 	struct auxtrace			auxtrace;
 	struct auxtrace_queues		queues;
@@ -778,6 +791,15 @@ arm_spe_synth_events(struct arm_spe *spe, struct perf_session *session)
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
 
@@ -899,3 +921,22 @@ int arm_spe_process_auxtrace_info(union perf_event *event,
 	free(spe);
 	return err;
 }
+
+void arm_spe_precise_ip_support(struct evlist *evlist, struct evsel *evsel)
+{
+	struct perf_pmu *pmu;
+
+	/* Currently only supports precise_ip for branch-misses on arm64 */
+	if (!strcmp(perf_env__arch(evlist->env), "arm64")
+			&& evsel->core.attr.config == PERF_COUNT_HW_BRANCH_MISSES
+			&& evsel->core.attr.precise_ip) {
+		pmu = perf_pmu__find("arm_spe_0");
+		if (pmu) {
+			evsel->pmu_name = pmu->name;
+			evsel->core.attr.type = pmu->type;
+			evsel->core.attr.config = SPE_ATTR_TS_ENABLE
+						| SPE_ATTR_BRANCH_FILTER;
+			evsel->core.attr.config1 = SPE_ATTR_EV_BRANCH;
+		}
+	}
+}
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
diff --git a/tools/perf/util/evlist.c b/tools/perf/util/evlist.c
index 1548237b6558..b9c7e5271611 100644
--- a/tools/perf/util/evlist.c
+++ b/tools/perf/util/evlist.c
@@ -9,6 +9,7 @@
 #include <errno.h>
 #include <inttypes.h>
 #include <poll.h>
+#include "arm-spe.h"
 #include "cpumap.h"
 #include "util/mmap.h"
 #include "thread_map.h"
@@ -179,6 +180,7 @@ void perf_evlist__splice_list_tail(struct evlist *evlist,
 	struct evsel *evsel, *temp;
 
 	__evlist__for_each_entry_safe(list, temp, evsel) {
+		arm_spe_precise_ip_support(evlist, evsel);
 		list_del_init(&evsel->core.node);
 		evlist__add(evlist, evsel);
 	}
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
