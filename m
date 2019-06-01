Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A43BF31AFC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 11:28:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KjrzWqYHPgN/NOOiX44XQi23G+a72YNIiBhU7AXJtNY=; b=tNw/lGUM2zQ3Rw
	HS03ZxjuM60VIwGweUeRuUEbJvywKVGDy2poxoBXjxk+2T47IMILJzZpR3VsgM8z96BFJRIpPL6yP
	PQMdKSy0IAUsESbwI3+yL6nQgm9Wj3cPn5HvtwJrPGMLXQ8/6B3XbqG+7J02l4GFEFHU4IJoqLhAn
	oyKWGUAzeox2R8ukvuZE52cd3ZP4cORvPToKlaz+4SsHZl1Qrrf5OW5MzAlbylle6Bs1TZas5e/p9
	t6o8wJn4y3vyU02kE9pcaMOCT8tDsIvM4Zns0XA+dFtMCtmRl5KfPx/aV2SIWDysFvA6wPVmWrp3r
	h5sxHi/TwDKx3GWu9ofg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hX0JA-000507-6s; Sat, 01 Jun 2019 09:28:12 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hX0IY-0004Ku-D9; Sat, 01 Jun 2019 09:27:46 +0000
X-UUID: 8fe23659a7fb4aff87ba02702573777e-20190601
X-UUID: 8fe23659a7fb4aff87ba02702573777e-20190601
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1077950294; Sat, 01 Jun 2019 01:27:31 -0800
Received: from MTKMBS33DR.mediatek.inc (172.27.6.106) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sat, 1 Jun 2019 02:26:31 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by MTKMBS33DR.mediatek.inc
 (172.27.6.106) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sat, 1 Jun 2019 17:26:29 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS36.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sat, 1 Jun 2019 17:26:27 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [v4 6/7] drm/mediatek: change the dsi phytiming calculate method
Date: Sat, 1 Jun 2019 17:26:14 +0800
Message-ID: <20190601092615.67917-7-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190601092615.67917-1-jitao.shi@mediatek.com>
References: <20190601092615.67917-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190601_022734_786997_B4AEC829 
X-CRM114-Status: GOOD (  11.85  )
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
X-Mailman-Version: 2.1.21
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
 Ryan Case <ryandcase@chromium.org>, Sascha Hauer <kernel@pengutronix.de>,
 Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Change the method of frame rate calc which can get more accurate
frame rate.

data rate = pixel_clock * bit_per_pixel / lanes
Adjust hfp_wc to adapt the additional phy_data

if MIPI_DSI_MODE_VIDEO_BURST
	hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12 - 6;
else
	hfp_wc = hfp * bpp - data_phy_cycles * lanes - 12;

Note:
//(2: 1 for sync, 1 for phy idle)
data_phy_cycles = T_hs_exit + T_lpx + T_hs_prepare + T_hs_zero + 2;

bpp: bit per pixel

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Tested-by: Ryan Case <ryandcase@chromium.org>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 122 ++++++++++++++++++++---------
 1 file changed, 83 insertions(+), 39 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index abf6ddec5db6..558727c60ba3 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -144,12 +144,6 @@
 #define DATA_0				(0xff << 16)
 #define DATA_1				(0xff << 24)
 
-#define T_LPX		5
-#define T_HS_PREP	6
-#define T_HS_TRAIL	8
-#define T_HS_EXIT	7
-#define T_HS_ZERO	10
-
 #define NS_TO_CYCLE(n, c)    ((n) / (c) + (((n) % (c)) ? 1 : 0))
 
 #define MTK_DSI_HOST_IS_READ(type) \
@@ -158,6 +152,25 @@
 	(type == MIPI_DSI_GENERIC_READ_REQUEST_2_PARAM) || \
 	(type == MIPI_DSI_DCS_READ))
 
