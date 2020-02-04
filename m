Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02549151781
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Feb 2020 10:13:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hvMnR/cjoxmBEAKJcNYeXbq0MGqoiyN49iG/6TYJ/jM=; b=otPrsvgdOWYb4R
	n+UkDxa3uSJzgYI3a9c5FXhLbwEsYSv0+gZ02Do5H3hci1EUrchUxVutM/9MCpKQaHy68g9MgI8eM
	QMez5/Sq+yn9NUowUoAopTlqizoPHR3m1aZ7CYxKhonkJ/cYPK3awRfuQAS6Wc/gHo/QYZcfMVowX
	yl/D0UHb4KHqBosMZD77fjvzVXsn0ZhMDzPcDPuXrqbj8U+2bEtvtgQ75G/R4ot0LyeuEe6jf+GNE
	Ska53mQcCJojgcxWvcWf+ij9jY2n//WMu2n4hGayEnrHJ98P/ICu0ushaIrNkdX1QWg6GSvGeHsUX
	6LT2k9iPPRFaSdn57tyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyuGM-0003YN-R0; Tue, 04 Feb 2020 09:12:54 +0000
Received: from szxga05-in.huawei.com ([45.249.212.191] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyuFR-0002Ve-4G
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Feb 2020 09:12:00 +0000
Received: from DGGEMS403-HUB.china.huawei.com (unknown [172.30.72.60])
 by Forcepoint Email with ESMTP id D4AA320A607416FCA880;
 Tue,  4 Feb 2020 17:11:43 +0800 (CST)
Received: from DESKTOP-8RFUVS3.china.huawei.com (10.173.222.27) by
 DGGEMS403-HUB.china.huawei.com (10.3.19.203) with Microsoft SMTP Server id
 14.3.439.0; Tue, 4 Feb 2020 17:11:36 +0800
From: Zenghui Yu <yuzenghui@huawei.com>
To: <linux-kernel@vger.kernel.org>, <maz@kernel.org>
Subject: [PATCH RFC 3/5] irqchip/gic-v4.1: Ensure L2 vPE table is allocated at
 RD level
Date: Tue, 4 Feb 2020 17:09:38 +0800
Message-ID: <20200204090940.1225-4-yuzenghui@huawei.com>
X-Mailer: git-send-email 2.23.0.windows.1
In-Reply-To: <20200204090940.1225-1-yuzenghui@huawei.com>
References: <20200204090940.1225-1-yuzenghui@huawei.com>
MIME-Version: 1.0
X-Originating-IP: [10.173.222.27]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200204_011157_360650_5F3D86A3 
X-CRM114-Status: GOOD (  14.19  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.191 listed in list.dnswl.org]
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

To make things explicit, introduce allocate_vpe_l1_table_entry() to
make sure that the L2 tables are allocated on all v4.1 RDs. We're
likely not need to allocate memory in it because the vPE table is
shared and (L2 table is) already allocated at ITS level, except
for the case where the ITS doesn't share anything (say SVPET == 0,
practically unlikely but architecturally allowed).

The implementation of allocate_vpe_l1_table_entry() is mostly
copied from its_alloc_table_entry().

Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
---
 drivers/irqchip/irq-gic-v3-its.c | 68 ++++++++++++++++++++++++++++++++
 1 file changed, 68 insertions(+)

diff --git a/drivers/irqchip/irq-gic-v3-its.c b/drivers/irqchip/irq-gic-v3-its.c
index 0f1fe56ce0af..c1d01454eec8 100644
--- a/drivers/irqchip/irq-gic-v3-its.c
+++ b/drivers/irqchip/irq-gic-v3-its.c
@@ -2443,6 +2443,64 @@ static u64 inherit_vpe_l1_table_from_rd(cpumask_t **mask)
 	return 0;
 }
 
+static int allocate_vpe_l1_table_entry(int cpu, u32 id)
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
+		table[idx] = cpu_to_le64(page_to_phys(page) | GITS_BASER_VALID);
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
@@ -2957,6 +3015,7 @@ static bool its_alloc_device_table(struct its_node *its, u32 dev_id)
 static bool its_alloc_vpe_table(u32 vpe_id)
 {
 	struct its_node *its;
+	int cpu;
 
 	/*
 	 * Make sure the L2 tables are allocated on *all* v4 ITSs. We
@@ -2979,6 +3038,15 @@ static bool its_alloc_vpe_table(u32 vpe_id)
 			return false;
 	}
 
+	/*
+	 * Make sure the L2 tables are allocated for all copies of
+	 * the L1 table on *all* v4.1 RDs.
+	 */
+	for_each_possible_cpu(cpu) {
+		if (!allocate_vpe_l1_table_entry(cpu, vpe_id))
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
