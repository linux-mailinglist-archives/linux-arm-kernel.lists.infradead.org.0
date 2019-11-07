Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA545F2887
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 08:56:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=U3LHVlsjR8AyJ8JimrDhugaIId2yznW4O3lAuDiIiY0=; b=aRneGS1KIj5Rbu
	wcH8KWLxJ/7XYuXydE2T7RKAFr+6NXlBkAtTCWNAGnxGtc3J/f8yVJ9Z1FEs113DU8c96c2MQUUlV
	6ukkVvzowJ4bagraRMDLii7NCSkAbQExKI1lGQ/zp0fHtBiqJYmu+XiRaS9uxnoEUTzM/SBRoS5pI
	OOxTqBNxfdnlIgoH/pvqhxqIog6lJLWY1WPn/Gp5WS0TohD+iqiLkcwsEYpOh18HeXsT8CGaChNev
	x9oVTPKha1KyQaf5pbE1lYNYU0nDR0oL0OKZGfnN43VoZvUUXBySOYPGserIY1EBVZ6PWNBBLO/0Q
	6M4/uBJ1wqSIsaqAle+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSceG-0005ut-3j; Thu, 07 Nov 2019 07:56:08 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSce8-0005u9-48
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 07:56:01 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 8EAA992C3DD2D3EAD6A3;
 Thu,  7 Nov 2019 15:55:50 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.439.0; Thu, 7 Nov 2019 15:55:40 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for certain
 HiSilicon platform
Date: Thu, 7 Nov 2019 15:56:04 +0800
Message-ID: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_235600_320846_6539ACBE 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mark Rutland <mark.rutland@arm.com>, John Garry <john.garry@huawei.com>,
 Will Deacon <will@kernel.org>, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For some HiSilicon platform, the originally designed SCCL_ID and CCL_ID
are not satisfied with much rich topology when the MT is set, so we
extend the SCCL_ID to MPIDR[aff3] and CCL_ID to MPIDR[aff2]. Let's
update this for HiSilicon uncore PMU driver.

Cc: John Garry <john.garry@huawei.com>
Cc: Hanjun Guo <guohanjun@huawei.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
 drivers/perf/hisilicon/hisi_uncore_pmu.c | 26 ++++++++++++++++++--------
 1 file changed, 18 insertions(+), 8 deletions(-)

diff --git a/drivers/perf/hisilicon/hisi_uncore_pmu.c b/drivers/perf/hisilicon/hisi_uncore_pmu.c
index 79f76f8dda8e..96183e31b96a 100644
--- a/drivers/perf/hisilicon/hisi_uncore_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_pmu.c
@@ -15,6 +15,7 @@
 #include <linux/errno.h>
 #include <linux/interrupt.h>
 
+#include <asm/cputype.h>
 #include <asm/local64.h>
 
 #include "hisi_uncore_pmu.h"
@@ -338,8 +339,10 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
 
 /*
  * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
- * If multi-threading is supported, CCL_ID is the low 3-bits in MPIDR[Aff2]
- * and SCCL_ID is the upper 5-bits of Aff2 field; if not, SCCL_ID
+ * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
+ * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
+ * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
+ * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
  * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
  */
 static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
@@ -347,12 +350,19 @@ static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
 	u64 mpidr = read_cpuid_mpidr();
 
 	if (mpidr & MPIDR_MT_BITMASK) {
-		int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
-
-		if (sccl_id)
-			*sccl_id = aff2 >> 3;
-		if (ccl_id)
-			*ccl_id = aff2 & 0x7;
+		if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
+			int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
+
+			if (sccl_id)
+				*sccl_id = aff2 >> 3;
+			if (ccl_id)
+				*ccl_id = aff2 & 0x7;
+		} else {
+			if (sccl_id)
+				*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 3);
+			if (ccl_id)
+				*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
+		}
 	} else {
 		if (sccl_id)
 			*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
