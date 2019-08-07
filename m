Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DE9D84F06
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 16:45:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=e343LDtv9C9ISFt9u4CaS/7wCZu/mKE3WtXfngboCRs=; b=bf03cO1gH65GnH
	sUEDZxFvhCwIXY06T996q/E3qlFvEicn0vrIsw3Pm8dUkA6/+MBkfjIFuOkuopxeQq4g44E3oTWNT
	zJQWa0kPoBrNOuuXov1AzFOgEn+Tx4IhI0xornF5RnZH4yQZX3I1NPR95s14lsPqSTdwmHSemObM/
	2LH0zdefeFYPxCDVgBNCP30whB1g5LPLGS+Q4TreZSS51pYM/giaxCTu4g5yGMvrb3CzGGndoc6nS
	Jl+JZMcbEHPF4ILP0IYVy2QiT4pgwPApSDYzMLVmxkpKVXgWmcE543FDqry0POCRH1XDBj6qNlsp7
	eW2JtX1wOPSiB6Tjg7KQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvNBz-0002xw-Ne; Wed, 07 Aug 2019 14:45:32 +0000
Received: from mx0a-00190b01.pphosted.com ([2620:100:9001:583::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvNBT-0001VI-N8
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 14:45:01 +0000
Received: from pps.filterd (m0122332.ppops.net [127.0.0.1])
 by mx0a-00190b01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x77Eg0bv005324; Wed, 7 Aug 2019 15:44:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akamai.com;
 h=from : to : cc :
 subject : date : message-id : in-reply-to : references : mime-version :
 content-type; s=jan2016.eng;
 bh=cZNxg5irkUSEyA2JfD3bEMqKTJDQ1P5RdAASBRpr6Hk=;
 b=oG6RJdU+aUHiwyF4/TdZx6d/xiGRMre9/3aqDxe/i5VJ4ftfLrnHOJrHwllMilMKGZzb
 prCkRNpw3vuZwFOxP2kzOce+hhXqZaZxkpGO8Yvvw9AMyLqZ7+ekTSEZM4LZr8g+yNmZ
 IqpUcLmvNIrfq5kKKdnmIke8tWVtm97ETRZqMu9lYFDCpwTFFmTm8BvU/Zp02hkjL0ya
 hPuGDTu1enl4MzRCfLMhBh7VyXbcf/k4O/mtGcLjEOSGQTuf+RPKvz3pNfdVuLLhhE8k
 8zqs/2oI9rda8AC606caM5Bz2LfUSAwyWvoD+GRZnQuazIZCF7dEsSJEQOJnNBxzqJzh gg== 
Received: from prod-mail-ppoint1 (prod-mail-ppoint1.akamai.com [184.51.33.18]
 (may be forged))
 by mx0a-00190b01.pphosted.com with ESMTP id 2u52ah2ree-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 15:44:50 +0100
Received: from pps.filterd (prod-mail-ppoint1.akamai.com [127.0.0.1])
 by prod-mail-ppoint1.akamai.com (8.16.0.27/8.16.0.27) with SMTP id
 x77EWhb8024489; Wed, 7 Aug 2019 10:44:49 -0400
Received: from email.msg.corp.akamai.com ([172.27.123.33])
 by prod-mail-ppoint1.akamai.com with ESMTP id 2u55kwbsgv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 07 Aug 2019 10:44:48 -0400
Received: from usma1ex-cas5.msg.corp.akamai.com (172.27.123.53) by
 usma1ex-dag1mb6.msg.corp.akamai.com (172.27.123.65) with Microsoft SMTP
 Server (TLS) id 15.0.1473.3; Wed, 7 Aug 2019 10:44:46 -0400
Received: from igorcastle.kendall.corp.akamai.com (172.29.170.135) by
 usma1ex-cas5.msg.corp.akamai.com (172.27.123.53) with Microsoft SMTP Server
 id 15.0.1473.3 via Frontend Transport; Wed, 7 Aug 2019 07:44:41 -0700
Received: by igorcastle.kendall.corp.akamai.com (Postfix, from userid 29659)
 id 8B2C961D78; Wed,  7 Aug 2019 10:44:39 -0400 (EDT)
From: Igor Lubashev <ilubashe@akamai.com>
To: <linux-kernel@vger.kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, Alexey Budankov
 <alexey.budankov@linux.intel.com>
Subject: [PATCH v3 2/4] perf: Use CAP_SYS_ADMIN with perf_event_paranoid checks
Date: Wed, 7 Aug 2019 10:44:15 -0400
Message-ID: <ad56df5452eeafb99dda9fc3d30f0f487aace503.1565188228.git.ilubashe@akamai.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1565188228.git.ilubashe@akamai.com>
References: <cover.1565188228.git.ilubashe@akamai.com>
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-08-07_03:, , signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 malwarescore=0
 phishscore=0 bulkscore=0 spamscore=0 mlxscore=0 mlxlogscore=999
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.0.1-1906280000 definitions=main-1908070155
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-07_03:2019-08-07,2019-08-07 signatures=0
X-Proofpoint-Spam-Details: rule=notspam policy=default score=0 suspectscore=0
 spamscore=0 mlxscore=0
 impostorscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 lowpriorityscore=0 malwarescore=0 mlxlogscore=999 clxscore=1015
 classifier=spam adjust=0 reason=mlx scancount=1 engine=8.12.0-1906280000
 definitions=main-1908070157
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_074459_941008_E89BCBCC 
X-CRM114-Status: GOOD (  17.79  )
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Igor Lubashev <ilubashe@akamai.com>,
 James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org
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
index 5cb07e8cb296..b87a1ca2968f 100644
--- a/tools/perf/arch/arm/util/cs-etm.c
+++ b/tools/perf/arch/arm/util/cs-etm.c
@@ -18,6 +18,7 @@
 #include "../../perf.h"
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
index 00915b8fd05b..29275a0544cd 100644
--- a/tools/perf/arch/arm64/util/arm-spe.c
+++ b/tools/perf/arch/arm64/util/arm-spe.c
@@ -12,6 +12,7 @@
 #include <time.h>
 
 #include "../../util/cpumap.h"
+#include "../../util/event.h"
 #include "../../util/evsel.h"
 #include "../../util/evlist.h"
 #include "../../util/session.h"
@@ -66,7 +67,7 @@ static int arm_spe_recording_options(struct auxtrace_record *itr,
 			container_of(itr, struct arm_spe_recording, itr);
 	struct perf_pmu *arm_spe_pmu = sper->arm_spe_pmu;
 	struct evsel *evsel, *arm_spe_evsel = NULL;
-	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
+	bool privileged = perf_event_paranoid_check(-1);
 	struct evsel *tracking_evsel;
 	int err;
 
diff --git a/tools/perf/arch/x86/util/intel-bts.c b/tools/perf/arch/x86/util/intel-bts.c
index 7b23318ebd7b..56a76142e9fd 100644
--- a/tools/perf/arch/x86/util/intel-bts.c
+++ b/tools/perf/arch/x86/util/intel-bts.c
@@ -12,6 +12,7 @@
 #include <linux/zalloc.h>
 
 #include "../../util/cpumap.h"
+#include "../../util/event.h"
 #include "../../util/evsel.h"
 #include "../../util/evlist.h"
 #include "../../util/session.h"
@@ -107,7 +108,7 @@ static int intel_bts_recording_options(struct auxtrace_record *itr,
 	struct perf_pmu *intel_bts_pmu = btsr->intel_bts_pmu;
 	struct evsel *evsel, *intel_bts_evsel = NULL;
 	const struct perf_cpu_map *cpus = evlist->core.cpus;
-	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
+	bool privileged = perf_event_paranoid_check(-1);
 
 	btsr->evlist = evlist;
 	btsr->snapshot_mode = opts->auxtrace_snapshot_mode;
diff --git a/tools/perf/arch/x86/util/intel-pt.c b/tools/perf/arch/x86/util/intel-pt.c
index 218a4e694618..43d5088ee824 100644
--- a/tools/perf/arch/x86/util/intel-pt.c
+++ b/tools/perf/arch/x86/util/intel-pt.c
@@ -558,7 +558,7 @@ static int intel_pt_recording_options(struct auxtrace_record *itr,
 	bool have_timing_info, need_immediate = false;
 	struct evsel *evsel, *intel_pt_evsel = NULL;
 	const struct perf_cpu_map *cpus = evlist->core.cpus;
-	bool privileged = geteuid() == 0 || perf_event_paranoid() < 0;
+	bool privileged = perf_event_paranoid_check(-1);
 	u64 tsc_bit;
 	int err;
 
diff --git a/tools/perf/util/evsel.c b/tools/perf/util/evsel.c
index 64bc32ed6dfa..eafc134bf17c 100644
--- a/tools/perf/util/evsel.c
+++ b/tools/perf/util/evsel.c
@@ -279,7 +279,7 @@ struct evsel *perf_evsel__new_idx(struct perf_event_attr *attr, int idx)
 
 static bool perf_event_can_profile_kernel(void)
 {
-	return geteuid() == 0 || perf_event_paranoid() == -1;
+	return perf_event_paranoid_check(-1);
 }
 
 struct evsel *perf_evsel__new_cycles(bool precise)
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
