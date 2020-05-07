Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1152B1C8A02
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 14:03:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y2wRbXbA4kpUQtEqm6eqcHVA33qLO0/EH3yGwlmGb6U=; b=HdVLPFVrvNv9w2
	jPb9VHNxcWZIX8rQGKG+CEZH19bvtEEMXR9xWQ/ARChOzv0qCeFwNtStr1lTL+w92CCw9eqvVIXe4
	JWe+qzrwox8fMHW5Gi37cWQjKL9ZFvaoV2gkDQxgGpe6cBa51A1NmQEyemtHHhCnX+JUQpYs9gSfZ
	rq14pS+iyA+22OR+ZlgErNf1yt4mlhT0UHq8FsfGg6Km+usCK8KUdwqwqsga2WVK2OscR6DlWRsqC
	cBWwHAXjMBdHJDH42jOkHBS/jU3AncZJd6we50kMswt0EVXJVW+YgO9qAq1qhmAWyRhooOIltonPZ
	wHBI+B5AjtowaPAzJcMw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWfFK-0008St-Uh; Thu, 07 May 2020 12:03:23 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWfEK-0007by-D4
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 12:02:22 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id A63FE10C1DAEE116B8E2;
 Thu,  7 May 2020 20:02:04 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.487.0; Thu, 7 May 2020 20:01:57 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>
Subject: [PATCH RFC v3 04/12] perf vendor events arm64: Add Architected events
 smmuv3-pmcg.json
Date: Thu, 7 May 2020 19:57:43 +0800
Message-ID: <1588852671-61996-5-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_050220_632868_E35F5E87 
X-CRM114-Status: GOOD (  11.75  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: irogers@google.com, ak@linux.intel.com, linux-kernel@vger.kernel.org,
 John Garry <john.garry@huawei.com>, qiangqing.zhang@nxp.com,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add JSON for Architected events from [0], Section 10.3 .

[0] https://static.docs.arm.com/ihi0070/a/IHI_0070A_SMMUv3.pdf

Signed-off-by: John Garry <john.garry@huawei.com>
---
 tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json | 58 +++++++++++++++++++++++
 tools/perf/pmu-events/jevents.c                   |  2 +
 2 files changed, 60 insertions(+)
 create mode 100644 tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json

diff --git a/tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json b/tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json
new file mode 100644
index 000000000000..8a59ce48bf06
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/smmuv3-pmcg.json
@@ -0,0 +1,58 @@
+[
+    {
+        "PublicDescription": "Clock cycles",
+        "EventCode": "0x00",
+        "EventName": "smmuv3_pmcg.CYCLES",
+        "BriefDescription": "Clock cycles"
+        "Unit": "smmuv3_pmcg",
+    },
+    {
+        "PublicDescription": "Transaction",
+        "EventCode": "0x01",
+        "EventName": "smmuv3_pmcg.TRANSACTION",
+        "BriefDescription": "Transaction"
+        "Unit": "smmuv3_pmcg",
+    },
+    {
+        "PublicDescription": "TLB miss caused by incoming transaction or (ATS or non-ATS) translation request",
+        "EventCode": "0x02",
+        "EventName": "smmuv3_pmcg.TLB_MISS",
+        "BriefDescription": "TLB miss caused by incoming transaction or (ATS or non-ATS) translation request"
+        "Unit": "smmuv3_pmcg",
+    },
+    {
+        "PublicDescription": "Configuration cache miss caused by transaction or(ATS or non-ATS)translation request",
+        "EventCode": "0x03",
+        "EventName": "smmuv3_pmcg.CONFIG_CACHE_MISS",
+        "BriefDescription": "Configuration cache miss caused by transaction or(ATS or non-ATS)translation request"
+        "Unit": "smmuv3_pmcg",
+    },
+    {
+        "PublicDescription": "Translation table walk access",
+        "EventCode": "0x04",
+        "EventName": "smmuv3_pmcg.TRANS_TABLE_WALK_ACCESS",
+        "BriefDescription": "Translation table walk access"
+        "Unit": "smmuv3_pmcg",
+    },
+    {
+        "PublicDescription": "Configuration structure access",
+        "EventCode": "0x05",
+        "EventName": "smmuv3_pmcg.CONFIG_STRUCT_ACCESS",
+        "BriefDescription": "Configuration structure access"
+        "Unit": "smmuv3_pmcg",
+    },
+    {
+        "PublicDescription": "PCIe ATS Translation Request received",
+        "EventCode": "0x06",
+        "EventName": "smmuv3_pmcg.PCIE_ATS_TRANS_RQ",
+        "BriefDescription": "PCIe ATS Translation Request received"
+        "Unit": "smmuv3_pmcg",
+    },
+    {
+        "PublicDescription": "PCIe ATS Translated Transaction passed through SMMU",
+        "EventCode": "0x07",
+        "EventName": "smmuv3_pmcg.PCIE_ATS_TRANS_PASSED",
+        "BriefDescription": "PCIe ATS Translated Transaction passed through SMMU"
+        "Unit": "smmuv3_pmcg",
+    }
+]
diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
index acb6b77bddc0..76a84ec2ffc8 100644
--- a/tools/perf/pmu-events/jevents.c
+++ b/tools/perf/pmu-events/jevents.c
@@ -256,6 +256,8 @@ static struct map {
 	{ "hisi_sccl,ddrc", "hisi_sccl,ddrc" },
 	{ "hisi_sccl,hha", "hisi_sccl,hha" },
 	{ "hisi_sccl,l3c", "hisi_sccl,l3c" },
+	/* it's not realistic to keep adding these, we need something more scalable ... */
+	{ "smmuv3_pmcg", "smmuv3_pmcg" },
 	{ "L3PMC", "amd_l3" },
 	{}
 };
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
