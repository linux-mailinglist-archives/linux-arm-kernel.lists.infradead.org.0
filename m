Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 48B675A84F
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 04:14:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wRtmMGSX1ZqShlS/4KfXLzWtb/eRdd5w8qtiydIho0g=; b=gpWOqJdhAJWhwt
	W3Zgz/FA2ATo9Cls2MpftohAeH+KgZUDCAefSihkSSdJRhh+f60MoqojiWdtydM3b7tDXiwBW3hJn
	0LXTzLFASbKJlufu8i981JUPXEot8IeroVDB88OmqGSwv8p9A1dBfJ77O0Cd4LRt3dcxe/JGLbvFc
	81YGn0ZugIUwPSwHJ9nHpVOcac7IAttl9II3hfkkymoyGsmz6i+jXvSrGJq4vBfkvOq6U64GHR6Zd
	LvIe3ny/kmfL4nJOt3y+o8XaiEJacSCShl9jOgODHvVZfknfzykLkq+KaCgTo2cYU38bbl0jjC0H6
	AsSzwosdaERHtN4G3RIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hh2sQ-0000kq-TO; Sat, 29 Jun 2019 02:14:06 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hh2qN-0007u8-4K; Sat, 29 Jun 2019 02:12:01 +0000
X-UUID: 7384dba3ebad409cb63436c60e65faaa-20190628
X-UUID: 7384dba3ebad409cb63436c60e65faaa-20190628
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1004424100; Fri, 28 Jun 2019 18:11:35 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 28 Jun 2019 19:11:34 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 29 Jun 2019 10:11:31 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 29 Jun 2019 10:11:31 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v8 07/21] iommu/io-pgtable-arm-v7s: Extend MediaTek 4GB Mode
Date: Sat, 29 Jun 2019 10:09:13 +0800
Message-ID: <1561774167-24141-8-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1561774167-24141-1-git-send-email-yong.wu@mediatek.com>
References: <1561774167-24141-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3138DFE822196FCD07E1836C36F95DF78FD5FD4840AE2E694ABF7D05BEC193242000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_191159_621858_A51062DB 
X-CRM114-Status: GOOD (  22.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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

MediaTek extend the arm v7s descriptor to support the dram over 4GB.

In the mt2712 and mt8173, it's called "4GB mode", the physical address
is from 0x4000_0000 to 0x1_3fff_ffff, but from EMI point of view, it
is remapped to high address from 0x1_0000_0000 to 0x1_ffff_ffff, the
bit32 is always enabled. thus, in the M4U, we always enable the bit9
for all PTEs which means to enable bit32 of physical address.

but in mt8183, M4U support the dram from 0x4000_0000 to 0x3_ffff_ffff
which isn't remaped. We extend the PTEs: the bit9 represent bit32 of
PA and the bit4 represent bit33 of PA. Meanwhile the iova still is
32bits.

In order to unify code, in the "4GB mode", we add the bit32 for the
physical address manually in our driver.

Correspondingly, Adding bit32 and bit33 for the PA in the iova_to_phys
has to been moved into v7s.

Regarding whether the pagetable address could be over 4GB, the mt8183
support it while the previous mt8173 don't. thus keep it as is.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Robin Murphy <robin.murphy@arm.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
Comparing with the previous one:
1). Add a new patch "iommu/mediatek: Fix iova_to_phys PA start for 4GB
mode" before this one. Thus rebase it.
A little difference: in the 4gb mode, we add bit32 for PA. and the PA got
from iova_to_phys always have bit32 here, thus we should adjust it to locate
the valid pa.
2). Add this code suggested from Evan.
 if (!data->plat_data->has_4gb_mode)
	       data->enable_4GB = false;
