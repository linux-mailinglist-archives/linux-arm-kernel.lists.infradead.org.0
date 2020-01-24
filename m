Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF861148A00
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 15:41:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mIL2WLL0MAZO/uM/Ghy7FJUkQgm1ZduVW72pF2UI1UY=; b=Cf+GPDMsG1NxhG
	ySnPkVNHhk+epeoDIQlnj+xJcGY+tdOigrwqculnsP8H4Gfv0ASC/jt803AzIG/B55BIPyT5uNKrX
	k4JGQL1DV36xKCb97VEXcPFZWN/zm81BzCnOPqX2G8M6404/LoDOq/4beHZqMfgzWfUcFZuXlJW/b
	tf7mvZZKu7mzIKhdcjCfnviS98s/K48PMSITmzdT11DbhBy9d1HIN8IzdtxldSahA56OQCy+3DmLX
	p5Y7wBJlIihpoULCYRGcot5f+Pr+HuhytnbG6HkiizF7CTPyH7pR8ltaHMwbKuKyHP8rb/2ibji4C
	lDVv6GE53RSwsqCTw7XQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv091-00051q-9h; Fri, 24 Jan 2020 14:41:11 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv074-00029Y-QP
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 14:39:13 +0000
Received: from DGGEMS410-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 60679D70EC9CD3104DCB;
 Fri, 24 Jan 2020 22:39:03 +0800 (CST)
Received: from localhost.localdomain (10.69.192.58) by
 DGGEMS410-HUB.china.huawei.com (10.3.19.210) with Microsoft SMTP Server id
 14.3.439.0; Fri, 24 Jan 2020 22:38:55 +0800
From: John Garry <john.garry@huawei.com>
To: <peterz@infradead.org>, <mingo@redhat.com>, <acme@kernel.org>,
 <mark.rutland@arm.com>, <alexander.shishkin@linux.intel.com>,
 <jolsa@redhat.com>, <namhyung@kernel.org>, <will@kernel.org>,
 <ak@linux.intel.com>
Subject: [PATCH RFC 7/7] perf vendor events arm64: Add hip08 SMMUv3 PMCG IMP
 DEF events
Date: Fri, 24 Jan 2020 22:35:05 +0800
Message-ID: <1579876505-113251-8-git-send-email-john.garry@huawei.com>
X-Mailer: git-send-email 2.8.1
In-Reply-To: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.58]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_063911_025632_B74A6DED 
X-CRM114-Status: GOOD (  11.65  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: suzuki.poulose@arm.com, John Garry <john.garry@huawei.com>,
 linuxarm@huawei.com, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 james.clark@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the SMMUv3 PMCG (Performance Monitor Event Group) 
implementation defined events for hip08 platform.

Only a single event is added, but this is just an example for now.

Signed-off-by: John Garry <john.garry@huawei.com>
---
 .../arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json     | 9 +++++++++
 tools/perf/pmu-events/jevents.c                          | 2 ++
 2 files changed, 11 insertions(+)
 create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json

diff --git a/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json
new file mode 100644
index 000000000000..ff2414a5ebc4
--- /dev/null
+++ b/tools/perf/pmu-events/arch/arm64/hisilicon/hip08/sys/smmu-v3-pmcg.json
@@ -0,0 +1,9 @@
+[
+   {
+	    "EventCode": "0x8a",
+	    "EventName": "smmuv3_pmcg.l1_tlb",
+	    "BriefDescription": "SMMUv3 PMCG l1_tlb",
+	    "PublicDescription": "SMMUv3 PMCG l1_tlb",
+	    "Unit": "smmuv3_pmcg"
+   },
+]
diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
index da6430c0d184..01541825a6c7 100644
--- a/tools/perf/pmu-events/jevents.c
+++ b/tools/perf/pmu-events/jevents.c
@@ -239,6 +239,8 @@ static struct map {
 	{ "hisi_sccl,ddrc", "hisi_sccl,ddrc" },
 	{ "hisi_sccl,hha", "hisi_sccl,hha" },
 	{ "hisi_sccl,l3c", "hisi_sccl,l3c" },
+	/* it's not realistic to keep adding these, we need something more scalable ... */
+	{ "smmuv3_pmcg", "smmuv3_pmcg" },
 	{ "L3PMC", "amd_l3" },
 	{}
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
