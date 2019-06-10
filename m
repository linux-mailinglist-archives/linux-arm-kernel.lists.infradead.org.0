Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DCE23B4B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9frb/8JrrLOswau5WwZN6Bg/DxiFF5BqbUtDxIvy8eg=; b=qBzG15YIo8Mxuc
	3ZFKC3WSfHgm4Yz4ar3WFp5MEtezCkIAOlV26sG3GcnXC64q2JTkdHcsc2/tC5+L84J9N2TZmo53A
	bMQZjqOA5vsdWGEuCEQ1cDe2stPHch10bWQciW2H9UJC/NeGCQj8v7C7x8z9Ms3Q79gPWaqPef5FT
	91Gdn77/BMKJWOOJubSwZurV+KMFebVsXDtnIYrGSWIWGp7otCU0TDiZ0O3MD3Q3cyS4+hHB1GDNe
	rXKLruZl6PwGo1uvZrzOZ7sMTSWtCjb+H/IyTY3IUHDoVC6Bw08B1bBBOyiDX8bmT7AtwQrZ7R6Jz
	z5siVU3rzdVNyn8AawfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJJ3-0000JZ-8a; Mon, 10 Jun 2019 12:21:45 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJHH-0006VP-1Z; Mon, 10 Jun 2019 12:20:01 +0000
X-UUID: 7dc4c9db9bae4d46b918e32f14aa0d08-20190610
X-UUID: 7dc4c9db9bae4d46b918e32f14aa0d08-20190610
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1769234130; Mon, 10 Jun 2019 04:19:32 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:19:30 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:19:29 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:19:28 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v7 05/21] iommu/io-pgtable-arm-v7s: Add paddr_to_iopte and
 iopte_to_paddr helpers
Date: Mon, 10 Jun 2019 20:17:44 +0800
Message-ID: <1560169080-27134-6-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_051955_408033_84B06C91 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: youlin.pei@mediatek.com, devicetree@vger.kernel.org,
 Nicolas Boichat <drinkcat@chromium.org>, srv_heupstream@mediatek.com, Will
 Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>, Tomasz Figa <tfiga@google.com>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 linux-mediatek@lists.infradead.org, yong.wu@mediatek.com,
 yingjoe.chen@mediatek.com, anan.sun@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add two helper functions: paddr_to_iopte and iopte_to_paddr.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 drivers/iommu/io-pgtable-arm-v7s.c | 45 ++++++++++++++++++++++++++++----------
 1 file changed, 33 insertions(+), 12 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 9a8a887..94c38db 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -180,18 +180,38 @@ struct arm_v7s_io_pgtable {
 	spinlock_t		split_lock;
 };
 
+static bool arm_v7s_pte_is_cont(arm_v7s_iopte pte, int lvl);
+
 static dma_addr_t __arm_v7s_dma_addr(void *pages)
 {
 	return (dma_addr_t)virt_to_phys(pages);
 }
 
