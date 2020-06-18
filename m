Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0165C1FF341
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 15:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nERT6e37eVk5f06Bj7gB9L22q8AwxXwSXzIDK/uW3eM=; b=Hh16ff9WafVV6h
	GO7JC2Q3TEnvKzLQ1NzEb946MRm/XkqExMKIVbQmg6IZHnWEx6Uv/SoDctHejrXVA1F82UgK/nib/
	GcleZ6LM2WJir/s97m77p58MsR7CzD8nTMt6KREc8DL7tyL+vcEI7pIKfWQWdUDatD/Z9K78y97K3
	TSHQdveh2niHxAP8A3GZVMFNEyDwswvIWkKVhMsdKzb9ygTTuTUFf8ZaZFDNLYx8pOqOfrMC/0lVP
	crvp+VXG1169RABtnQuTueUv99uz532Z/xg8eyruSodpWzjY+i2N13ESOInI194ZCLExyqbZnYpfM
	Uv8lB3gVQpPK/bhrOo/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jluk8-0007lL-LD; Thu, 18 Jun 2020 13:38:12 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlujP-0007LT-AZ
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 13:37:29 +0000
Received: from DGGEMS414-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id B63C73D530090C021062;
 Thu, 18 Jun 2020 21:37:25 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS414-HUB.china.huawei.com (10.3.19.214) with Microsoft SMTP Server id
 14.3.487.0; Thu, 18 Jun 2020 21:37:19 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH v3 2/3] arm64: perf: Expose some new events via sysfs
