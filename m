Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FB11ADB67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 12:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QwTMXHCp9Ao2/sk/Z1A5wByJSvPujPBj2oMTwD01++g=; b=h1lcXBvLJcNr/I
	ALf6b19rtRxVIOGutoY0+WgEE1Lj65nAY2DEwe0OjIsBa43oDna6W6lO4WwUNaheFh5xbXblpDtYN
	CbF8RA+9K4ARtcX+6Ot1fWkfowWLbJTYx2n/DJfPb1noHb7WUDbeJwM1IDiEbGHwqUEJw7uvQndvr
	/mtHgP+Ay8diki6ReU3Q+aqAG+b4gM7fBoT7Cm8tlc2TsHMrBGB7JAZ+6rhYXve6YORGi6smLO02m
	QpSieOINL0/+BkFvtCw2uBcX2SpviUAxtzH0ZKlpt27POuB2TcEGcPxVgSXdLYKBg13Qaj6KWrLfd
	hYm7XTJrInYoG0ni0wtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPOWS-0001lE-EB; Fri, 17 Apr 2020 10:47:00 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPOUz-0000fi-9d
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 10:45:32 +0000
Received: from DGGEMS411-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 8DCDC2D37064B8C8AEBB;
 Fri, 17 Apr 2020 18:45:26 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS411-HUB.china.huawei.com (10.3.19.211) with Microsoft SMTP Server id
 14.3.487.0; Fri, 17 Apr 2020 18:45:20 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>
Subject: [RFC PATCH v2 06/13] perf vendor events arm64: Add hip08 SMMUv3 PMCG
 events
Date: Fri, 17 Apr 2020 18:41:17 +0800
Message-ID: <1587120084-18990-7-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_034529_546619_FA8B8B59 
X-CRM114-Status: UNSURE (   9.00  )
X-CRM114-Notice: Please train this message.
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

Add the SMMUv3 PMCG (Performance Monitor Event Group) events for hip08
platform.

This contains a mix of architected and IMP def events

Signed-off-by: John Garry <john.garry@huawei.com>
---
 .../arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json    | 42 ++++++++++++++++++++++
 1 file changed, 42 insertions(+)
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json

diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json
new file mode 100644
index 000000000000..f2a1cb0332a6
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json
@@ -0,0 +1,42 @@
+[
+   {
+	    "ArchStdEvent": "smmuv3_pmcg.CYCLES"
+	    "Compat": "hip08"
+   },
+   {
+	    "ArchStdEvent": "smmuv3_pmcg.TRANSACTION"
+	    "Compat": "hip08"
+   },
+   {
+	    "ArchStdEvent": "smmuv3_pmcg.TLB_MISS"
+	    "Compat": "hip08"
+   },
+   {
+	    "ArchStdEvent": "smmuv3_pmcg.CONFIG_CACHE_MISS"
+	    "Compat": "hip08"
+   },
+   {
+	    "ArchStdEvent": "smmuv3_pmcg.TRANS_TABLE_WALK_ACCESS"
+	    "Compat": "hip08"
+   },
+   {
+	    "ArchStdEvent": "smmuv3_pmcg.CONFIG_STRUCT_ACCESS"
+	    "Compat": "hip08"
+   },
+   {
+	    "ArchStdEvent": "smmuv3_pmcg.PCIE_ATS_TRANS_RQ"
+	    "Compat": "hip08"
+   },
+   {
+	    "ArchStdEvent": "smmuv3_pmcg.PCIE_ATS_TRANS_PASSED"
+	    "Compat": "hip08"
+   },
+   {
+	    "EventCode": "0x8a",
+	    "EventName": "smmuv3_pmcg.L1_TLB",
+	    "BriefDescription": "SMMUv3 PMCG L1 TABLE transation",
+	    "PublicDescription": "SMMUv3 PMCG L1 TABLE transation",
+	    "Unit": "smmuv3_pmcg",
+	    "Compat": "hip08"
+   },
+]
-- 
2.16.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
