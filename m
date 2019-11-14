Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0928AFBD39
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 01:57:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ottPrTPrSkz/tZvfQXYZ9bBliuTrMAi0y+F4kE/jAaw=; b=VxaxMg1cX9wn9p
	Szs5n31WXh81czR7ykJtzE//tTZJWzNl/C/c4t/IZvXFtTBrSPJES1cK/Lv+0MjZ3rDhbFQyX4PaK
	cUtbQYzW/4pprwgPYY/eVPYtsFZoozD4F2OGQZhwadltPN2EWG0DOyQfeUHxvq5Y7As7CNdeZO8W/
	LI6ggVKcNquabyWEDgYBs4aW2DOAMAUzLrndFr9lJqKxfcavn/5f/ESPhju2VGeGW3Z4K2rb5G8Ug
	XhffLaHMIhP3VR27pv2jblBGnUTYuvzjeCMCzc4atnJ/W0yIwMRcrNhmOjxIfdngKOCh0iJead6Rd
	uYNRFdJEgE1Kw0kXNU/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iV3RW-0007UI-14; Thu, 14 Nov 2019 00:57:02 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iV3RO-0007TQ-4z
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 00:56:56 +0000
Received: from DGGEMS407-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id CC1238F9FB9B0664ABD0;
 Thu, 14 Nov 2019 08:56:42 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS407-HUB.china.huawei.com (10.3.19.207) with Microsoft SMTP Server id
 14.3.439.0; Thu, 14 Nov 2019 08:56:36 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v2] drivers/perf: hisi: Simplify hisi_read_sccl_and_ccl_id and
 its comment
Date: Thu, 14 Nov 2019 08:57:03 +0800
Message-ID: <1573693023-64564-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_165654_364537_7CA8B88F 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>,
 Mark Rutland <mark.rutland@arm.com>, John Garry <john.garry@huawei.com>,
 Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

hisi_read_sccl_and_ccl_id is not readable and its comment is a little
confused, so simplify the function and its comment as Mark's suggestion.

Cc: John Garry <john.garry@huawei.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Will Deacon <will@kernel.org>
Suggested-by: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
ChangeLog from V2:
    Address John's comment: remove the confusing 'Kunpeng 920' comment who
has two types.

 drivers/perf/hisilicon/hisi_uncore_pmu.c | 58 ++++++++++++++++++--------------
 1 file changed, 32 insertions(+), 26 deletions(-)

diff --git a/drivers/perf/hisilicon/hisi_uncore_pmu.c b/drivers/perf/hisilicon/hisi_uncore_pmu.c
index 96183e31b96a..584de8f807cc 100644
--- a/drivers/perf/hisilicon/hisi_uncore_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_pmu.c
@@ -337,38 +337,44 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
 	hisi_pmu->ops->stop_counters(hisi_pmu);
 }
 
+
 /*
- * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
- * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
- * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
- * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
- * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
- * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
+ * The Super CPU Cluster (SCCL) and CPU Cluster (CCL) IDs can be
+ * determined from the MPIDR_EL1, but the encoding varies by CPU:
+ *
+ * - For MT variants of TSV110:
+ *   SCCL is Aff2[7:3], CCL is Aff2[2:0]
+ *
+ * - For other MT parts:
+ *   SCCL is Aff3[7:0], CCL is Aff2[7:0]
+ *
+ * - For non-MT parts:
+ *   SCCL is Aff2[7:0], CCL is Aff1[7:0]
  */
-static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
+static void hisi_read_sccl_and_ccl_id(int *scclp, int *cclp)
 {
 	u64 mpidr = read_cpuid_mpidr();
-
-	if (mpidr & MPIDR_MT_BITMASK) {
-		if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
-			int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
-
-			if (sccl_id)
-				*sccl_id = aff2 >> 3;
-			if (ccl_id)
-				*ccl_id = aff2 & 0x7;
-		} else {
-			if (sccl_id)
-				*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 3);
-			if (ccl_id)
-				*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
-		}
+	int aff3 = MPIDR_AFFINITY_LEVEL(mpidr, 3);
+	int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
+	int aff1 = MPIDR_AFFINITY_LEVEL(mpidr, 1);
+	bool mt = mpidr & MPIDR_MT_BITMASK;
+	int sccl, ccl;
+
+	if (mt && read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
+		sccl = aff2 >> 3;
+		ccl = aff2 & 0x7;
+	} else if (mt) {
+		sccl = aff3;
+		ccl = aff2;
 	} else {
-		if (sccl_id)
-			*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
-		if (ccl_id)
-			*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 1);
+		sccl = aff2;
+		ccl = aff1;
 	}
+
+	if (scclp)
+		*scclp = sccl;
+	if (cclp)
+		*cclp = ccl;
 }
 
 /*
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
