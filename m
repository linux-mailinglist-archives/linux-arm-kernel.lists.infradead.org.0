Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CA8397B90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 15:56:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ztu5KpXs35IAZhWsor4OpJsdCn6LGgypTV6POw4i7F4=; b=JYGNdWl5EE0VpU
	TYHkuDn3dF+eGIxsUII2hExPhO9uKRk9Y9+D6bseYygJWjMqWvXL6tmtJSfVgn9NSWJiLX3ZpbokH
	IcExfVSEyTWFN3aGKUwLCzuKN1/q/d/jlCECRdj74ScQ3FpUwPNQYHtyqJx3nsTuAz6Wjk+wQoICF
	V+02EBhZl8YW5au/vZ+QIXT1w81Z8JCAi4bfx3Vc3wYlYyFMbYEZbKkqsjwSn1tDhZr4PPJ7BQUlJ
	q3lv3DHUkbgM1hE79C0G+gJCTy6zESzXguwQIynpwKTJ3Kzktzrz0Nsx3CKyI7fBeCrTJLBywt6vg
	VEWoM7YEKBhmjrclXZQw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0R6H-0006X8-Iq; Wed, 21 Aug 2019 13:56:33 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0R4y-0004rW-85; Wed, 21 Aug 2019 13:55:15 +0000
X-UUID: 5e26184faf7c4e479c6327c1aac5d9c2-20190821
X-UUID: 5e26184faf7c4e479c6327c1aac5d9c2-20190821
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 866141546; Wed, 21 Aug 2019 05:54:59 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 06:54:57 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 21 Aug 2019 21:54:56 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Wed, 21 Aug 2019 21:54:55 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v10 06/23] iommu/io-pgtable-arm-v7s: Add paddr_to_iopte and
 iopte_to_paddr helpers
Date: Wed, 21 Aug 2019 21:53:09 +0800
Message-ID: <1566395606-7975-7-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
References: <1566395606-7975-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_065512_326129_5C79C44F 
X-CRM114-Status: GOOD (  13.09  )
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
 Nicolas Boichat <drinkcat@chromium.org>, cui.zhang@mediatek.com,
 srv_heupstream@mediatek.com, chao.hao@mediatek.com,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 Tomasz Figa <tfiga@google.com>, iommu@lists.linux-foundation.org,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 yong.wu@mediatek.com, ming-fan.chen@mediatek.com, anan.sun@mediatek.com,
 Matthias Kaehlcke <mka@chromium.org>, linux-arm-kernel@lists.infradead.org
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
index 0fc8dfa..72f1880 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -169,18 +169,38 @@ struct arm_v7s_io_pgtable {
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
@@ -396,7 +416,7 @@ static int arm_v7s_init_pte(struct arm_v7s_io_pgtable *data,
 	if (num_entries > 1)
 		pte = arm_v7s_pte_to_cont(pte, lvl);
 
-	pte |= paddr & ARM_V7S_LVL_MASK(lvl);
+	pte |= paddr_to_iopte(paddr, lvl, cfg);
 
 	__arm_v7s_set_pte(ptep, pte, num_entries, cfg);
 	return 0;
@@ -462,7 +482,7 @@ static int __arm_v7s_map(struct arm_v7s_io_pgtable *data, unsigned long iova,
 	}
 
 	if (ARM_V7S_PTE_IS_TABLE(pte, lvl)) {
-		cptep = iopte_deref(pte, lvl);
+		cptep = iopte_deref(pte, lvl, data);
 	} else if (pte) {
 		/* We require an unmap first */
 		WARN_ON(!selftest_running);
@@ -512,7 +532,8 @@ static void arm_v7s_free_pgtable(struct io_pgtable *iop)
 		arm_v7s_iopte pte = data->pgd[i];
 
 		if (ARM_V7S_PTE_IS_TABLE(pte, 1))
-			__arm_v7s_free_table(iopte_deref(pte, 1), 2, data);
+			__arm_v7s_free_table(iopte_deref(pte, 1, data),
+					     2, data);
 	}
 	__arm_v7s_free_table(data->pgd, 1, data);
 	kmem_cache_destroy(data->l2_tables);
@@ -582,7 +603,7 @@ static size_t arm_v7s_split_blk_unmap(struct arm_v7s_io_pgtable *data,
 		if (!ARM_V7S_PTE_IS_TABLE(pte, 1))
 			return 0;
 
-		tablep = iopte_deref(pte, 1);
+		tablep = iopte_deref(pte, 1, data);
 		return __arm_v7s_unmap(data, iova, size, 2, tablep);
 	}
 
@@ -641,7 +662,7 @@ static size_t __arm_v7s_unmap(struct arm_v7s_io_pgtable *data,
 				io_pgtable_tlb_add_flush(iop, iova, blk_size,
 					ARM_V7S_BLOCK_SIZE(lvl + 1), false);
 				io_pgtable_tlb_sync(iop);
-				ptep = iopte_deref(pte[i], lvl);
+				ptep = iopte_deref(pte[i], lvl, data);
 				__arm_v7s_free_table(ptep, lvl + 1, data);
 			} else if (iop->cfg.quirks & IO_PGTABLE_QUIRK_NON_STRICT) {
 				/*
@@ -666,7 +687,7 @@ static size_t __arm_v7s_unmap(struct arm_v7s_io_pgtable *data,
 	}
 
 	/* Keep on walkin' */
-	ptep = iopte_deref(pte[0], lvl);
+	ptep = iopte_deref(pte[0], lvl, data);
 	return __arm_v7s_unmap(data, iova, size, lvl + 1, ptep);
 }
 
@@ -692,7 +713,7 @@ static phys_addr_t arm_v7s_iova_to_phys(struct io_pgtable_ops *ops,
 	do {
 		ptep += ARM_V7S_LVL_IDX(iova, ++lvl);
 		pte = READ_ONCE(*ptep);
-		ptep = iopte_deref(pte, lvl);
+		ptep = iopte_deref(pte, lvl, data);
 	} while (ARM_V7S_PTE_IS_TABLE(pte, lvl));
 
 	if (!ARM_V7S_PTE_IS_VALID(pte))
@@ -701,7 +722,7 @@ static phys_addr_t arm_v7s_iova_to_phys(struct io_pgtable_ops *ops,
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
