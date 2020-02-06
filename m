Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 279B3153F83
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 08:59:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=njzVLP+rOn09l3DZxhqObqxvIOotv3IG71mPjH1yrDs=; b=b/C7U9np91WjL4
	sa0VbrAbb+rWOF9hoBnXNsZliVGd8DENMlwQeea8qenpZ3I70Nfdu9GrMqXgLU7hcb4aRj4V/z49P
	/pt8Uwh9gDTSNDtYVAxBtYgPvubDdOVWbVBKKfuiS/SEj3eb/bNyQLffOSiS8Zcjn1KYv4d2eWFUT
	YBItzy5UXSSF5NCkbTqWOoa2ACQxktwHauKa1/SRloANYXEre+Pi0VSgTS+2rkOpJn357UqEu4rof
	wJOUw8WrGfPOMRRqx/wMxtJ2lSutjmd+NtmHzLVV1QS/Y2QGM54uR0x+Q92Inou08Gm/AgBp+KNnm
	rMQOSFiq8+s+6dvewJeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izc3u-0007Tu-G3; Thu, 06 Feb 2020 07:58:58 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izc3Z-0007IE-Mv
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 07:58:39 +0000
Received: from DGGEMS409-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 0CD9D1FAEF82E36C756D;
 Thu,  6 Feb 2020 15:58:33 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS409-HUB.china.huawei.com (10.3.19.209) with Microsoft SMTP Server id
 14.3.439.0; Thu, 6 Feb 2020 15:58:25 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-kernel@vger.kernel.org>, <maz@kernel.org>
Subject: [PATCH v2 3/6] irqchip/gic-v4.1: Ensure L2 vPE table is allocated at
 RD level
Date: Thu, 6 Feb 2020 15:57:08 +0800
Message-ID: <20200206075711.1275-4-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20200206075711.1275-1-yuzenghui@huawei.com>
References: <20200206075711.1275-1-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_235837_911515_8AD4B269 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
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
Cc: jason@lakedaemon.net, Zenghui Yu <yuzenghui@huawei.com>,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In GICv4, we will ensure that level2 vPE table memory is allocated
for the specified vpe_id on all v4 ITS, in its_alloc_vpe_table().
This still works well for the typical GICv4.1 implementation, where
the new vPE table is shared between the ITSs and the RDs.

To make it explicit, let us introduce allocate_vpe_l2_table() to
make sure that the L2 tables are allocated on all v4.1 RDs. We're
likely not need to allocate memory in it because the vPE table is
shared and (L2 table is) already allocated at ITS level, except
for the case where the ITS doesn't share anything (say SVPET == 0,
practically unlikely but architecturally allowed).

The implementation of allocate_vpe_l2_table() is mostly copied from
its_alloc_table_entry().

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 80 ++++++++++++++++++++++++++++++++
 1 file changed, 80 insertions(+)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 0f1fe56ce0af..ae4e7b355b46 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -2443,6 +2443,72 @@ static u64 inherit_vpe_l1_table_from_rd(cpumask_t **mask)
 	return 0;
 }
 
+static bool allocate_vpe_l2_table(int cpu, u32 id)
+{
+	void __iomem *base = gic_data_rdist_cpu(cpu)->rd_base;
+	u64 val, gpsz, npg;
+	unsigned int psz, esz, idx;
+	struct page *page;
+	__le64 *table;
+
+	if (!gic_rdists->has_rvpeid)
+		return true;
+
+	val  = gits_read_vpropbaser(base + SZ_128K + GICR_VPROPBASER);
+
+	esz  = FIELD_GET(GICR_VPROPBASER_4_1_ENTRY_SIZE, val) + 1;
+	gpsz = FIELD_GET(GICR_VPROPBASER_4_1_PAGE_SIZE, val);
+	npg  = FIELD_GET(GICR_VPROPBASER_4_1_SIZE, val) + 1;
+
+	switch (gpsz) {
+	default:
+		WARN_ON(1);
+		/* fall through */
+	case GIC_PAGE_SIZE_4K:
+		psz = SZ_4K;
+		break;
+	case GIC_PAGE_SIZE_16K:
+		psz = SZ_16K;
+		break;
+	case GIC_PAGE_SIZE_64K:
+		psz = SZ_64K;
+		break;
+	}
+
+	/* Don't allow vpe_id that exceeds single, flat table limit */
+	if (!(val & GICR_VPROPBASER_4_1_INDIRECT))
+		return (id < (npg * psz / (esz * SZ_8)));
+
+	/* Compute 1st level table index & check if that exceeds table limit */
+	idx = id >> ilog2(psz / (esz * SZ_8));
+	if (idx >= (npg * psz / GITS_LVL1_ENTRY_SIZE))
+		return false;
+
+	table = gic_data_rdist_cpu(cpu)->vpe_l1_base;
+
+	/* Allocate memory for 2nd level table */
+	if (!table[idx]) {
+		page = alloc_pages(GFP_KERNEL | __GFP_ZERO, get_order(psz));
+		if (!page)
+			return false;
+
+		/* Flush Lvl2 table to PoC if hw doesn't support coherency */
+		if (!(val & GICR_VPROPBASER_SHAREABILITY_MASK))
+			gic_flush_dcache_to_poc(page_address(page), psz);
+
+		table[idx] = cpu_to_le64(page_to_phys(page) | GITS_BASER_VALID);
+
+		/* Flush Lvl1 entry to PoC if hw doesn't support coherency */
+		if (!(val & GICR_VPROPBASER_SHAREABILITY_MASK))
+			gic_flush_dcache_to_poc(table + idx, GITS_LVL1_ENTRY_SIZE);
+
+		/* Ensure updated table contents are visible to RD hardware */
+		dsb(sy);
+	}
+
+	return true;
+}
+
 static int allocate_vpe_l1_table(void)
 {
 	void __iomem *vlpi_base = gic_data_rdist_vlpi_base();
@@ -2957,6 +3023,7 @@ static bool its_alloc_device_table(struct its_node *its, u32 dev_id)
 static bool its_alloc_vpe_table(u32 vpe_id)
 {
 	struct its_node *its;
+	int cpu;
 
 	/*
 	 * Make sure the L2 tables are allocated on *all* v4 ITSs. We
@@ -2979,6 +3046,19 @@ static bool its_alloc_vpe_table(u32 vpe_id)
 			return false;
 	}
 
+	/* Non v4.1? No need to iterate RDs and go back early. */
+	if (!gic_rdists->has_rvpeid)
+		return true;
+
+	/*
+	 * Make sure the L2 tables are allocated for all copies of
+	 * the L1 table on *all* v4.1 RDs.
+	 */
+	for_each_possible_cpu(cpu) {
+		if (!allocate_vpe_l2_table(cpu, vpe_id))
+			return false;
+	}
+
 	return true;
 }
 
-- 
2.19.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