---
 drivers/iommu/io-pgtable-arm-v7s.c | 31 ++++++++++++++++++++++++-------
 drivers/iommu/mtk_iommu.c          | 29 ++++++++++++++++++-----------
 drivers/iommu/mtk_iommu.h          |  1 +
 3 files changed, 43 insertions(+), 18 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 94c38db..4077822 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -123,7 +123,9 @@
 #define ARM_V7S_TEX_MASK		0x7
 #define ARM_V7S_ATTR_TEX(val)		(((val) & ARM_V7S_TEX_MASK) << ARM_V7S_TEX_SHIFT)
 
-#define ARM_V7S_ATTR_MTK_4GB		BIT(9) /* MTK extend it for 4GB mode */
+/* MediaTek extend the two bits below for over 4GB mode */
+#define ARM_V7S_ATTR_MTK_PA_BIT32	BIT(9)
+#define ARM_V7S_ATTR_MTK_PA_BIT33	BIT(4)
 
 /* *well, except for TEX on level 2 large pages, of course :( */
 #define ARM_V7S_CONT_PAGE_TEX_SHIFT	6
@@ -190,13 +192,22 @@ static dma_addr_t __arm_v7s_dma_addr(void *pages)
 static arm_v7s_iopte paddr_to_iopte(phys_addr_t paddr, int lvl,
 				    struct io_pgtable_cfg *cfg)
 {
-	return paddr & ARM_V7S_LVL_MASK(lvl);
+	arm_v7s_iopte pte = paddr & ARM_V7S_LVL_MASK(lvl);
+
+	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB) {
+		if (paddr & BIT_ULL(32))
+			pte |= ARM_V7S_ATTR_MTK_PA_BIT32;
+		if (paddr & BIT_ULL(33))
+			pte |= ARM_V7S_ATTR_MTK_PA_BIT33;
+	}
+	return pte;
 }
 
 static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
 				  struct io_pgtable_cfg *cfg)
 {
 	arm_v7s_iopte mask;
+	phys_addr_t paddr;
 
 	if (ARM_V7S_PTE_IS_TABLE(pte, lvl))
 		mask = ARM_V7S_TABLE_MASK;
@@ -205,7 +216,14 @@ static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
 	else
 		mask = ARM_V7S_LVL_MASK(lvl);
 
-	return pte & mask;
+	paddr = pte & mask;
+	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB) {
+		if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
+			paddr |= BIT_ULL(32);
+		if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
+			paddr |= BIT_ULL(33);
+	}
+	return paddr;
 }
 
 static arm_v7s_iopte *iopte_deref(arm_v7s_iopte pte, int lvl,
@@ -326,9 +344,6 @@ static arm_v7s_iopte arm_v7s_prot_to_pte(int prot, int lvl,
 	if (lvl == 1 && (cfg->quirks & IO_PGTABLE_QUIRK_ARM_NS))
 		pte |= ARM_V7S_ATTR_NS_SECTION;
 
-	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB)
-		pte |= ARM_V7S_ATTR_MTK_4GB;
-
 	return pte;
 }
 
