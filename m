Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5218A13078D
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Jan 2020 12:00:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rhgN/1KifRI9kaSI/qTAa8P9+ruVF+3g5z1s2ORYC4s=; b=Yb5r5pNHZwRxbV
	6qQ/bH+a5W7pX5fk1C6YvDgZgcfAKq542oA4NAQR/GQkYBR4+GwiccF76c8SGKFF+da90FPv93/pR
	E4ySksVIIOA+BG8vpF3kXGCIngO4dO5O8ZN2o/IyBqnb5HB0dJ/BZto+T54C6kFoboJ6gFGGB9G/6
	uuleD53ynFveXkdPzF8tqQlI+OiL95Fgy9rmNZ8tc7PYVdA11JgX3Ed8WYrJb76rs8yDhJG0VfsD5
	XfLFAhSlFRDRt34Yz7/HDWCGXnufocGdT3UQUR5mGhcOZetFhjyG8Q9dN8jDjyn65OYH/FUfVfBTO
	IL6rElf9s5VxHJJgHcXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1io3e7-0008TS-Er; Sun, 05 Jan 2020 11:00:35 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1io3aL-0003wZ-Dz; Sun, 05 Jan 2020 10:56:43 +0000
X-UUID: debaf6334d184cb69bc59f944819a5d0-20200105
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=wzv+DS2QU8JGS/oClDBJUbQzay4lYYCHyz03iNL5uvs=; 
 b=TiJQLcr9hJJN6o6lPtWmMC0l5Jn6qvJmKmY67vSygVst6rUac75fVfSyXqde52+MoKdxCGgQRpShK1mkKVnwHkjQlZMO3qnIsUgsTlP+4t8SzBH2BMdxZqFh8VWcHWYghFcJPdBasu8VHKeh4YnqbJztcIL/rEAEXo/gHtKFufg=;
X-UUID: debaf6334d184cb69bc59f944819a5d0-20200105
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 513299394; Sun, 05 Jan 2020 02:56:33 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 02:47:30 -0800
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 5 Jan 2020 18:46:35 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sun, 5 Jan 2020 18:45:32 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v2 11/19] iommu/mediatek: Remove pgtable info in
 mtk_iommu_domain
