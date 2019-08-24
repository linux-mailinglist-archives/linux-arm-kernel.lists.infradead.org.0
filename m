Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B168B9BB20
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 05:06:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6v3JhRYesmm8PdK740tB158BNGDcAmKeITtPtc2Ck4g=; b=qceztgGGtQSoPH
	HOt26hKABArBao7tOLh8Sf1YAwDcEdM2vbYFTeY4rBamQ0pHsNqcDq4O38vszD12LRf9nwqQGIYwY
	amdoY1II5UO+xEb5fn6TvPclxnV6bfhUVom9r4yqB550UrtoOn6PBeA4TuKzYWlIpy3759GOsr8X0
	it4/GDzmVYFQdrWrLdub6iGcadCFqj4NLGJ+aaP+wJl8smOT+EkT51Jjj09f3yQU1Ik/lvCKOFD/2
	Nwaxa8Nkqdoc2mzlucRJghAK133nQAhZHVEVui06oWHeOe2Ney4tu6PxS6RKVlTIzylmQT/+UbVDF
	5kVFa4iASHLuCzb/5m0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1MNZ-0002mW-Qx; Sat, 24 Aug 2019 03:06:14 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1MMR-00013P-Od; Sat, 24 Aug 2019 03:05:05 +0000
X-UUID: 4bd8bf32cb5d4a1ea6734fbe12788cda-20190823
X-UUID: 4bd8bf32cb5d4a1ea6734fbe12788cda-20190823
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 17285626; Fri, 23 Aug 2019 19:04:26 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 20:04:24 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 24 Aug 2019 11:04:23 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 24 Aug 2019 11:04:22 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v11 09/23] iommu/io-pgtable-arm-v7s: Extend to support
 PA[33:32] for MediaTek
Date: Sat, 24 Aug 2019 11:01:54 +0800
Message-ID: <1566615728-26388-10-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566615728-26388-1-git-send-email-yong.wu@mediatek.com>
References: <1566615728-26388-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_200503_843435_11D082F1 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
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

MediaTek extend the arm v7s descriptor to support up to 34 bits PA where
the bit32 and bit33 are encoded in the bit9 and bit4 of the PTE
respectively. Meanwhile the iova still is 32bits.

Regarding whether the pagetable address could be over 4GB, the mt8183
support it while the previous mt8173 don't, thus keep it as is.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Acked-by: Will Deacon <will@kernel.org>
---
 drivers/iommu/io-pgtable-arm-v7s.c | 40 +++++++++++++++++++++++++++++++-------
 include/linux/io-pgtable.h         |  7 +++----
 2 files changed, 36 insertions(+), 11 deletions(-)

diff --git a/drivers/iommu/io-pgtable-arm-v7s.c b/drivers/iommu/io-pgtable-arm-v7s.c
index 77cc1eb..5452871 100644
--- a/drivers/iommu/io-pgtable-arm-v7s.c
+++ b/drivers/iommu/io-pgtable-arm-v7s.c
@@ -112,7 +112,9 @@
 #define ARM_V7S_TEX_MASK		0x7
 #define ARM_V7S_ATTR_TEX(val)		(((val) & ARM_V7S_TEX_MASK) << ARM_V7S_TEX_SHIFT)
 
-#define ARM_V7S_ATTR_MTK_4GB		BIT(9) /* MTK extend it for 4GB mode */
+/* MediaTek extend the two bits for PA 32bit/33bit */
+#define ARM_V7S_ATTR_MTK_PA_BIT32	BIT(9)
+#define ARM_V7S_ATTR_MTK_PA_BIT33	BIT(4)
 
 /* *well, except for TEX on level 2 large pages, of course :( */
 #define ARM_V7S_CONT_PAGE_TEX_SHIFT	6
@@ -176,16 +178,32 @@ static dma_addr_t __arm_v7s_dma_addr(void *pages)
 	return (dma_addr_t)virt_to_phys(pages);
 }
 
