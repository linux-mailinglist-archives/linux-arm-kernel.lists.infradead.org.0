Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AF1713B4C5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Jun 2019 14:23:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fzt4zmYUrhOWSLI/OWjryugUrxyrAjfYjOFg9LvgmHI=; b=A9NGklknifXFAN
	Y6+UXxxuxs8ovBymQgfoHXP3G9YATLIqRp6DfTwAyx+wTjJb8r6ysLLGUE3dPXSCK1Ky++bbSXKYs
	hwFpSQ48ohOT/vSuZ+SavkwLZEr3eNMhwfGujGgVjLn8+HTQTMuC6TaAhyKBYADA8mfGQ7FIejKzv
	39/pWfv8tdoIggBx/nJRvuB7tHx39TjfXGc0pMkGOS4pPluioslK5fMZAbhYZyFM7fKjXMGPWvgDx
	MXcOYja6b48tXY0Y1q8KbT0+53h2Ldyqw/0xKHlfRP1mNFdDK7WpTmaYFiEsn3ugsND+gj8K6zcdS
	DKq5Pn8TZn1zMGWshdIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haJKE-0001Qo-9K; Mon, 10 Jun 2019 12:22:58 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1haJIP-00009c-1P; Mon, 10 Jun 2019 12:21:08 +0000
X-UUID: e2b584ef17e74f359d968ef06cf79cbf-20190610
X-UUID: e2b584ef17e74f359d968ef06cf79cbf-20190610
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yong.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1574923036; Mon, 10 Jun 2019 04:21:00 -0800
Received: from MTKMBS07N2.mediatek.inc (172.21.101.141) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 05:20:58 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs07n2.mediatek.inc (172.21.101.141) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Mon, 10 Jun 2019 20:20:57 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Mon, 10 Jun 2019 20:20:56 +0800
From: Yong Wu <yong.wu@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Matthias Brugger <matthias.bgg@gmail.com>, 
 Robin Murphy <robin.murphy@arm.com>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v7 13/21] iommu/mediatek: Add mt8183 IOMMU support
Date: Mon, 10 Jun 2019 20:17:52 +0800
Message-ID: <1560169080-27134-14-git-send-email-yong.wu@mediatek.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
References: <1560169080-27134-1-git-send-email-yong.wu@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190610_052105_353457_5598847C 
X-CRM114-Status: GOOD (  17.27  )
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

The M4U IP blocks in mt8183 is MediaTek's generation2 M4U which use
the ARM Short-descriptor like mt8173, and most of the HW registers
are the same.

Here list main differences between mt8183 and mt8173/mt2712:
1) mt8183 has only one M4U HW like mt8173 while mt2712 has two.
2) mt8183 don't have the "bclk" clock, it use the EMI clock instead.
3) mt8183 can support the dram over 4GB, but it doesn't call this "4GB
mode".
4) mt8183 pgtable base register(0x0) extend bit[1:0] which represent
the bit[33:32] in the physical address of the pgtable base, But the
standard ttbr0[1] means the S bit which is enabled defaultly, Hence,
we add a mask.
5) mt8183 HW has a GALS modules, SMI should enable "has_gals" support.
6) mt8183 need reset_axi like mt8173.
7) the larb-id in smi-common is remapped. M4U should add its larbid_remap.

Signed-off-by: Yong Wu <yong.wu@mediatek.com>
Reviewed-by: Evan Green <evgreen@chromium.org>
---
 drivers/iommu/mtk_iommu.c | 15 ++++++++++++---
 drivers/iommu/mtk_iommu.h |  1 +
 drivers/memory/mtk-smi.c  | 20 ++++++++++++++++++++
 3 files changed, 33 insertions(+), 3 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index a535dcd..3a14301 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -36,6 +36,7 @@
 #include "mtk_iommu.h"
 
 #define REG_MMU_PT_BASE_ADDR			0x000
+#define MMU_PT_ADDR_MASK			GENMASK(31, 7)
 
 #define REG_MMU_INVALIDATE			0x020
 #define F_ALL_INVLD				0x2
