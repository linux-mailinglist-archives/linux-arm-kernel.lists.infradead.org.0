Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E666F1ADB64
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=avw+zkCsKydxVgF/QDVBjQ8CpQhBWBT7XJ6lueYII5U=; b=hsX9SduhS9Hzs7
	zu5dAs39Egk7huH2pUd8rlHjUSgW6I7Xk59AtV7DMUzAA/epBvYiWfC+QFfVXsCdFuur7SeofUR3c
	G5fzGfPO3ZZb4ErsXHrz++5VXtITmjQzTCIwLnmc5tsfohP3AJNV8MX8uJUknb9qL+DYhRurkLUiZ
	CUjIyJgHLs9amZRfR+TsmLsXcpGljvvQ942DT/ziRT/8RmuIn0RyCqqwkg2liApx5NeHoylhQmHOc
	p8ZEWefGDd1mDpkaXZzCyGPTJQWQ+2e+D7sJBSFqXmHVUO93bB4+7TPgYaOECyVwqinrFofjkjeqD
	E2pNvyLFUQkYtxzre49Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOVl-00018I-KW; Fri, 17 Apr 2020 10:46:17 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOUz-0000hj-AT
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:31 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id B04BA5E66BAE7093905A;
 Fri, 17 Apr 2020 18:45:26 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:45:19 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>
Subject: [RFC PATCH v2 05/13] perf vendor events arm64: Add Architected events
 smmuv3-pmcg.json
Date: Fri, 17 Apr 2020 18:41:16 +0800
Message-ID: <1587120084-18990-6-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034529_525100_25FCB2AC 
X-CRM114-Status: GOOD (  11.21  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
 linuxarm@huawei.com, zhangshaokun@hisilicon.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
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
index 000000000000..7ceb2b4372fa
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
+        "PublicDescription": "TLB miss caused by incomingtransaction or (ATS or non-ATS) translation request",
+        "EventCode": "0x02",
+        "EventName": "smmuv3_pmcg.TLB_MISS",
+        "BriefDescription": "TLB miss caused by incomingtransaction or (ATS or non-ATS) translation request"
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