+static bool arm_v7s_is_mtk_enabled(struct io_pgtable_cfg *cfg)
+{
+	return IS_ENABLED(CONFIG_PHYS_ADDR_T_64BIT) &&
+		(cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT);
+}
+
 static arm_v7s_iopte paddr_to_iopte(phys_addr_t paddr, int lvl,
 				    struct io_pgtable_cfg *cfg)
 {
-	return paddr & ARM_V7S_LVL_MASK(lvl);
+	arm_v7s_iopte pte = paddr & ARM_V7S_LVL_MASK(lvl);
+
+	if (!arm_v7s_is_mtk_enabled(cfg))
+		return pte;
+
+	if (paddr & BIT_ULL(32))
+		pte |= ARM_V7S_ATTR_MTK_PA_BIT32;
+	if (paddr & BIT_ULL(33))
+		pte |= ARM_V7S_ATTR_MTK_PA_BIT33;
+	return pte;
 }
 
 static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
 				  struct io_pgtable_cfg *cfg)
 {
 	arm_v7s_iopte mask;
+	phys_addr_t paddr;
 
 	if (ARM_V7S_PTE_IS_TABLE(pte, lvl))
 		mask = ARM_V7S_TABLE_MASK;
@@ -194,7 +212,15 @@ static phys_addr_t iopte_to_paddr(arm_v7s_iopte pte, int lvl,
 	else
 		mask = ARM_V7S_LVL_MASK(lvl);
 
-	return pte & mask;
+	paddr = pte & mask;
+	if (!arm_v7s_is_mtk_enabled(cfg))
+		return paddr;
+
+	if (pte & ARM_V7S_ATTR_MTK_PA_BIT32)
+		paddr |= BIT_ULL(32);
+	if (pte & ARM_V7S_ATTR_MTK_PA_BIT33)
+		paddr |= BIT_ULL(33);
+	return paddr;
 }
 
 static arm_v7s_iopte *iopte_deref(arm_v7s_iopte pte, int lvl,
@@ -315,9 +341,6 @@ static arm_v7s_iopte arm_v7s_prot_to_pte(int prot, int lvl,
 	if (lvl == 1 && (cfg->quirks & IO_PGTABLE_QUIRK_ARM_NS))
 		pte |= ARM_V7S_ATTR_NS_SECTION;
 
-	if (cfg->quirks & IO_PGTABLE_QUIRK_ARM_MTK_EXT)
-		pte |= ARM_V7S_ATTR_MTK_4GB;
-
 	return pte;
 }
 
@@ -731,7 +754,10 @@ static struct io_pgtable *arm_v7s_alloc_pgtable(struct io_pgtable_cfg *cfg,
 {
 	struct arm_v7s_io_pgtable *data;
 
-	if (cfg->ias > ARM_V7S_ADDR_BITS || cfg->oas > ARM_V7S_ADDR_BITS)
+	if (cfg->ias > ARM_V7S_ADDR_BITS)
+		return NULL;
+
+	if (cfg->oas > (arm_v7s_is_mtk_enabled(cfg) ? 34 : ARM_V7S_ADDR_BITS))
 		return NULL;
 
 	if (cfg->quirks & ~(IO_PGTABLE_QUIRK_ARM_NS |
diff --git a/include/linux/io-pgtable.h b/include/linux/io-pgtable.h
index 915fb73..a2a52c3 100644
--- a/include/linux/io-pgtable.h
+++ b/include/linux/io-pgtable.h
@@ -65,10 +65,9 @@ struct io_pgtable_cfg {
 	 *	(unmapped) entries but the hardware might do so anyway, perform
 	 *	TLB maintenance when mapping as well as when unmapping.
 	 *
-	 * IO_PGTABLE_QUIRK_ARM_MTK_EXT: (ARM v7s format) Set bit 9 in all
-	 *	PTEs, for Mediatek IOMMUs which treat it as a 33rd address bit
-	 *	when the SoC is in "4GB mode" and they can only access the high
-	 *	remap of DRAM (0x1_00000000 to 0x1_ffffffff).
+	 * IO_PGTABLE_QUIRK_ARM_MTK_EXT: (ARM v7s format) MediaTek IOMMUs extend
+	 *	to support up to 34 bits PA where the bit32 and bit33 are
+	 *	encoded in the bit9 and bit4 of the PTE respectively.
 	 *
 	 * IO_PGTABLE_QUIRK_NON_STRICT: Skip issuing synchronous leaf TLBIs
 	 *	on unmap, for DMA domains using the flush queue mechanism for
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
