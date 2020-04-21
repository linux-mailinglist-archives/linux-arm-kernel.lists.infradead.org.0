Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F27B1B1ED5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 08:33:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/V6BoINLY7/UNhPUwBD94JggdauuBUPvmf8jVg+wGvs=; b=PQFXEXz6Kg8mtZ
	m903FfIZgF+nEWlZx6N6/cqLLGnb76pCESHqTyGGMBy5HmCz3hSHou+o1lu88TCUgO8Z/+mVGzH8M
	mg9k5u7R+XMB/Aeq8eZZgixPigeNZnDB4eGIa+o9OhlEcwsD4f3Mejmu8hvq7Hyt1/+s9yUuGs98P
	YAEVTuvaehbILUa/vBCe7frNiJal1dBEO+Qu5YYriXef086KWs+Cg1Vycn/n83KRuXVPA9y3FuEbL
	Jd76N/Q0GUmARN8bB58Ma/XeRMS/VH/oZEZmKcW2WNQ1uE/szjRRnQY8JBDUJThzLey54Ir5Gtf7O
	YdV8enaFW7voewcRY3Vg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQmT9-0006BR-SO; Tue, 21 Apr 2020 06:33:19 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQmT2-00068B-11
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 06:33:13 +0000
Received: from DGGEMS402-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id D8CEE1583E7878533673;
 Tue, 21 Apr 2020 14:32:59 +0800 (CST)
Received: from localhost.localdomain (10.69.192.56) by
 DGGEMS402-HUB.china.huawei.com (10.3.19.202) with Microsoft SMTP Server id
 14.3.487.0; Tue, 21 Apr 2020 14:32:50 +0800
From: Shaokun Zhang <zhangshaokun@hisilicon.com>
To: <linux-arm-kernel@lists.infradead.org>
Subject: [PATCH] arm64: perf: Expose some new events via sysfs
Date: Tue, 21 Apr 2020 14:31:53 +0800
Message-ID: <1587450713-18048-1-git-send-email-zhangshaokun@hisilicon.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.69.192.56]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_233312_240649_653E7057 
X-CRM114-Status: UNSURE (   8.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -1.5 (-)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-1.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
 arch/arm64/include/asm/perf_event.h | 19 +++++++++++++++++++
 arch/arm64/kernel/perf_event.c      | 19 +++++++++++++++++++
 2 files changed, 38 insertions(+)

diff --git a/arch/arm64/include/asm/perf_event.h b/arch/arm64/include/asm/perf_event.h
index e7765b62c712..f1b93d7c4260 100644
--- a/arch/arm64/include/asm/perf_event.h
+++ b/arch/arm64/include/asm/perf_event.h
@@ -72,12 +72,31 @@
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
 #define	ARMV8_SPE_PERFCTR_SAMPLE_FEED				0x4001
 #define	ARMV8_SPE_PERFCTR_SAMPLE_FILTRATE			0x4002
 #define	ARMV8_SPE_PERFCTR_SAMPLE_COLLISION			0x4003
+#define	ARMV8_SPE_PERFCTR_CNT_CYCLES				0x4004
+#define	ARMV8_SPE_PERFCTR_STALL_BACKEND_MEM			0x4005
+#define	ARMV8_SPE_PERFCTR_L1I_CACHE_LMISS			0x4006
+#define	ARMV8_SPE_PERFCTR_L2D_CACHE_LMISS_RD			0x4009
+#define	ARMV8_SPE_PERFCTR_L2I_CACHE_LMISS			0x400A
+#define	ARMV8_SPE_PERFCTR_L3D_CACHE_LMISS_RD			0x400B
+#define	ARMV8_SPE_PERFCTR_LDST_ALIGN_LAT			0x4020
+#define	ARMV8_SPE_PERFCTR_LD_ALIGN_LAT				0x4021
+#define	ARMV8_SPE_PERFCTR_ST_ALIGN_LAT				0x4022
+#define	ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED			0x4024
+#define	ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED_RD			0x4025
+#define	ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED_WR			0x4026
 
 /* ARMv8 recommended implementation defined event types */
 #define ARMV8_IMPDEF_PERFCTR_L1D_CACHE_RD			0x40
diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
index 4d7879484cec..24f854cf4919 100644
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
+	ARMV8_EVENT_ATTR(cnt_cycles, ARMV8_SPE_PERFCTR_CNT_CYCLES),
+	ARMV8_EVENT_ATTR(stall_backend_mem, ARMV8_SPE_PERFCTR_STALL_BACKEND_MEM),
+	ARMV8_EVENT_ATTR(l1i_cache_lmiss, ARMV8_SPE_PERFCTR_L1I_CACHE_LMISS),
+	ARMV8_EVENT_ATTR(l2d_cache_lmiss_rd, ARMV8_SPE_PERFCTR_L2D_CACHE_LMISS_RD),
+	ARMV8_EVENT_ATTR(l2i_cache_lmiss, ARMV8_SPE_PERFCTR_L2I_CACHE_LMISS),
+	ARMV8_EVENT_ATTR(l3d_cache_lmiss_rd, ARMV8_SPE_PERFCTR_L3D_CACHE_LMISS_RD),
+	ARMV8_EVENT_ATTR(ldst_align_lat, ARMV8_SPE_PERFCTR_LDST_ALIGN_LAT),
+	ARMV8_EVENT_ATTR(ld_align_lat, ARMV8_SPE_PERFCTR_LD_ALIGN_LAT),
+	ARMV8_EVENT_ATTR(st_align_lat, ARMV8_SPE_PERFCTR_ST_ALIGN_LAT),
+	ARMV8_EVENT_ATTR(mem_access_checked, ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED),
+	ARMV8_EVENT_ATTR(mem_access_checked_rd, ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED_RD),
+	ARMV8_EVENT_ATTR(mem_access_checked_wr, ARMV8_SPE_PERFCTR_MEM_ACCESS_CHECKED_WR),
 	NULL,
 };
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
