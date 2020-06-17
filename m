Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F1D1FC48C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 05:13:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RTbh5w5Ho/+eWwTBrGrp4yXpJxgmhm71fawh7xys6kk=; b=rcCjyS+JodgfCx
	bJbuP02jQWIaXiJTQF0CZnGswmwElSKoHlz0g2/o+sH+sO6PUO84Bq64LMJZ/dMEyx6t9BD91CL7I
	SOxXVMM8ao/XoENpD/2AoXHRSpJRHhRciYeU4hAtklu1twX1UjIWacowbeq+nZPhbzlwAdYCTgW4S
	IoeWmG9wIqKoipW13cA63DCVmAIXsi+hUhSosYNso2vcHEcuP10USQPtzuLjD/L2EB0CSSO0Drlp7
	ikYPtpSriBs61n49xizwo2vCo634xzuyLmxXH53LuzeIQlqIJylnq47aHTvXc3x5F/8piQj+i/bUV
	trJ/U1Er3xoYauV8tL6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlOVj-0000t4-1O; Wed, 17 Jun 2020 03:13:11 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlOU5-0007x7-LB; Wed, 17 Jun 2020 03:11:31 +0000
X-UUID: 185a29385ba5472f920e34587ca2fdd7-20200616
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:CC:To:From;
 bh=/Dw68WkMyThFaez9HaYgW4+YPicvNPWdln8HwgJeo4A=; 
 b=DTMIaZMBBY0nB0XqljD2PikVe9vBntlwVei9uSrnGp9shDj9LF+a11EuGeD8NFuuFVH6arsHTyY14hPm+HlljeF6Ey8+WbgLA9bu7pkvJYtanb2x4cg2mal/a91ubuA5lCvetdWAUVcNd7klCK13oAQYyWy5aUYbG1Fyof74XIw=;