-static arm_v7s_iopte *iopte_deref(arm_v7s_iopte pte, int lvl)
+static arm_v7s_iopte paddr_to_iopte(phys_addr_t paddr, int lvl,
+				    struct io_pgtable_cfg *cfg)
 {
+	return paddr & ARM_V7S_LVL_MASK(lvl);
+}
+
+static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
+				  struct io_pgtable_cfg *cfg)
+{
+	arm_v7s_iopte mask;
+
 	if (ARM_V7S_PTE_IS_TABLE(pte, lvl))
-		pte &= ARM_V7S_TABLE_MASK;
+		mask = ARM_V7S_TABLE_MASK;
+	else if (arm_v7s_pte_is_cont(pte, lvl))
+		mask = ARM_V7S_LVL_MASK(lvl) * ARM_V7S_CONT_PAGES;
 	else
-		pte &= ARM_V7S_LVL_MASK(lvl);
-	return phys_to_virt(pte);
+		mask = ARM_V7S_LVL_MASK(lvl);
+
+	return pte & mask;
+}
+
+static arm_v7s_iopte *iopte_deref(arm_v7s_iopte pte, int lvl,
+				  struct arm_v7s_io_pgtable *data)
+{
+	return phys_to_virt(iopte_to_paddr(pte, lvl, &data->iop.cfg));
 }
 
 static void *__arm_v7s_alloc_table(int lvl, gfp_t gfp,
@@ -407,7 +427,7 @@ static int arm_v7s_init_pte(struct arm_v7s_io_pgtable *data,
 	if (num_entries > 1)
 		pte = arm_v7s_pte_to_cont(pte, lvl);
 
-	pte |= paddr & ARM_V7S_LVL_MASK(lvl);
+	pte |= paddr_to_iopte(paddr, lvl, cfg);
 
 	__arm_v7s_set_pte(ptep, pte, num_entries, cfg);
 	return 0;
@@ -473,7 +493,7 @@ static int __arm_v7s_map(struct arm_v7s_io_pgtable *data, unsigned long iova,
 	}
 
 	if (ARM_V7S_PTE_IS_TABLE(pte, lvl)) {
-		cptep = iopte_deref(pte, lvl);
+		cptep = iopte_deref(pte, lvl, data);
 	} else if (pte) {
 		/* We require an unmap first */
 		WARN_ON(!selftest_running);
@@ -523,7 +543,8 @@ static void arm_v7s_free_pgtable(struct io_pgtable *iop)
 		arm_v7s_iopte pte = data->pgd[i];
 
 		if (ARM_V7S_PTE_IS_TABLE(pte, 1))
-			__arm_v7s_free_table(iopte_deref(pte, 1), 2, data);
+			__arm_v7s_free_table(iopte_deref(pte, 1, data),
+					     2, data);
 	}
 	__arm_v7s_free_table(data->pgd, 1, data);
 	kmem_cache_destroy(data->l2_tables);
@@ -593,7 +614,7 @@ static size_t arm_v7s_split_blk_unmap(struct arm_v7s_io_pgtable *data,
 		if (!ARM_V7S_PTE_IS_TABLE(pte, 1))
 			return 0;
 
-		tablep = iopte_deref(pte, 1);
+		tablep = iopte_deref(pte, 1, data);
 		return __arm_v7s_unmap(data, iova, size, 2, tablep);
 	}
 
@@ -652,7 +673,7 @@ static size_t __arm_v7s_unmap(struct arm_v7s_io_pgtable *data,
 				io_pgtable_tlb_add_flush(iop, iova, blk_size,
 					ARM_V7S_BLOCK_SIZE(lvl + 1), false);
 				io_pgtable_tlb_sync(iop);
-				ptep = iopte_deref(pte[i], lvl);
+				ptep = iopte_deref(pte[i], lvl, data);
 				__arm_v7s_free_table(ptep, lvl + 1, data);
 			} else if (iop->cfg.quirks & IO_PGTABLE_QUIRK_NON_STRICT) {
 				/*
@@ -677,7 +698,7 @@ static size_t __arm_v7s_unmap(struct arm_v7s_io_pgtable *data,
 	}
 
 	/* Keep on walkin' */
-	ptep = iopte_deref(pte[0], lvl);
+	ptep = iopte_deref(pte[0], lvl, data);
 	return __arm_v7s_unmap(data, iova, size, lvl + 1, ptep);
 }
 
@@ -703,7 +724,7 @@ static phys_addr_t arm_v7s_iova_to_phys(struct io_pgtable_ops *ops,
 	do {
 		ptep += ARM_V7S_LVL_IDX(iova, ++lvl);
 		pte = READ_ONCE(*ptep);
-		ptep = iopte_deref(pte, lvl);
+		ptep = iopte_deref(pte, lvl, data);
 	} while (ARM_V7S_PTE_IS_TABLE(pte, lvl));
 
 	if (!ARM_V7S_PTE_IS_VALID(pte))
@@ -712,7 +733,7 @@ static phys_addr_t arm_v7s_iova_to_phys(struct io_pgtable_ops *ops,
 	mask = ARM_V7S_LVL_MASK(lvl);
 	if (arm_v7s_pte_is_cont(pte, lvl))
 		mask *= ARM_V7S_CONT_PAGES;
-	return (pte & mask) | (iova & ~mask);
+	return iopte_to_paddr(pte, lvl, &data->iop.cfg) | (iova & ~mask);
 }
 
 static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