@@ -341,7 +342,7 @@ static int mtk_iommu_attach_device(struct iommu_domain *domain,
 	/* Update the pgtable base address register of the M4U HW */
 	if (!data->m4u_dom) {
 		data->m4u_dom = dom;
-		writel(dom->cfg.arm_v7s_cfg.ttbr[0],
+		writel(dom->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
 		       data->base + REG_MMU_PT_BASE_ADDR);
 	}
 
@@ -715,6 +716,7 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 {
 	struct mtk_iommu_data *data = dev_get_drvdata(dev);
 	struct mtk_iommu_suspend_reg *reg = &data->reg;
+	struct mtk_iommu_domain *m4u_dom = data->m4u_dom;
 	void __iomem *base = data->base;
 	int ret;
 
@@ -730,8 +732,8 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 	writel_relaxed(reg->int_control0, base + REG_MMU_INT_CONTROL0);
 	writel_relaxed(reg->int_main_control, base + REG_MMU_INT_MAIN_CONTROL);
 	writel_relaxed(reg->ivrp_paddr, base + REG_MMU_IVRP_PADDR);
-	if (data->m4u_dom)
-		writel(data->m4u_dom->cfg.arm_v7s_cfg.ttbr[0],
+	if (m4u_dom)
+		writel(m4u_dom->cfg.arm_v7s_cfg.ttbr[0] & MMU_PT_ADDR_MASK,
 		       base + REG_MMU_PT_BASE_ADDR);
 	return 0;
 }
@@ -756,9 +758,16 @@ static int __maybe_unused mtk_iommu_resume(struct device *dev)
 	.larbid_remap = {0, 1, 2, 3, 4, 5}, /* Linear mapping. */
 };
 
+static const struct mtk_iommu_plat_data mt8183_data = {
+	.m4u_plat     = M4U_MT8183,
+	.reset_axi    = true,
+	.larbid_remap = {0, 4, 5, 6, 7, 2, 3, 1},
+};
+
 static const struct of_device_id mtk_iommu_of_ids[] = {
 	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
 	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
+	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
 	{}
 };
 
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index e5c9dde..c0b5c65 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -38,6 +38,7 @@ enum mtk_iommu_plat {
 	M4U_MT2701,
 	M4U_MT2712,
 	M4U_MT8173,
+	M4U_MT8183,
 };
 
 struct mtk_iommu_plat_data {
diff --git a/drivers/memory/mtk-smi.c b/drivers/memory/mtk-smi.c
index 91634d7..a430721 100644
--- a/drivers/memory/mtk-smi.c
+++ b/drivers/memory/mtk-smi.c
@@ -285,6 +285,13 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
 	.larb_direct_to_common_mask = BIT(8) | BIT(9),      /* bdpsys */
 };
 
+static const struct mtk_smi_larb_gen mtk_smi_larb_mt8183 = {
+	.has_gals                   = true,
+	.config_port                = mtk_smi_larb_config_port_gen2_general,
+	.larb_direct_to_common_mask = BIT(2) | BIT(3) | BIT(7),
+				      /* IPU0 | IPU1 | CCU */
+};
+
 static const struct of_device_id mtk_smi_larb_of_ids[] = {
 	{
 		.compatible = "mediatek,mt8173-smi-larb",
@@ -298,6 +305,10 @@ static void mtk_smi_larb_config_port_gen1(struct device *dev)
 		.compatible = "mediatek,mt2712-smi-larb",
 		.data = &mtk_smi_larb_mt2712
 	},
+	{
+		.compatible = "mediatek,mt8183-smi-larb",
+		.data = &mtk_smi_larb_mt8183
+	},
 	{}
 };
 
@@ -391,6 +402,11 @@ static int mtk_smi_larb_remove(struct platform_device *pdev)
 	.gen = MTK_SMI_GEN2,
 };
 
+static const struct mtk_smi_common_plat mtk_smi_common_mt8183 = {
+	.gen      = MTK_SMI_GEN2,
+	.has_gals = true,
+};
+
 static const struct of_device_id mtk_smi_common_of_ids[] = {
 	{
 		.compatible = "mediatek,mt8173-smi-common",
@@ -404,6 +420,10 @@ static int mtk_smi_larb_remove(struct platform_device *pdev)
 		.compatible = "mediatek,mt2712-smi-common",
 		.data = &mtk_smi_common_gen2,
 	},
+	{
+		.compatible = "mediatek,mt8183-smi-common",
+		.data = &mtk_smi_common_mt8183,
+	},
 	{}
 };
 
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