+struct mtk_phy_timing {
+	u32 lpx;
+	u32 da_hs_prepare;
+	u32 da_hs_zero;
+	u32 da_hs_trail;
+
+	u32 ta_go;
+	u32 ta_sure;
+	u32 ta_get;
+	u32 da_hs_exit;
+
+	u32 clk_hs_zero;
+	u32 clk_hs_trail;
+
+	u32 clk_hs_prepare;
+	u32 clk_hs_post;
+	u32 clk_hs_exit;
+};
+
 struct phy;
 
 struct mtk_dsi_driver_data {
@@ -182,12 +195,13 @@ struct mtk_dsi {
 	struct clk *digital_clk;
 	struct clk *hs_clk;
 
-	u32 data_rate;
+	u64 data_rate;
 
 	unsigned long mode_flags;
 	enum mipi_dsi_pixel_format format;
 	unsigned int lanes;
 	struct videomode vm;
+	struct mtk_phy_timing phy_timing;
 	int refcount;
 	bool enabled;
 	u32 irq_data;
@@ -221,17 +235,36 @@ static void mtk_dsi_phy_timconfig(struct mtk_dsi *dsi)
 {
 	u32 timcon0, timcon1, timcon2, timcon3;
 	u32 ui, cycle_time;
+	struct mtk_phy_timing *timing = &dsi->phy_timing;
+
+	ui = 1000000000 / dsi->data_rate;
+	cycle_time = 8000000000 / dsi->data_rate;
+
+	timing->lpx = NS_TO_CYCLE(60, cycle_time);
+	timing->da_hs_prepare = NS_TO_CYCLE(40 + 5 * ui, cycle_time);
+	timing->da_hs_zero = NS_TO_CYCLE(110 + 6 * ui, cycle_time);
+	timing->da_hs_trail = NS_TO_CYCLE(80 + 4 * ui, cycle_time);
 
-	ui = 1000 / dsi->data_rate + 0x01;
-	cycle_time = 8000 / dsi->data_rate + 0x01;
+	timing->ta_go = 4 * timing->lpx;
+	timing->ta_sure = 3 * timing->lpx / 2;
+	timing->ta_get = 5 * timing->lpx;
+	timing->da_hs_exit = 2 * timing->lpx;
 
-	timcon0 = T_LPX | T_HS_PREP << 8 | T_HS_ZERO << 16 | T_HS_TRAIL << 24;
-	timcon1 = 4 * T_LPX | (3 * T_LPX / 2) << 8 | 5 * T_LPX << 16 |
-		  T_HS_EXIT << 24;
-	timcon2 = ((NS_TO_CYCLE(0x64, cycle_time) + 0xa) << 24) |
-		  (NS_TO_CYCLE(0x150, cycle_time) << 16);
-	timcon3 = NS_TO_CYCLE(0x40, cycle_time) | (2 * T_LPX) << 16 |
-		  NS_TO_CYCLE(80 + 52 * ui, cycle_time) << 8;
+	timing->clk_hs_zero = NS_TO_CYCLE(336, cycle_time);
+	timing->clk_hs_trail = NS_TO_CYCLE(100, cycle_time) + 10;
+
+	timing->clk_hs_prepare = NS_TO_CYCLE(64, cycle_time);
+	timing->clk_hs_post = NS_TO_CYCLE(80 + 52 * ui, cycle_time);
+	timing->clk_hs_exit = 2 * timing->lpx;
+
+	timcon0 = timing->lpx | timing->da_hs_prepare << 8 |
+		  timing->da_hs_zero << 16 | timing->da_hs_trail << 24;
+	timcon1 = timing->ta_go | timing->ta_sure << 8 |
+		  timing->ta_get << 16 | timing->da_hs_exit << 24;
+	timcon2 = 1 << 8 | timing->clk_hs_zero << 16 |
+		  timing->clk_hs_trail << 24;
+	timcon3 = timing->clk_hs_prepare | timing->clk_hs_post << 8 |
+		  timing->clk_hs_exit << 16;
 
 	writel(timcon0, dsi->regs + DSI_PHY_TIMECON0);
 	writel(timcon1, dsi->regs + DSI_PHY_TIMECON1);
@@ -418,7 +451,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
 	u32 horizontal_sync_active_byte;
 	u32 horizontal_backporch_byte;
 	u32 horizontal_frontporch_byte;
-	u32 dsi_tmp_buf_bpp;
+	u32 dsi_tmp_buf_bpp, data_phy_cycles;
+	struct mtk_phy_timing *timing = &dsi->phy_timing;
 
 	struct videomode *vm = &dsi->vm;
 
@@ -433,7 +467,8 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
 	writel(vm->vactive, dsi->regs + DSI_VACT_NL);
 
 	if (dsi->driver_data->has_size_ctl)
-		writel(vm->vactive << 16 | vm->hactive, dsi->regs + DSI_SIZE_CON);
+		writel(vm->vactive << 16 | vm->hactive,
+		       dsi->regs + DSI_SIZE_CON);
 
 	horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);
 
@@ -444,7 +479,34 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
 		horizontal_backporch_byte = ((vm->hback_porch + vm->hsync_len) *
 			dsi_tmp_buf_bpp - 10);
 
-	horizontal_frontporch_byte = (vm->hfront_porch * dsi_tmp_buf_bpp - 12);
+	data_phy_cycles = timing->lpx + timing->da_hs_prepare +
+				  timing->da_hs_zero + timing->da_hs_exit + 2;
+
+	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_BURST) {
+		if (vm->hfront_porch * dsi_tmp_buf_bpp >
+		    data_phy_cycles * dsi->lanes + 18) {
+			horizontal_frontporch_byte = vm->hfront_porch *
+						     dsi_tmp_buf_bpp -
+						     data_phy_cycles *
+						     dsi->lanes - 18;
+		} else {
+			DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
+			horizontal_frontporch_byte = vm->hfront_porch *
+						     dsi_tmp_buf_bpp;
+		}
+	} else {
+		if (vm->hfront_porch * dsi_tmp_buf_bpp >
+		    data_phy_cycles * dsi->lanes + 12) {
+			horizontal_frontporch_byte = vm->hfront_porch *
+						     dsi_tmp_buf_bpp -
+						     data_phy_cycles *
+						     dsi->lanes - 12;
+		} else {
+			DRM_WARN("HFP less than d-phy, FPS will under 60Hz\n");
+			horizontal_frontporch_byte = vm->hfront_porch *
+						     dsi_tmp_buf_bpp;
+		}
+	}
 
 	writel(horizontal_sync_active_byte, dsi->regs + DSI_HSA_WC);
 	writel(horizontal_backporch_byte, dsi->regs + DSI_HBP_WC);
@@ -544,8 +606,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 {
 	struct device *dev = dsi->dev;
 	int ret;
-	u64 pixel_clock, total_bits;
-	u32 htotal, htotal_bits, bit_per_pixel, overhead_cycles, overhead_bits;
+	u32 bit_per_pixel;
 
 	if (++dsi->refcount != 1)
 		return 0;
@@ -564,24 +625,7 @@ static int mtk_dsi_poweron(struct mtk_dsi *dsi)
 		break;
 	}
 
-	/**
-	 * htotal_time = htotal * byte_per_pixel / num_lanes
-	 * overhead_time = lpx + hs_prepare + hs_zero + hs_trail + hs_exit
-	 * mipi_ratio = (htotal_time + overhead_time) / htotal_time
-	 * data_rate = pixel_clock * bit_per_pixel * mipi_ratio / num_lanes;
-	 */
-	pixel_clock = dsi->vm.pixelclock;
-	htotal = dsi->vm.hactive + dsi->vm.hback_porch + dsi->vm.hfront_porch +
-			dsi->vm.hsync_len;
-	htotal_bits = htotal * bit_per_pixel;
-
-	overhead_cycles = T_LPX + T_HS_PREP + T_HS_ZERO + T_HS_TRAIL +
-			T_HS_EXIT;
-	overhead_bits = overhead_cycles * dsi->lanes * 8;
-	total_bits = htotal_bits + overhead_bits;
-
-	dsi->data_rate = DIV_ROUND_UP_ULL(pixel_clock * total_bits,
-					  htotal * dsi->lanes);
+	dsi->data_rate = dsi->vm.pixelclock * bit_per_pixel / dsi->lanes;
 
 	ret = clk_set_rate(dsi->hs_clk, dsi->data_rate);
 	if (ret < 0) {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