@@ -515,7 +530,9 @@ static int arm_v7s_map(struct io_pgtable_ops *ops, unsigned long iova,
 	if (!(prot & (IOMMU_READ | IOMMU_WRITE)))
 		return 0;
 
-	if (WARN_ON(upper_32_bits(iova) || upper_32_bits(paddr)))
+	if (WARN_ON(upper_32_bits(iova)) ||
+	    WARN_ON(upper_32_bits(paddr) &&
+		    !(iop->cfg.quirks & IO_PGTABLE_QUIRK_ARM_MTK_4GB)))
 		return -ERANGE;
 
 	ret = __arm_v7s_map(data, iova, paddr, size, prot, 1, data->pgd);
diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index fefc2e0..4bab283 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -123,10 +123,11 @@ struct mtk_iommu_domain {
  *  0xc000_0000         0x1_c000_0000 ...
  *  0x1_0000_0000       0x1_0000_0000 (No change)
  *
- * The PA in the iova_to_phys that is got from v7s always is u32, But from
- * the CPU point of view, PA should add BIT(32) when PA < 0x4000_0000.
+ * Thus, We always add BIT32 in the iommu_map and disable BIT32 if PA is >=
+ * 0x1_4000_0000 in the iova_to_phys(From cpu point of view, the PA range is
+ * 0x4000_0000 - 0x1_3fff_ffff).
  */
-#define MTK_IOMMU_4GB_MODE_REMAP_BASE	 0x40000000
+#define MTK_IOMMU_4GB_MODE_REMAP_BASE	 0x140000000UL
 
 static LIST_HEAD(m4ulist);	/* List all the M4U HWs */
 
@@ -284,7 +285,8 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
 	dom->cfg = (struct io_pgtable_cfg) {
 		.quirks = IO_PGTABLE_QUIRK_ARM_NS |
 			IO_PGTABLE_QUIRK_NO_PERMS |
-			IO_PGTABLE_QUIRK_TLBI_ON_MAP,
+			IO_PGTABLE_QUIRK_TLBI_ON_MAP |
+			IO_PGTABLE_QUIRK_ARM_MTK_4GB,
 		.pgsize_bitmap = mtk_iommu_ops.pgsize_bitmap,
 		.ias = 32,
 		.oas = 32,
@@ -292,9 +294,6 @@ static int mtk_iommu_domain_finalise(struct mtk_iommu_domain *dom)
 		.iommu_dev = data->dev,
 	};
 
-	if (data->enable_4GB)
-		dom->cfg.quirks |= IO_PGTABLE_QUIRK_ARM_MTK_4GB;
-
 	dom->iop = alloc_io_pgtable_ops(ARM_V7S, &dom->cfg, data);
 	if (!dom->iop) {
 		dev_err(data->dev, "Failed to alloc io pgtable\n");
@@ -380,12 +379,16 @@ static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
 			 phys_addr_t paddr, size_t size, int prot)
 {
 	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
 	unsigned long flags;
 	int ret;
 
+	/* The "4GB mode" M4U physically can not use the lower remap of Dram. */
+	if (data->enable_4GB)
+		paddr |= BIT_ULL(32);
+
 	spin_lock_irqsave(&dom->pgtlock, flags);
-	ret = dom->iop->map(dom->iop, iova, paddr & DMA_BIT_MASK(32),
-			    size, prot);
+	ret = dom->iop->map(dom->iop, iova, paddr, size, prot);
 	spin_unlock_irqrestore(&dom->pgtlock, flags);
 
 	return ret;
@@ -422,8 +425,8 @@ static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
 	pa = dom->iop->iova_to_phys(dom->iop, iova);
 	spin_unlock_irqrestore(&dom->pgtlock, flags);
 
-	if (data->enable_4GB && pa < MTK_IOMMU_4GB_MODE_REMAP_BASE)
-		pa |= BIT_ULL(32);
+	if (data->enable_4GB && pa >= MTK_IOMMU_4GB_MODE_REMAP_BASE)
+		pa &= ~BIT_ULL(32);
 
 	return pa;
 }
@@ -615,6 +618,8 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 
 	/* Whether the current dram is over 4GB */
 	data->enable_4GB = !!(max_pfn > (BIT_ULL(32) >> PAGE_SHIFT));
+	if (!data->plat_data->has_4gb_mode)
+		data->enable_4GB = false;
 
 	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	data->base = devm_ioremap_resource(dev, res);
@@ -755,10 +760,12 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 
 static const struct mtk_iommu_plat_data mt2712_data = {
 	.m4u_plat     = M4U_MT2712,
+	.has_4gb_mode = true,
 };
 
 static const struct mtk_iommu_plat_data mt8173_data = {
 	.m4u_plat     = M4U_MT8173,
+	.has_4gb_mode = true,
 };
 
 static const struct of_device_id mtk_iommu_of_ids[] = {
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 483d210..d7a001a 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -42,6 +42,7 @@ enum mtk_iommu_plat {
 
 struct mtk_iommu_plat_data {
 	enum mtk_iommu_plat m4u_plat;
+	bool                has_4gb_mode;
 };
 
 struct mtk_iommu_domain;
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
