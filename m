Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51B8A5D892
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 02:12:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fTe9FheBAYg3rJKRp43dtdW2+YCRpVhv/fV1xK+r3xs=; b=AyeBPHo+3mcKHb
	ZrHv8LgLjNo/96B9XDPe7EpgoDigjLT1vAOQw8SnjEE7dpn9l/CAhiUp35O0g/0eHZmG/YbZL8SN9
	PH5wimi37GzKTQBy/vmKwdmv113kMQ+OsH6t6yv31OIw7/2qWCUA8bViKgZRMoatcUewer5B2ph+9
	rFu6dPssDK2RqJt5TnIWIf0zl64f/qSkHcem1rWKnqNY1Zm1143oC8lQyGL2cb18o4QD5o/XGNuvB
	sl4fzQOz2M9pSHI2bCjDmJQj3HNpKmU2Cp/MQvsM6c4sYNmyITbabE4fWQCe6qv4vaxrI/MYTBfMZ
	V8CTqoXAxfYaj6Ka/g2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiSsn-0005Uh-3z; Wed, 03 Jul 2019 00:12:21 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiSsX-0005TD-9X
 for linux-arm-kernel@lists.infradead.org; Wed, 03 Jul 2019 00:12:06 +0000
Received: from pps.filterd (m0050093.ppops.net [127.0.0.1])
 by m0050093.ppops.net-00190b01. (8.16.0.27/8.16.0.27) with SMTP id
 x630BlWH004278; Wed, 3 Jul 2019 01:11:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=Wx+VqX0G/B6f6OxzVjnoXtU/3HHWXnxmAKOKaEK5PZc=;
 b=aJc93AKBWszGJ6JGlYGN5/LjbzB6ZqhTGlH0q54AKoFVrZa4bB5AxxJvp4DKNF5jV+4O
 q8dWI94GvA95Fo2Hl+P3GdVTtjh6NEqhcc6SYHM3sYoltAJOKT4w9epTkkUMx+48QvXI
 ojK3lENbnX6kTAEqIJrlMVBZKKa7Jn/XxWX/lbpjZPS4AakqVFT57mMobGinTbOYCD66
 YxWvMnjjtNtwMczOST/oH+nwL7CO3dmvL3i2tWrRdXZf+X8Apf/5tNjfLGUEA6r/cWIp
 vNGF+LMAL7CHaoFWp3uVtHGb/lBY9KO2uZJplHC1hdo9Bd991MMvvKACl6/Fh94Jdjzh Tw== 
Received: from prod-mail-ppoint1 (prod-mail-ppoint1.akamai.com [184.51.33.18]
 (may be forged))
 by m0050093.ppops.net-00190b01. with ESMTP id 2tg2tkusct-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 03 Jul 2019 01:11:54 +0100
Received: from pps.filterd (prod-mail-ppoint1.akamai.com [127.0.0.1])
 by prod-mail-ppoint1.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x6302Nbm018809; Tue, 2 Jul 2019 20:11:53 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.34])
 by prod-mail-ppoint1.akamai.com with ESMTP id 2te3awgjft-2
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Tue, 02 Jul 2019 20:11:50 -0400
Received: from USMA1EX-DAG1MB5.msg.corp.akamai.com (172.27.123.105) by
 usma1ex-dag3mb2.msg.corp.akamai.com (172.27.123.59) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 2 Jul 2019 20:10:50 -0400
