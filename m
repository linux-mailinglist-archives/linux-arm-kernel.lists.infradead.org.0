Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A256E8480F
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 10:48:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XX0iz4N2gMYya1TRan7cEtdWL6bUXgI1xXrkabGqWV0=; b=oAS8nqK4cgsDKN
	JwhM7rkLateUsyTXJA9jv3VK+lT6U6tNRaj6Adeo3INyYGR/4yFf5DqP1eQ0i6PYYTvPzsd8Y1Cx7
	zWh5I3nlPHRTD0N573zQg6mPOJBMGe0qejf9WmrMWHiRwU5/XMfECTgyB8+DPDy3lH+mAN1kdQErB
	7BOBdLB/Dc2rTM7x414bw0/GY5+5ZdowpHCtOr1I56lE6qgJ0EQGJin01ekjuaAvBAmJ27TnL/dyV
	nXH8yByb+77PrjPQoVh51etjE+YWeOxYaAJu/QnELRl/+uxm0rM0RJZUGDhLRfZac6cPii88D+VAS
	ykGl1hHrv9/UGndoeDog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvHcO-0007V9-Gs; Wed, 07 Aug 2019 08:48:24 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvHb9-0006ky-2B; Wed, 07 Aug 2019 08:47:08 +0000
X-UUID: b3b75addc7ea47699768451aee1bb6b5-20190807
X-UUID: b3b75addc7ea47699768451aee1bb6b5-20190807
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1930103571; Wed, 07 Aug 2019 00:47:01 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Wed, 7 Aug 2019 01:47:00 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Wed, 7 Aug 2019 16:46:53 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Wed, 7 Aug 2019 16:46:51 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v6 3/3] drm/mediatek: add mipi_tx driver for mt8183
Date: Wed, 7 Aug 2019 16:46:45 +0800
Message-ID: <20190807084645.63738-4-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190807084645.63738-1-jitao.shi@mediatek.com>
References: <20190807084645.63738-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-AS-Product-Ver: SMEX-12.5.0.1684-8.5.1010-24828.001
X-TM-AS-Result: No-4.180400-8.000000-10
X-TMASE-MatchedRID: 6j4eTuaZbtMfKML5AJtfLf3HILfxLV/9E1YUt4FjGjGOUV82NDH4AkwS
 eVQnSS/F/SrcY9Zl4TqPQi9XuOWoOF3kw/94/kQqGjzBgnFZvQ40VTU7yL3Dkw5SzgJNSArLu/q
 +tuzAwMz7PB9rRkAeWknhL8mFKNasRx6S2cF3onpwLF78dZXkZg/o5bNHEsCTRjNrjV0arFImNh
 b+NkYsr1J5R3CC0+bWBnXN9qDb2BZV2C/9+oeSXsF7z3OyLkPQ36DIeK03Kb+bKItl61J/yZ+in
 TK0bC9eKrauXd3MZDWdoo0/Al2OnHjxItbvhFrf7+vS+kF4lH/RZCmVQnen7QH0dylXmiKJd39b
 v0KoEaG40dptVjEDlfm935TgNq1fg8WGktkEkQncYFxZVrWia/iFRwAjfKn+4r2sHcnNbn8R2lf
 q9e3YRscnU+Ex88Gj
X-TM-AS-User-Approved-Sender: No
X-TM-AS-User-Blocked-Sender: No
X-TMASE-Result: 10--4.180400-8.000000
X-TMASE-Version: SMEX-12.5.0.1684-8.5.1010-24828.001
X-TM-SNTS-SMTP: 04A35C171F23F701E3EBB0AEDD5DCE9A53609A95BD4432678018C9BACE0ADC7C2000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_014707_156706_DD688AAB 
X-CRM114-Status: GOOD (  14.08  )
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
Cc: stonea168@163.com, dri-devel@lists.freedesktop.org,
 Andy Yan <andy.yan@rock-chips.com>, Ajay Kumar <ajaykumar.rs@samsung.com>,
 Vincent Palatin <vpalatin@chromium.org>, cawa.cheng@mediatek.com,
 bibby.hsieh@mediatek.com, ck.hu@mediatek.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 Thierry Reding <treding@nvidia.com>, devicetree@vger.kernel.org,
 Jitao Shi <jitao.shi@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
 Inki Dae <inki.dae@samsung.com>, linux-mediatek@lists.infradead.org,
 yingjoe.chen@mediatek.com, eddie.huang@mediatek.com,
 linux-arm-kernel@lists.infradead.org, Rahul Sharma <rahul.sharma@samsung.com>,
 srv_heupstream@mediatek.com, linux-kernel@vger.kernel.org,
 Sascha Hauer <kernel@pengutronix.de>, Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch add mt8183 mipi_tx driver.