X-UUID: 185a29385ba5472f920e34587ca2fdd7-20200616
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw01.mediatek.com
 (envelope-from <chao.hao@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 79552047; Tue, 16 Jun 2020 19:11:24 -0800
Received: from MTKMBS01N1.mediatek.inc (172.21.101.68) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Tue, 16 Jun 2020 20:01:21 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n1.mediatek.inc (172.21.101.68) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 17 Jun 2020 11:01:22 +0800
Received: from localhost.localdomain (10.15.20.246) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 17 Jun 2020 11:01:10 +0800
From: Chao Hao <chao.hao@mediatek.com>
To: Joerg Roedel <joro@8bytes.org>, Rob Herring <robh+dt@kernel.org>,
 "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v4 7/7] iommu/mediatek: Add mt6779 basic support
Date: Wed, 17 Jun 2020 11:00:29 +0800
Message-ID: <20200617030029.4082-8-chao.hao@mediatek.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200617030029.4082-1-chao.hao@mediatek.com>
References: <20200617030029.4082-1-chao.hao@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200616_201129_770357_3801B396 
X-CRM114-Status: GOOD (  12.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 MIME_BASE64_TEXT       RAW: Message text disguised using base64
 encoding
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, FY Yang <fy.yang@mediatek.com>,
 wsd_upstream@mediatek.com, linux-kernel@vger.kernel.org,
 Chao Hao <chao.hao@mediatek.com>, iommu@lists.linux-foundation.org,
 linux-mediatek@lists.infradead.org, Yong Wu <yong.wu@mediatek.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

1. Start from mt6779, INVLDT_SEL move to offset=0x2c, so we add
   REG_MMU_INV_SEL_GEN2 definition and mt6779 uses it.
2. Change PROTECT_PA_ALIGN from 128 byte to 256 byte.
3. For REG_MMU_CTRL_REG register, we only need to change bit[2:0],
   others bits keep default value, ex: enable victim tlb.
4. Add mt6779_data to support mm_iommu HW init.

Change since v3:
1. When setting MMU_CTRL_REG, we don't need to include mt8173.

Cc: Yong Wu <yong.wu@mediatek.com>
Signed-off-by: Chao Hao <chao.hao@mediatek.com>
---
 drivers/iommu/mtk_iommu.c | 20 ++++++++++++++++++--
 drivers/iommu/mtk_iommu.h |  1 +
 2 files changed, 19 insertions(+), 2 deletions(-)

diff --git a/drivers/iommu/mtk_iommu.c b/drivers/iommu/mtk_iommu.c
index c706bca6487e..def2e996683f 100644
--- a/drivers/iommu/mtk_iommu.c
+++ b/drivers/iommu/mtk_iommu.c
@@ -37,6 +37,11 @@
 #define REG_MMU_INVLD_START_A			0x024
 #define REG_MMU_INVLD_END_A			0x028
 
+/* In latest Coda, MMU_INV_SEL's offset is changed to 0x02c.
+ * So we named offset = 0x02c to "REG_MMU_INV_SEL_GEN2"
+ * and offset = 0x038 to "REG_MMU_INV_SEL_GEN1".
+ */
+#define REG_MMU_INV_SEL_GEN2			0x02c
 #define REG_MMU_INV_SEL_GEN1			0x038
 #define F_INVLD_EN0				BIT(0)
 #define F_INVLD_EN1				BIT(1)
@@ -98,7 +103,7 @@
 #define F_MMU_INT_ID_LARB_ID(a)			(((a) >> 7) & 0x7)
 #define F_MMU_INT_ID_PORT_ID(a)			(((a) >> 2) & 0x1f)
 
-#define MTK_PROTECT_PA_ALIGN			128
+#define MTK_PROTECT_PA_ALIGN			256
 
 /*
  * Get the local arbiter ID and the portid within the larb arbiter
@@ -543,11 +548,12 @@ static int mtk_iommu_hw_init(const struct mtk_iommu_data *data)
 		return ret;
 	}
 
+	regval = readl_relaxed(data->base + REG_MMU_CTRL_REG);
 	if (data->plat_data->m4u_plat == M4U_MT8173)
 		regval = F_MMU_PREFETCH_RT_REPLACE_MOD |
 			 F_MMU_TF_PROT_TO_PROGRAM_ADDR_MT8173;
 	else
-		regval = F_MMU_TF_PROT_TO_PROGRAM_ADDR;
+		regval |= F_MMU_TF_PROT_TO_PROGRAM_ADDR;
 	writel_relaxed(regval, data->base + REG_MMU_CTRL_REG);
 
 	regval = F_L2_MULIT_HIT_EN |
@@ -797,6 +803,15 @@ static const struct mtk_iommu_plat_data mt2712_data = {
 	.larbid_remap   = {{0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}},
 };
 
+static const struct mtk_iommu_plat_data mt6779_data = {
+	.m4u_plat      = M4U_MT6779,
+	.has_sub_comm  = true,
+	.has_wr_len    = true,
+	.has_misc_ctrl = true,
+	.inv_sel_reg   = REG_MMU_INV_SEL_GEN2,
+	.larbid_remap  = {{0}, {1}, {2}, {3}, {5}, {7, 8}, {10}, {9}},
+};
+
 static const struct mtk_iommu_plat_data mt8173_data = {
 	.m4u_plat     = M4U_MT8173,
 	.has_4gb_mode = true,
@@ -815,6 +830,7 @@ static const struct mtk_iommu_plat_data mt8183_data = {
 
 static const struct of_device_id mtk_iommu_of_ids[] = {
 	{ .compatible = "mediatek,mt2712-m4u", .data = &mt2712_data},
+	{ .compatible = "mediatek,mt6779-m4u", .data = &mt6779_data},
 	{ .compatible = "mediatek,mt8173-m4u", .data = &mt8173_data},
 	{ .compatible = "mediatek,mt8183-m4u", .data = &mt8183_data},
 	{}
diff --git a/drivers/iommu/mtk_iommu.h b/drivers/iommu/mtk_iommu.h
index 9971cedd72ea..fb79e710c8d9 100644
--- a/drivers/iommu/mtk_iommu.h
+++ b/drivers/iommu/mtk_iommu.h
@@ -31,6 +31,7 @@ struct mtk_iommu_suspend_reg {
 enum mtk_iommu_plat {
 	M4U_MT2701,
 	M4U_MT2712,
+	M4U_MT6779,
 	M4U_MT8173,
 	M4U_MT8183,
 };
-- 
2.18.0
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