Date: Sun, 5 Jan 2020 18:45:15 +0800
Message-ID: <20200105104523.31006-12-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200105104523.31006-1-chao.hao@mediatek.com>
References: <20200105104523.31006-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200105_025641_613647_AE19805F 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [216.200.240.184 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Anan Sun <anan.sun@mediatek.com>, devicetree@vger.kernel.org,
 Jun Yan <jun.yan@mediatek.com>, wsd_upstream@mediatek.com,
 linux-kernel@vger.kernel.org, Chao Hao <chao.hao@mediatek.com>,
 iommu@lists.linux-foundation.org, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, Cui Zhang <zhang.cui@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch will use mtk_iommu_pgtable to replace the part
of pgtable in mtk_iommu_domain, so we can remove the information
of pgtable in mtk_iommu_domain.

Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 37 +++++++++++++++++--------------------
 1 file changed, 17 insertions(+), 20 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index cfefdd638f1a..b34bd3abccf8 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -111,9 +111,6 @@
 #define MTK_M4U_TO_PORT(id)		((id) & 0x1f)
 
 struct mtk_iommu_domain {
-	struct io_pgtable_cfg		cfg;
-	struct io_pgtable_ops		*iop;
-
 	struct iommu_domain		domain;
 };
 
@@ -373,6 +370,10 @@ static int mtk_iommu_attach_pgtable(struct mtk_iommu_data *data,
 	/* binding to pgtable */
 	data->pgtable = pgtable;
 
+	/* update HW settings */
+	writel(pgtable->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
+	       data->base + REG_MMU_PT_BASE_ADDR);
+
 	dev_info(data->dev, "m4u%d attach_pgtable done!\n", data->m4u_id);
 
 	return 0;
@@ -398,8 +399,6 @@ static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 	if (iommu_get_dma_cookie(&dom->domain))
 		goto  free_dom;
 
-	dom->cfg = pgtable->cfg;
-	dom->iop = pgtable->iop;
 	/* Update our support page sizes bitmap */
 	dom->domain.pgsize_bitmap = pgtable->cfg.pgsize_bitmap;
 
@@ -416,11 +415,12 @@ static struct iommu_domain *mtk_iommu_domain_alloc(unsigned type)
 
 static void mtk_iommu_domain_free(struct iommu_domain *domain)
 {
-	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
 
-	free_io_pgtable_ops(dom->iop);
 	iommu_put_dma_cookie(domain);
 	kfree(to_mtk_domain(domain));
+	free_io_pgtable_ops(pgtable->iop);
+	kfree(pgtable);
 }
 
 static int mtk_iommu_attach_device(struct iommu_domain *domain,
@@ -433,11 +433,8 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
 		return -ENODEV;
 
 	/* Update the pgtable base address register of the M4U HW */
-	if (!data->m4u_dom) {
+	if (!data->m4u_dom)
 		data->m4u_dom = dom;
-		writel(dom->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
-		       data->base + REG_MMU_PT_BASE_ADDR);
-	}
 
 	mtk_iommu_config(data, dev, true);
 	return 0;
@@ -457,7 +454,7 @@ static void mtk_iommu_detach_device(struct iommu_domain *domain,
 static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
 			 phys_addr_t paddr, size_t size, int prot, gfp_t gfp)
 {
-	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
 	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
 
 	/* The "4GB mode" M4U physically can not use the lower remap of Dram. */
@@ -465,16 +462,16 @@ static int mtk_iommu_map(struct iommu_domain *domain, unsigned long iova,
 		paddr |= BIT_ULL(32);
 
 	/* Synchronize with the tlb_lock */
-	return dom->iop->map(dom->iop, iova, paddr, size, prot);
+	return pgtable->iop->map(pgtable->iop, iova, paddr, size, prot);
 }
 
 static size_t mtk_iommu_unmap(struct iommu_domain *domain,
 			      unsigned long iova, size_t size,
 			      struct iommu_iotlb_gather *gather)
 {
-	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
 
-	return dom->iop->unmap(dom->iop, iova, size, gather);
+	return pgtable->iop->unmap(pgtable->iop, iova, size, gather);
 }
 
 static void mtk_iommu_flush_iotlb_all(struct iommu_domain *domain)
@@ -498,11 +495,11 @@ static void mtk_iommu_iotlb_sync(struct iommu_domain *domain,
 static phys_addr_t mtk_iommu_iova_to_phys(struct iommu_domain *domain,
 					  dma_addr_t iova)
 {
-	struct mtk_iommu_domain *dom = to_mtk_domain(domain);
+	struct mtk_iommu_pgtable *pgtable = mtk_iommu_get_pgtable();
 	struct mtk_iommu_data *data = mtk_iommu_get_m4u_data();
 	phys_addr_t pa;
 
-	pa = dom->iop->iova_to_phys(dom->iop, iova);
+	pa = pgtable->iop->iova_to_phys(pgtable->iop, iova);
 	if (data->enable_4GB && pa >= MTK_IOMMU_4GB_MODE_REMAP_BASE)
 		pa &= ~BIT_ULL(32);
 
@@ -845,8 +842,8 @@ static int __maybe_unused mtk_iommu_suspend(struct device *dev)
 static int __maybe_unused mtk_iommu_resume(struct device *dev)
 {
 	struct mtk_iommu_data *data = dev_get_drvdata(dev);
+	struct mtk_iommu_pgtable *pgtable = data->pgtable;
 	struct mtk_iommu_suspend_reg *reg = &data->reg;
-	struct mtk_iommu_domain *m4u_dom = data->m4u_dom;
 	void __iomem *base = data->base;
 	int ret;
 
@@ -864,8 +861,8 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 	writel_relaxed(reg->int_main_control, base + REG_MMU_INT_MAIN_CONTROL);
 	writel_relaxed(reg->ivrp_paddr, base + REG_MMU_IVRP_PADDR);
 	writel_relaxed(reg->vld_pa_rng, base + REG_MMU_VLD_PA_RNG);
-	if (m4u_dom)
-		writel(m4u_dom->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
+	if (pgtable)
+		writel(pgtable->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
 		       base + REG_MMU_PT_BASE_ADDR);
 	return 0;
 }
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