And also support other chips that use the same binding and driver.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
---
 drivers/gpu/drm/mediatek/Makefile             |   1 +
 drivers/gpu/drm/mediatek/mtk_mipi_tx.c        |   2 +
 drivers/gpu/drm/mediatek/mtk_mipi_tx.h        |   1 +
 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c | 150 ++++++++++++++++++
 4 files changed, 154 insertions(+)
 create mode 100644 drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c

diff --git a/drivers/gpu/drm/mediatek/Makefile b/drivers/gpu/drm/mediatek/Makefile
index 2c8de1f5a5ee..8067a4be8311 100644
--- a/drivers/gpu/drm/mediatek/Makefile
+++ b/drivers/gpu/drm/mediatek/Makefile
@@ -13,6 +13,7 @@ mediatek-drm-y := mtk_disp_color.o \
 		  mtk_dsi.o \
 		  mtk_mipi_tx.o \
 		  mtk_mt8173_mipi_tx.o \
+		  mtk_mt8183_mipi_tx.o \
 		  mtk_dpi.o
 
 obj-$(CONFIG_DRM_MEDIATEK) += mediatek-drm.o
diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
index 77b9a185e970..e4d34484ecc8 100644
--- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
+++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.c
@@ -175,6 +175,8 @@ static const struct of_device_id mtk_mipi_tx_match[] = {
 	  .data = &mt2701_mipitx_data },
 	{ .compatible = "mediatek,mt8173-mipi-tx",
 	  .data = &mt8173_mipitx_data },
+	{ .compatible = "mediatek,mt8183-mipi-tx",
+	  .data = &mt8183_mipitx_data },
 	{ },
 };
 