Date: Thu, 18 Jun 2020 21:35:43 +0800
Message-ID: <1592487344-30555-2-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1592487344-30555-1-git-send-email-zhangshaokun@hisilicon.com>
References: <1592487344-30555-1-git-send-email-zhangshaokun@hisilicon.com>
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_063727_553061_26E81F1A 
X-CRM114-Status: UNSURE (   9.23  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [45.249.212.35 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Mark Rutland <mark.rutland@arm.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some new PMU events can been detected by PMCEID1_EL0, but it can't
be listed, Let's expose these through sysfs.

Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Signed-off-by: Shaokun Zhang <zhangshaokun@hisilicon.com>
---
 arch/arm64/include/asm/perf_event.h | 27 +++++++++++++++++++++++++++
 arch/arm64/kernel/perf_event.c      | 19 +++++++++++++++++++
 2 files changed, 46 insertions(+)

diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
index e7765b62c712..2c2d7dbe8a02 100644
--- a/arch/arm64/include/asm/perf_event.h
+++ b/arch/arm64/include/asm/perf_event.h
@@ -72,6 +72,13 @@
 #define ARMV8_PMUV3_PERFCTR_LL_CACHE_RD				0x36
 #define ARMV8_PMUV3_PERFCTR_LL_CACHE_MISS_RD			0x37
 #define ARMV8_PMUV3_PERFCTR_REMOTE_ACCESS_RD			0x38
+#define ARMV8_PMUV3_PERFCTR_L1D_CACHE_LMISS_RD			0x39
+#define ARMV8_PMUV3_PERFCTR_OP_RETIRED				0x3A
+#define ARMV8_PMUV3_PERFCTR_OP_SPEC				0x3B
+#define ARMV8_PMUV3_PERFCTR_STALL				0x3C
+#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_BACKEND			0x3D
+#define ARMV8_PMUV3_PERFCTR_STALL_SLOT_FRONTEND			0x3E
+#define ARMV8_PMUV3_PERFCTR_STALL_SLOT				0x3F
 
 /* Statistical profiling extension microarchitectural events */
 #define	ARMV8_SPE_PERFCTR_SAMPLE_POP				0x4000
@@ -79,6 +86,26 @@
 #define	ARMV8_SPE_PERFCTR_SAMPLE_FILTRATE			0x4002
 #define	ARMV8_SPE_PERFCTR_SAMPLE_COLLISION			0x4003
 
+/* AMUv1 architecture events */
+#define	ARMV8_AMU_PERFCTR_CNT_CYCLES				0x4004
+#define	ARMV8_AMU_PERFCTR_STALL_BACKEND_MEM			0x4005
+
+/* long-latency read miss events */
+#define	ARMV8_PMUV3_PERFCTR_L1I_CACHE_LMISS			0x4006
+#define	ARMV8_PMUV3_PERFCTR_L2D_CACHE_LMISS_RD			0x4009
+#define	ARMV8_PMUV3_PERFCTR_L2I_CACHE_LMISS			0x400A
+#define	ARMV8_PMUV3_PERFCTR_L3D_CACHE_LMISS_RD			0x400B
+
+/* additional latency from alignment events */
+#define	ARMV8_PMUV3_PERFCTR_LDST_ALIGN_LAT			0x4020
+#define	ARMV8_PMUV3_PERFCTR_LD_ALIGN_LAT			0x4021
+#define	ARMV8_PMUV3_PERFCTR_ST_ALIGN_LAT			0x4022
+
+/* Armv8.5 Memory Tagging Extension events */
+#define	ARMV8_MTE_PERFCTR_MEM_ACCESS_CHECKED			0x4024
+#define	ARMV8_MTE_PERFCTR_MEM_ACCESS_CHECKED_RD			0x4025
+#define	ARMV8_MTE_PERFCTR_MEM_ACCESS_CHECKED_WR			0x4026
+
 /* ARMv8 recommended implementation defined event types */
 #define ARMV8_IMPDEF_PERFCTR_L1D_CACHE_RD			0x40
 #define ARMV8_IMPDEF_PERFCTR_L1D_CACHE_WR			0x41
diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 5f2ac87e4b91..32c87cd48cbe 100644
--- a/arch/arm64/kernel/perf_event.c
+++ b/arch/arm64/kernel/perf_event.c
@@ -222,10 +222,29 @@ static struct attribute *armv8_pmuv3_event_attrs[] = {
 	ARMV8_EVENT_ATTR(ll_cache_rd, ARMV8_PMUV3_PERFCTR_LL_CACHE_RD),
 	ARMV8_EVENT_ATTR(ll_cache_miss_rd, ARMV8_PMUV3_PERFCTR_LL_CACHE_MISS_RD),
 	ARMV8_EVENT_ATTR(remote_access_rd, ARMV8_PMUV3_PERFCTR_REMOTE_ACCESS_RD),
+	ARMV8_EVENT_ATTR(l1d_cache_lmiss_rd, ARMV8_PMUV3_PERFCTR_L1D_CACHE_LMISS_RD),
+	ARMV8_EVENT_ATTR(op_retired, ARMV8_PMUV3_PERFCTR_OP_RETIRED),
+	ARMV8_EVENT_ATTR(op_SPEC, ARMV8_PMUV3_PERFCTR_OP_SPEC),
+	ARMV8_EVENT_ATTR(stall, ARMV8_PMUV3_PERFCTR_STALL),
+	ARMV8_EVENT_ATTR(stall_slot_backend, ARMV8_PMUV3_PERFCTR_STALL_SLOT_BACKEND),
+	ARMV8_EVENT_ATTR(stall_slot_frontend, ARMV8_PMUV3_PERFCTR_STALL_SLOT_FRONTEND),
+	ARMV8_EVENT_ATTR(stall_slot, ARMV8_PMUV3_PERFCTR_STALL_SLOT),
 	ARMV8_EVENT_ATTR(sample_pop, ARMV8_SPE_PERFCTR_SAMPLE_POP),
 	ARMV8_EVENT_ATTR(sample_feed, ARMV8_SPE_PERFCTR_SAMPLE_FEED),
 	ARMV8_EVENT_ATTR(sample_filtrate, ARMV8_SPE_PERFCTR_SAMPLE_FILTRATE),
 	ARMV8_EVENT_ATTR(sample_collision, ARMV8_SPE_PERFCTR_SAMPLE_COLLISION),
+	ARMV8_EVENT_ATTR(cnt_cycles, ARMV8_AMU_PERFCTR_CNT_CYCLES),
+	ARMV8_EVENT_ATTR(stall_backend_mem, ARMV8_AMU_PERFCTR_STALL_BACKEND_MEM),
+	ARMV8_EVENT_ATTR(l1i_cache_lmiss, ARMV8_PMUV3_PERFCTR_L1I_CACHE_LMISS),
+	ARMV8_EVENT_ATTR(l2d_cache_lmiss_rd, ARMV8_PMUV3_PERFCTR_L2D_CACHE_LMISS_RD),
+	ARMV8_EVENT_ATTR(l2i_cache_lmiss, ARMV8_PMUV3_PERFCTR_L2I_CACHE_LMISS),
+	ARMV8_EVENT_ATTR(l3d_cache_lmiss_rd, ARMV8_PMUV3_PERFCTR_L3D_CACHE_LMISS_RD),
+	ARMV8_EVENT_ATTR(ldst_align_lat, ARMV8_PMUV3_PERFCTR_LDST_ALIGN_LAT),
+	ARMV8_EVENT_ATTR(ld_align_lat, ARMV8_PMUV3_PERFCTR_LD_ALIGN_LAT),
+	ARMV8_EVENT_ATTR(st_align_lat, ARMV8_PMUV3_PERFCTR_ST_ALIGN_LAT),
+	ARMV8_EVENT_ATTR(mem_access_checked, ARMV8_MTE_PERFCTR_MEM_ACCESS_CHECKED),
+	ARMV8_EVENT_ATTR(mem_access_checked_rd, ARMV8_MTE_PERFCTR_MEM_ACCESS_CHECKED_RD),
+	ARMV8_EVENT_ATTR(mem_access_checked_wr, ARMV8_MTE_PERFCTR_MEM_ACCESS_CHECKED_WR),
 	NULL,
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
