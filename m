Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [198.137.202.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49308A1D6F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 16:43:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o7CqMiypKMMMBFo9eqiPARegSSiI339jOUq7umU2ZeY=; b=mn9+lz32UL1Z97
	lxXkqYJdKgjlj0M0PA2D+t1stIclWxbUcNFV7fvRStNa0LuN44LudpQZKfO34FC+psphLuDE7XptI
	mJWhDuOn6x5sjqYQtuZosLCR9ncHZ5ZgcAgNDw82DefI7UBc231Az91MV0z3BoC3xfbUU7DO4Mhz2
	FPfBeD4M6FegbkPB2eaT3hSUlR76pb+tnvqL93rhsdbEzOb5YhlW4iHWMqh7mrCmAE+IAkoe+YzG1
	QIb8V2mTNnsdsUzvj9RORlvxzUOrNeRcDJePXkDncqv1tR40oAhv1lSNAxW+K7ti+JRmSsAU/ATAH
	9eMfwdJOPllYtlTpnrcA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3Ldw-0001sB-Dh; Thu, 29 Aug 2019 14:43:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3LaZ-0008Iq-UL
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 14:39:54 +0000
Received: from quaco.ghostprotocols.net (unknown [179.97.35.50])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ADA492341B;
 Thu, 29 Aug 2019 14:39:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1567089591;
 bh=eYjq6GUXpRYwgKHl/LiHXRqmXoJV3CT31W26/C70iDM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=04m8JHHWi/iiVzDc0izQaftbw8yY0DBgbtTriY6areeoD+GdE1G4+Inz7WB1Ghjh5
 86bvKCXICTEtyGH8AdON9BbdGeFXpBCKaqtoOc1G7xuA/eBrtWJBJyLi6NEDIU4VRY
 TKfLq2sYkl4dZJfrpWzFzrHU60yZ5W/HYmtd8KXU=
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Ingo Molnar <mingo@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>
Subject: [PATCH 03/37] perf tools: Use CAP_SYS_ADMIN with perf_event_paranoid
 checks
Date: Thu, 29 Aug 2019 11:38:43 -0300
Message-Id: <20190829143917.29745-4-acme@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190829143917.29745-1-acme@kernel.org>
References: <20190829143917.29745-1-acme@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_073952_568983_E813A0D9 
X-CRM114-Status: GOOD (  11.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Arnaldo Carvalho de Melo <acme@redhat.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki Poulouse <suzuki.poulose@arm.com>, Clark Williams <williams@redhat.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, linux-kernel@vger.kernel.org,
 James Morris <jmorris@namei.org>, linux-perf-users@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@kernel.org>,
 Namhyung Kim <namhyung@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Igor Lubashev <ilubashe@akamai.com>

The kernel is using CAP_SYS_ADMIN instead of euid==0 to override
perf_event_paranoid check. Make perf do the same.

Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
Acked-by: Jiri Olsa <jolsa@kernel.org>
Tested-by: Mathieu Poirier <mathieu.poirier@linaro.org>
Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org> # coresight part
Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: Alexey Budankov <alexey.budankov@linux.intel.com>
Cc: James Morris <jmorris@namei.org>
Cc: Namhyung Kim <namhyung@kernel.org>
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: Suzuki Poulouse <suzuki.poulose@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Link: http://lkml.kernel.org/r/1566869956-7154-3-git-send-email-ilubashe@akamai.com
Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
Signed-off-by: Arnaldo Carvalho de Melo <acme@redhat.com>
---
 tools/perf/arch/arm/util/cs-etm.c    | 3 ++-
 tools/perf/arch/arm64/util/arm-spe.c | 3 ++-
 tools/perf/arch/x86/util/intel-bts.c | 3 ++-
 tools/perf/arch/x86/util/intel-pt.c  | 2 +-
 tools/perf/util/evsel.c              | 2 +-
 5 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index a185dab2d903..5d856edc412b 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -18,6 +18,7 @@
 #include "../../util/record.h"
 #include "../../util/auxtrace.h"
 #include "../../util/cpumap.h"
+#include "../../util/event.h"
 #include "../../util/evlist.h"
 #include "../../util/evsel.h"
 #include "../../util/pmu.h"
@@ -254,7 +255,7 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
 	struct perf_pmu *cs_etm_pmu = ptr->cs_etm_pmu;
 	struct evsel *evsel, *cs_etm_evsel = NULL;
 	struct perf_cpu_map *cpus = evlist->core.cpus;
-	bool privileged = (geteuid() == 0 || perf_event_paranoid() < 0);
+	bool privileged = perf_event_paranoid_check(-1);
 	int err = 0;
 
 	ptr->evlist = evlist;
diff --git a/tools/perf/arch/arm64/util/arm-spe.c b/tools/perf/arch/arm64/util/arm-spe.c
index cdd5c0c84183..c7b38f09260f 100644
--- a/tools/perf/arch/arm64/util/arm-spe.c
+++ b/tools/perf/arch/arm64/util/arm-spe.c
@@ -12,6 +12,7 @@
 #include <time.h>
 
 #include "../../util/cpumap.h"
+#include "../../util/event.h"
 #include "../../util/evsel.h"
 #include "../../util/evlist.h"
 #include "../../util/session.h"
@@ -67,7 +68,7 @@ static int arm_spe_recording_options(struct auxtrace_record *itr,
 			container_of(itr, struct arm_spe_recording, itr);
 	struct perf_pmu *arm_spe_pmu = sper->arm_spe_pmu;
 	struct evsel *evsel, *arm_spe_evsel = NULL;
-	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
+	bool privileged = perf_event_paranoid_check(-1);
 	struct evsel *tracking_evsel;
 	int err;
 
diff --git a/tools/perf/arch/x86/util/intel-bts.c b/tools/perf/arch/x86/util/intel-bts.c
index 1f2cf612bc9c..16d26ea701ad 100644
--- a/tools/perf/arch/x86/util/intel-bts.c
+++ b/tools/perf/arch/x86/util/intel-bts.c
@@ -12,6 +12,7 @@
 #include <linux/zalloc.h>
 
 #include "../../util/cpumap.h"
+#include "../../util/event.h"
 #include "../../util/evsel.h"
 #include "../../util/evlist.h"
 #include "../../util/session.h"
@@ -108,7 +109,7 @@ static int intel_bts_recording_options(struct auxtrace_record *itr,
 	struct perf_pmu *intel_bts_pmu = btsr->intel_bts_pmu;
 	struct evsel *evsel, *intel_bts_evsel = NULL;
 	const struct perf_cpu_map *cpus = evlist->core.cpus;
-	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
+	bool privileged = perf_event_paranoid_check(-1);
 
 	btsr->evlist = evlist;
 	btsr->snapshot_mode = opts->auxtrace_snapshot_mode;
diff --git a/tools/perf/arch/x86/util/intel-pt.c b/tools/perf/arch/x86/util/intel-pt.c
index 44cfe72c1a4c..746981c82a16 100644
--- a/tools/perf/arch/x86/util/intel-pt.c
+++ b/tools/perf/arch/x86/util/intel-pt.c
@@ -579,7 +579,7 @@ static int intel_pt_recording_options(struct auxtrace_record *itr,
 	bool have_timing_info, need_immediate = false;
 	struct evsel *evsel, *intel_pt_evsel = NULL;
 	const struct perf_cpu_map *cpus = evlist->core.cpus;
-	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
+	bool privileged = perf_event_paranoid_check(-1);
 	u64 tsc_bit;
 	int err;
 
diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index fa676355559e..7c704b8f0e5c 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -282,7 +282,7 @@ struct evsel *perf_evsel__new_idx(struct perf_event_attr *attr, int idx)
 
 static bool perf_event_can_profile_kernel(void)
 {
-	return geteuid() == 0 || perf_event_paranoid() == -1;
+	return perf_event_paranoid_check(-1);
 }
 
 struct evsel *perf_evsel__new_cycles(bool precise)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