Received: from USMA1EX-CAS1.msg.corp.akamai.com (172.27.123.30) by
 usma1ex-dag1mb5.msg.corp.akamai.com (172.27.123.105) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Tue, 2 Jul 2019 20:10:49 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 USMA1EX-CAS1.msg.corp.akamai.com (172.27.123.30) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Tue, 2 Jul 2019 20:10:49 -0400
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id A555F61E44; Tue,  2 Jul 2019 20:10:47 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: <linux-kernel@vger.kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: [PATCH 2/3] perf: Use CAP_SYS_ADMIN with perf_event_paranoid checks
Date: Tue, 2 Jul 2019 20:10:04 -0400
Message-ID: <1562112605-6235-3-git-send-email-ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
References: <1562112605-6235-1-git-send-email-ilubashe@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-02_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1810050000 definitions=main-1907020268
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-02_12:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0
 priorityscore=1501 malwarescore=0
 suspectscore=0 phishscore=0 bulkscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 mlxscore=0 impostorscore=0 mlxlogscore=999 adultscore=0
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.0.1-1810050000
 definitions=main-1907030001
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_171205_446700_8FE7A2DA 
X-CRM114-Status: GOOD (  16.00  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2620:100:9001:583:0:0:0:1 listed in] [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Igor Lubashev <ilubashe@akamai.com>, James
 Morris <jmorris@namei.org>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kernel is using CAP_SYS_ADMIN instead of euid==0 to override
perf_event_paranoid check. Make perf do the same.

Signed-off-by: Igor Lubashev <ilubashe@akamai.com>
---
 tools/perf/arch/arm/util/cs-etm.c    | 3 ++-
 tools/perf/arch/arm64/util/arm-spe.c | 3 ++-
 tools/perf/arch/x86/util/intel-bts.c | 3 ++-
 tools/perf/arch/x86/util/intel-pt.c  | 2 +-
 tools/perf/util/evsel.c              | 2 +-
 5 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
index 911426721170..e004ba7ad957 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -17,6 +17,7 @@
 #include "../../perf.h"
 #include "../../util/auxtrace.h"
 #include "../../util/cpumap.h"
+#include "../../util/event.h"
 #include "../../util/evlist.h"
 #include "../../util/evsel.h"
 #include "../../util/pmu.h"
@@ -106,7 +107,7 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
 	struct perf_pmu *cs_etm_pmu = ptr->cs_etm_pmu;
 	struct perf_evsel *evsel, *cs_etm_evsel = NULL;
 	const struct cpu_map *cpus = evlist->cpus;
-	bool privileged = (geteuid() == 0 || perf_event_paranoid() < 0);
+	bool privileged = perf_event_paranoid_check(-1);
 
 	ptr->evlist = evlist;
 	ptr->snapshot_mode = opts->auxtrace_snapshot_mode;
diff --git a/tools/perf/arch/arm64/util/arm-spe.c b/tools/perf/arch/arm64/util/arm-spe.c
index 5ccfce87e693..f5ec6953c69c 100644
--- a/tools/perf/arch/arm64/util/arm-spe.c
+++ b/tools/perf/arch/arm64/util/arm-spe.c
@@ -11,6 +11,7 @@
 #include <time.h>
 
 #include "../../util/cpumap.h"
+#include "../../util/event.h"
 #include "../../util/evsel.h"
 #include "../../util/evlist.h"
 #include "../../util/session.h"
@@ -65,7 +66,7 @@ static int arm_spe_recording_options(struct auxtrace_record *itr,
 			container_of(itr, struct arm_spe_recording, itr);
 	struct perf_pmu *arm_spe_pmu = sper->arm_spe_pmu;
 	struct perf_evsel *evsel, *arm_spe_evsel = NULL;
-	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
+	bool privileged = perf_event_paranoid_check(-1);
 	struct perf_evsel *tracking_evsel;
 	int err;
 
diff --git a/tools/perf/arch/x86/util/intel-bts.c b/tools/perf/arch/x86/util/intel-bts.c
index e6d4d9591c79..fe7cecdb494d 100644
--- a/tools/perf/arch/x86/util/intel-bts.c
+++ b/tools/perf/arch/x86/util/intel-bts.c
@@ -11,6 +11,7 @@
 #include <linux/log2.h>
 
 #include "../../util/cpumap.h"
+#include "../../util/event.h"
 #include "../../util/evsel.h"
 #include "../../util/evlist.h"
 #include "../../util/session.h"
@@ -107,7 +108,7 @@ static int intel_bts_recording_options(struct auxtrace_record *itr,
 	struct perf_pmu *intel_bts_pmu = btsr->intel_bts_pmu;
 	struct perf_evsel *evsel, *intel_bts_evsel = NULL;
 	const struct cpu_map *cpus = evlist->cpus;
-	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
+	bool privileged = perf_event_paranoid_check(-1);
 
 	btsr->evlist = evlist;
 	btsr->snapshot_mode = opts->auxtrace_snapshot_mode;
diff --git a/tools/perf/arch/x86/util/intel-pt.c b/tools/perf/arch/x86/util/intel-pt.c
index 1869f62a10cd..44d2194fdab3 100644
--- a/tools/perf/arch/x86/util/intel-pt.c
+++ b/tools/perf/arch/x86/util/intel-pt.c
@@ -557,7 +557,7 @@ static int intel_pt_recording_options(struct auxtrace_record *itr,
 	bool have_timing_info, need_immediate = false;
 	struct perf_evsel *evsel, *intel_pt_evsel = NULL;
 	const struct cpu_map *cpus = evlist->cpus;
-	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
+	bool privileged = perf_event_paranoid_check(-1);
 	u64 tsc_bit;
 	int err;
 
diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index 4a5947625c5c..ce28d890d6bf 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -277,7 +277,7 @@ struct perf_evsel *perf_evsel__new_idx(struct perf_event_attr *attr, int idx)
 
 static bool perf_event_can_profile_kernel(void)
 {
-	return geteuid() == 0 || perf_event_paranoid() == -1;
+	return perf_event_paranoid_check(-1);
 }
 
 struct perf_evsel *perf_evsel__new_cycles(bool precise)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
