Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6198916B
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 11 Aug 2019 12:41:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4e9cUwZHxNKYY+7OmM9XbKsfhTkhfSl4yXaAZs44nw=; b=AZ/WtWKeizq4n8
	P49EgUBu7PCTMpHc3Dugn8yxTKE2eUWmYEnBm3K82yl1p2PxVaq46o/9JvhvJQH2dlgRSfKxPd7iz
	SgLeJehJpALEoENBcReSbfY9GTdPhHND3prD2Efb0CCjDUpr3vHsUE1vV6knq3S5LNmIz0N6+OUp3
	tPZm1IyBmj8AM+mObfJ4v+M05yWHYmwJgK0dUGvm6LDf5lQWDuzxhlnDADFj2RXe750iGdfvpgxlE
	Zr/G2zsgrtaU/p/QkXoIrSsDcHAYTH2bZ99GseeqBFhD3lo2kK9g/1dHn+N0MJcAez0e2Zt4IC0IL
	NgnqoT8p0zz3HjqPgvqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hwlHu-0003gh-Lz; Sun, 11 Aug 2019 10:41:22 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hwlHj-0003eb-JB; Sun, 11 Aug 2019 10:41:12 +0000
X-UUID: e1dd61cf9e974ebda1daa94afa8763ed-20190811
X-UUID: e1dd61cf9e974ebda1daa94afa8763ed-20190811
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <jitao.shi@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2133353794; Sun, 11 Aug 2019 02:40:49 -0800
Received: from MTKMBS33N2.mediatek.inc (172.27.4.76) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Sun, 11 Aug 2019 03:40:47 -0700
Received: from MTKCAS32.mediatek.inc (172.27.4.184) by MTKMBS33N2.mediatek.inc
 (172.27.4.76) with Microsoft SMTP Server (TLS) id 15.0.1395.4;
 Sun, 11 Aug 2019 18:40:45 +0800
Received: from mszsdclx1018.gcn.mediatek.inc (172.27.4.253) by
 MTKCAS32.mediatek.inc (172.27.4.170) with Microsoft SMTP Server id
 15.0.1395.4 via Frontend Transport; Sun, 11 Aug 2019 18:40:43 +0800
From: Jitao Shi <jitao.shi@mediatek.com>
To: Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>, "Mark
 Rutland" <mark.rutland@arm.com>, Ian Campbell
 <ijc+devicetree@hellion.org.uk>, <linux-pwm@vger.kernel.org>, David Airlie
 <airlied@linux.ie>, "Matthias Brugger" <matthias.bgg@gmail.com>
Subject: [PATCH v6 4/7] drm/mediatek: add frame size control
Date: Sun, 11 Aug 2019 18:40:05 +0800
Message-ID: <20190811104008.53372-5-jitao.shi@mediatek.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190811104008.53372-1-jitao.shi@mediatek.com>
References: <20190811104008.53372-1-jitao.shi@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: B6EA79DEAD4B04550E18400944F7175E9B421FE15135BB24C1CF7407D1104FF92000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190811_034111_635300_CE8CCFE2 
X-CRM114-Status: UNSURE (   9.10  )
X-CRM114-Notice: Please train this message.
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

Our new DSI chip has frame size control.
So add the driver data to control for different chips.

Signed-off-by: Jitao Shi <jitao.shi@mediatek.com>
Reviewed-by: CK Hu <ck.hu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_dsi.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/gpu/drm/mediatek/mtk_dsi.c b/drivers/gpu/drm/mediatek/mtk_dsi.c
index 314bfb1c827b..68794edecf96 100644
--- a/drivers/gpu/drm/mediatek/mtk_dsi.c
+++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
@@ -70,6 +70,7 @@
 #define DSI_VBP_NL		0x24
 #define DSI_VFP_NL		0x28
 #define DSI_VACT_NL		0x2C
+#define DSI_SIZE_CON		0x38
 #define DSI_HSA_WC		0x50
 #define DSI_HBP_WC		0x54
 #define DSI_HFP_WC		0x58
@@ -154,6 +155,7 @@ struct phy;
 struct mtk_dsi_driver_data {
 	const u32 reg_cmdq_off;
 	bool has_shadow_ctl;
+	bool has_size_ctl;
 };
 
 struct mtk_dsi {
@@ -422,6 +424,10 @@ static void mtk_dsi_config_vdo_timing(struct mtk_dsi *dsi)
 	writel(vm->vfront_porch, dsi->regs + DSI_VFP_NL);
 	writel(vm->vactive, dsi->regs + DSI_VACT_NL);
 
+	if (dsi->driver_data->has_size_ctl)
+		writel(vm->vactive << 16 | vm->hactive,
+		       dsi->regs + DSI_SIZE_CON);
+
 	horizontal_sync_active_byte = (vm->hsync_len * dsi_tmp_buf_bpp - 10);
 
 	if (dsi->mode_flags & MIPI_DSI_MODE_VIDEO_SYNC_PULSE)
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