diff --git a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
index 4f905313564f..413f35d86219 100644
--- a/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
+++ b/drivers/gpu/drm/mediatek/mtk_mipi_tx.h
@@ -44,5 +44,6 @@ unsigned long mtk_mipi_tx_pll_recalc_rate(struct clk_hw *hw,
 
 extern const struct mtk_mipitx_data mt2701_mipitx_data;
 extern const struct mtk_mipitx_data mt8173_mipitx_data;
+extern const struct mtk_mipitx_data mt8183_mipitx_data;
 
 #endif
diff --git a/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
new file mode 100644
index 000000000000..db13ebdbe262
--- /dev/null
+++ b/drivers/gpu/drm/mediatek/mtk_mt8183_mipi_tx.c
@@ -0,0 +1,150 @@
+// SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright (c) 2019 MediaTek Inc.
+ * Author: jitao.shi <jitao.shi@mediatek.com>
+ */
+
+#include "mtk_mipi_tx.h"
+
+#define MIPITX_LANE_CON		0x000c
+#define RG_DSI_CPHY_T1DRV_EN		BIT(0)
+#define RG_DSI_ANA_CK_SEL		BIT(1)
+#define RG_DSI_PHY_CK_SEL		BIT(2)
+#define RG_DSI_CPHY_EN			BIT(3)
+#define RG_DSI_PHYCK_INV_EN		BIT(4)
+#define RG_DSI_PWR04_EN			BIT(5)
+#define RG_DSI_BG_LPF_EN		BIT(6)
+#define RG_DSI_BG_CORE_EN		BIT(7)
+#define RG_DSI_PAD_TIEL_SEL		BIT(8)
+
+#define MIPITX_PLL_PWR	0x0028
+#define MIPITX_PLL_CON0	0x002c
+#define MIPITX_PLL_CON1	0x0030
+#define MIPITX_PLL_CON2	0x0034
+#define MIPITX_PLL_CON3	0x0038
+#define MIPITX_PLL_CON4	0x003c
+#define RG_DSI_PLL_IBIAS		(3 << 10)
+
+#define MIPITX_D2_SW_CTL_EN	0x0144
+#define MIPITX_D0_SW_CTL_EN	0x0244
+#define MIPITX_CK_CKMODE_EN	0x0328
+#define DSI_CK_CKMODE_EN		BIT(0)
+#define MIPITX_CK_SW_CTL_EN	0x0344
+#define MIPITX_D1_SW_CTL_EN	0x0444
+#define MIPITX_D3_SW_CTL_EN	0x0544
+#define DSI_SW_CTL_EN			BIT(0)
+#define AD_DSI_PLL_SDM_PWR_ON		BIT(0)
+#define AD_DSI_PLL_SDM_ISO_EN		BIT(1)
+
+#define RG_DSI_PLL_EN			BIT(4)
+#define RG_DSI_PLL_POSDIV		(0x7 << 8)
+
+static int mtk_mipi_tx_pll_enable(struct clk_hw *hw)
+{
+	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
+	unsigned int txdiv, txdiv0;
+	u64 pcw;
+
+	dev_dbg(mipi_tx->dev, "enable: %u bps\n", mipi_tx->data_rate);
+
+	if (mipi_tx->data_rate >= 2000000000) {
+		txdiv = 1;
+		txdiv0 = 0;
+	} else if (mipi_tx->data_rate >= 1000000000) {
+		txdiv = 2;
+		txdiv0 = 1;
+	} else if (mipi_tx->data_rate >= 500000000) {
+		txdiv = 4;
+		txdiv0 = 2;
+	} else if (mipi_tx->data_rate > 250000000) {
+		txdiv = 8;
+		txdiv0 = 3;
+	} else if (mipi_tx->data_rate >= 125000000) {
+		txdiv = 16;
+		txdiv0 = 4;
+	} else {
+		return -EINVAL;
+	}
+
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON4, RG_DSI_PLL_IBIAS);
+
+	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
+	udelay(1);
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
+	pcw = div_u64(((u64)mipi_tx->data_rate * txdiv) << 24, 26000000);
+	writel(pcw, mipi_tx->regs + MIPITX_PLL_CON0);
+	mtk_mipi_tx_update_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_POSDIV,
+				txdiv0 << 8);
+	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
+
+	return 0;
+}
+
+static void mtk_mipi_tx_pll_disable(struct clk_hw *hw)
+{
+	struct mtk_mipi_tx *mipi_tx = mtk_mipi_tx_from_clk_hw(hw);
+
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_CON1, RG_DSI_PLL_EN);
+
+	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_ISO_EN);
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_PLL_PWR, AD_DSI_PLL_SDM_PWR_ON);
+}
+
+static long mtk_mipi_tx_pll_round_rate(struct clk_hw *hw, unsigned long rate,
+				       unsigned long *prate)
+{
+	return clamp_val(rate, 50000000, 1600000000);
+}
+
+static const struct clk_ops mtk_mipi_tx_pll_ops = {
+	.enable = mtk_mipi_tx_pll_enable,
+	.disable = mtk_mipi_tx_pll_disable,
+	.round_rate = mtk_mipi_tx_pll_round_rate,
+	.set_rate = mtk_mipi_tx_pll_set_rate,
+	.recalc_rate = mtk_mipi_tx_pll_recalc_rate,
+};
+
+static void mtk_mipi_tx_power_on_signal(struct phy *phy)
+{
+	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
+
+	/* BG_LPF_EN / BG_CORE_EN */
+	writel(RG_DSI_PAD_TIEL_SEL | RG_DSI_BG_CORE_EN,
+	       mipi_tx->regs + MIPITX_LANE_CON);
+	usleep_range(30, 100);
+	writel(RG_DSI_BG_CORE_EN | RG_DSI_BG_LPF_EN,
+	       mipi_tx->regs + MIPITX_LANE_CON);
+
+	/* Switch OFF each Lane */
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D0_SW_CTL_EN, DSI_SW_CTL_EN);
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D1_SW_CTL_EN, DSI_SW_CTL_EN);
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D2_SW_CTL_EN, DSI_SW_CTL_EN);
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_D3_SW_CTL_EN, DSI_SW_CTL_EN);
+	mtk_mipi_tx_clear_bits(mipi_tx, MIPITX_CK_SW_CTL_EN, DSI_SW_CTL_EN);
+
+	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_CK_CKMODE_EN, DSI_CK_CKMODE_EN);
+}
+
+static void mtk_mipi_tx_power_off_signal(struct phy *phy)
+{
+	struct mtk_mipi_tx *mipi_tx = phy_get_drvdata(phy);
+
+	/* Switch ON each Lane */
+	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D0_SW_CTL_EN, DSI_SW_CTL_EN);
+	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D1_SW_CTL_EN, DSI_SW_CTL_EN);
+	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D2_SW_CTL_EN, DSI_SW_CTL_EN);
+	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_D3_SW_CTL_EN, DSI_SW_CTL_EN);
+	mtk_mipi_tx_set_bits(mipi_tx, MIPITX_CK_SW_CTL_EN, DSI_SW_CTL_EN);
+
+	writel(RG_DSI_PAD_TIEL_SEL | RG_DSI_BG_CORE_EN,
+	       mipi_tx->regs + MIPITX_LANE_CON);
+	writel(RG_DSI_PAD_TIEL_SEL, mipi_tx->regs + MIPITX_LANE_CON);
+}
+
+const struct mtk_mipitx_data mt8183_mipitx_data = {
+	.mipi_tx_clk_ops = &mtk_mipi_tx_pll_ops,
+	.mipi_tx_enable_signal = mtk_mipi_tx_power_on_signal,
+	.mipi_tx_disable_signal = mtk_mipi_tx_power_off_signal,
+};
+
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
