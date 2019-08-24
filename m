Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E0E99BB04
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 24 Aug 2019 05:03:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9hZC5h6tZpQIbkACBnsgMqY9gszoy/a3ziZsUM+u7FU=; b=u+q+vhIjzOmXHw
	EYXEnIAG9J7Ko0WZaunJrm/W1GhpscKLFtHcLBVrDuPAMdTLInUpdwc/cu/FpW1B3OdUnDAJ6LjKr
	I2rxgiO/B07MpghLVO8IIEiQvHfCCoaZicrJwkmG+5uOZLTRG9mJX1XSVMcnStE2Cq3LW1prz3/Lq
	kk3FZ3K7k23QTE+cdCRh/zEZUHyv9sgLM+PpuZ5kekC5YyH4x3E4RTxip+PsIM7USgVsswhDqrA8f
	gT9VRJrRYKzYq73P4Y/BbvJSfVHT0RuMmIwehDxOEUMDHxLvX6GdC3aLGiIA7jZ55JgsEetyXsDH1
	uo2zTnFcQF7dxq+0JPQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1MLJ-0008EI-A1; Sat, 24 Aug 2019 03:03:53 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1MKs-00084Y-CR; Sat, 24 Aug 2019 03:03:27 +0000
X-UUID: 994aa9f15ce74f5e9530e1550fc065fb-20190823
X-UUID: 994aa9f15ce74f5e9530e1550fc065fb-20190823
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 887007260; Fri, 23 Aug 2019 19:02:57 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Fri, 23 Aug 2019 20:02:56 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n1.mediatek.inc (172.21.101.16) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 24 Aug 2019 11:02:54 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Sat, 24 Aug 2019 11:02:53 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Will Deacon <will@kernel.org>
Subject: [PATCH v11 02/23] iommu/mediatek: Use a struct as the platform data
Date: Sat, 24 Aug 2019 11:01:47 +0800
Message-ID: <1566615728-26388-3-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1566615728-26388-1-git-send-email-yong.wu@mediatek.com>
References: <1566615728-26388-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_200326_536979_FB47A2DD 
X-CRM114-Status: GOOD (  13.49  )
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

Use a struct as the platform special data instead of the enumeration.
This is a prepare patch for adding mt8183 iommu support.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Matthias Brugger <matthias.bgg@gmail.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 drivers/iommu/mtk_iommu.c | 24 ++++++++++++++++--------
 drivers/iommu/mtk_iommu.h |  6 +++++-
 2 files changed, 21 insertions(+), 9 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index 82e4be4..c6e6dc3 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -46,7 +46,7 @@
 #define REG_MMU_CTRL_REG			0x110
 #define F_MMU_PREFETCH_RT_REPLACE_MOD		BIT(4)
 #define F_MMU_TF_PROTECT_SEL_SHIFT(data) \
-	((data)->m4u_plat == M4U_MT2712 ? 4 : 5)
+	((data)->plat_data->m4u_plat == M4U_MT2712 ? 4 : 5)
 /* It's named by F_MMU_TF_PROT_SEL in mt2712. */
 #define F_MMU_TF_PROTECT_SEL(prot, data) \
 	(((prot) & 0x3) << F_MMU_TF_PROTECT_SEL_SHIFT(data))
@@ -512,7 +512,7 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 	}
 
 	regval = F_MMU_TF_PROTECT_SEL(2, data);
-	if (data->m4u_plat == M4U_MT8173)
+	if (data->plat_data->m4u_plat == M4U_MT8173)
 		regval |= F_MMU_PREFETCH_RT_REPLACE_MOD;
 	writel_relaxed(regval, data->base + REG_MMU_CTRL_REG);
 
@@ -533,14 +533,14 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		F_INT_PRETETCH_TRANSATION_FIFO_FAULT;
 	writel_relaxed(regval, data->base + REG_MMU_INT_MAIN_CONTROL);
 
-	if (data->m4u_plat == M4U_MT8173)
+	if (data->plat_data->m4u_plat == M4U_MT8173)
 		regval = (data->protect_base >> 1) | (data->enable_4GB << 31);
 	else
 		regval = lower_32_bits(data->protect_base) |
 			 upper_32_bits(data->protect_base);
 	writel_relaxed(regval, data->base + REG_MMU_IVRP_PADDR);
 
-	if (data->enable_4GB && data->m4u_plat != M4U_MT8173) {
+	if (data->enable_4GB && data->plat_data->m4u_plat != M4U_MT8173) {
 		/*
 		 * If 4GB mode is enabled, the validate PA range is from
 		 * 0x1_0000_0000 to 0x1_ffff_ffff. here record bit[32:30].
@@ -551,7 +551,7 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 	writel_relaxed(0, data->base + REG_MMU_DCM_DIS);
 
 	/* It's MISC control register whose default value is ok except mt8173.*/
-	if (data->m4u_plat == M4U_MT8173)
+	if (data->plat_data->m4u_plat == M4U_MT8173)
 		writel_relaxed(0, data->base + REG_MMU_STANDARD_AXI_MODE);
 
 	if (devm_request_irq(data->dev, data->irq, mtk_iommu_isr, 0,
@@ -584,7 +584,7 @@ static int mtk_iommu_probe(struct platform_device *pdev)
 	if (!data)
 		return -ENOMEM;
 	data->dev = dev;
-	data->m4u_plat = (enum mtk_iommu_plat)of_device_get_match_data(dev);
+	data->plat_data = of_device_get_match_data(dev);
 
 	/* Protect memory. HW will access here while translation fault.*/
 	protect = devm_kzalloc(dev, MTK_PROTECT_PA_ALIGN * 2, GFP_KERNEL);
@@ -732,9 +732,17 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 	SET_NOIRQ_SYSTEM_SLEEP_PM_OPS(mtk_iommu_suspend, mtk_iommu_resume)
 };
 
+static const struct mtk_iommu_plat_data mt2712_data = {
+	.m4u_plat     = M4U_MT2712,
+};
+
+static const struct mtk_iommu_plat_data mt8173_data = {
+	.m4u_plat     = M4U_MT8173,
+};
+
 static const struct of_device_id mtk_iommu_of_ids[] = {
-	{ .compatible = "mediatek,mt2712-m4u", .data = (void *)M4U_MT2712},
-	{ .compatible = "mediatek,mt8173-m4u", .data = (void *)M4U_MT8173},
+	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
+	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
 	{}
 };
 
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 59337323..9725b08 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -32,6 +32,10 @@ enum mtk_iommu_plat {
 	M4U_MT8173,
 };
 
+struct mtk_iommu_plat_data {
+	enum mtk_iommu_plat m4u_plat;
+};
+
 struct mtk_iommu_domain;
 
 struct mtk_iommu_data {
@@ -48,7 +52,7 @@ struct mtk_iommu_data {
 	bool				tlb_flush_active;
 
 	struct iommu_device		iommu;
-	enum mtk_iommu_plat		m4u_plat;
+	const struct mtk_iommu_plat_data *plat_data;
 
 	struct list_head		list;
 };
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
