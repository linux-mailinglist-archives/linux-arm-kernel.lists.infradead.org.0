Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6EAFA1E4E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 17:05:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1kY28OZwK42mj0a/cTYQmYm1OONHzkE9CMHXcSgGzP4=; b=T1zhOnRgla1ft0
	YhMaM4gJY6Xr9Cm9msIMNAirOzstR0o/KJdDFKT2qiijSa2krRQE1WnNz4aHoA11J/3tEUrjjvk5D
	vvISnZJhOIeEmQZs2+/U4gRUIdel53uQdLcWdVTCCRf0qDDVd1gFn3qfFE79v9QVTe5ciTFjK2PLO
	R3tJSBEJt90P8LNTmdd5jUiZwTauKuROE1o7WdbqlGLyyb1zsDnlB6CpgaFvv9ken3GpHnaHqSwWY
	FCCuisAq7tjqoRPMV1ss+4C0ofH5yWAXyv0htxEoEjP0kLb/FVwMHuy8ySHWNQlg0Yaad58IxiBYs
	QA+k0OPXtTOSQHVzbTNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3LzC-00054u-Qp; Thu, 29 Aug 2019 15:05:19 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3Llk-0005jf-RB; Thu, 29 Aug 2019 14:51:27 +0000
X-UUID: 6c519debf6884ef8aca61c6a6ff0cc1f-20190829
X-UUID: 6c519debf6884ef8aca61c6a6ff0cc1f-20190829
Received: from mtkcas67.mediatek.inc [(172.29.193.45)] by mailgw02.mediatek.com
 (envelope-from <yongqiang.niu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1374315622; Thu, 29 Aug 2019 06:51:22 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 07:51:21 -0700
Received: from mtkcas09.mediatek.inc (172.21.101.178) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1395.4; Thu, 29 Aug 2019 22:51:19 +0800
Received: from localhost.localdomain (10.17.3.153) by mtkcas09.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1395.4 via Frontend
 Transport; Thu, 29 Aug 2019 22:51:18 +0800
From: <yongqiang.niu@mediatek.com>
To: CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>, "Rob
 Herring" <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v5,
 13/32] drm/mediatek: move rdma sout from mtk_ddp_mout_en into
 mtk_ddp_sout_sel
Date: Thu, 29 Aug 2019 22:50:35 +0800
Message-ID: <1567090254-15566-14-git-send-email-yongqiang.niu@mediatek.com>
X-Mailer: git-send-email 1.8.1.1.dirty
In-Reply-To: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
References: <1567090254-15566-1-git-send-email-yongqiang.niu@mediatek.com>
MIME-Version: 1.0
X-TM-SNTS-SMTP: 8685CBC91623791CA880951030E7EF30EF2DC3921F492CB0F48AFD8F690C4C742000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_075125_061604_48DCA624 
X-CRM114-Status: UNSURE (   9.52  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.8 UPPERCASE_50_75        message body is 50-75% uppercase
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yongqiang Niu <yongqiang.niu@mediatek.com>, David Airlie <airlied@linux.ie>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-mediatek@lists.infradead.org, Daniel Vetter <daniel@ffwll.ch>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yongqiang Niu <yongqiang.niu@mediatek.com>

This patch move rdma sout from mtk_ddp_mout_en into mtk_ddp_sout_sel
rdma only has single output, but no multi output,
all these rdma->dsi/dpi usecase should move to mtk_ddp_sout_sel

Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
---
 drivers/gpu/drm/mediatek/mtk_drm_ddp.c | 90 +++++++++++++++++-----------------
 1 file changed, 45 insertions(+), 45 deletions(-)

diff --git a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
index 338cc2f..a5a6689 100644
--- a/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
+++ b/drivers/gpu/drm/mediatek/mtk_drm_ddp.c
@@ -299,51 +299,6 @@ static unsigned int mtk_ddp_mout_en(const struct mtk_mmsys_reg_data *data,
 	} else if (cur == DDP_COMPONENT_OD1 && next == DDP_COMPONENT_RDMA1) {
 		*addr = DISP_REG_CONFIG_DISP_OD_MOUT_EN;
 		value = OD1_MOUT_EN_RDMA1;
-	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI0) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
-		value = RDMA0_SOUT_DPI0;
-	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI1) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
-		value = RDMA0_SOUT_DPI1;
-	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI1) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
-		value = RDMA0_SOUT_DSI1;
-	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI2) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
-		value = RDMA0_SOUT_DSI2;
-	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI3) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
-		value = RDMA0_SOUT_DSI3;
-	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
-		value = RDMA1_SOUT_DSI1;
-	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI2) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
-		value = RDMA1_SOUT_DSI2;
-	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI3) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
-		value = RDMA1_SOUT_DSI3;
-	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
-		*addr = data->rdma1_sout_sel_in;
-		value = data->rdma1_sout_dpi0;
-	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
-		value = RDMA1_SOUT_DPI1;
-	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI0) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
-		value = RDMA2_SOUT_DPI0;
-	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI1) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
-		value = RDMA2_SOUT_DPI1;
-	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI1) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
-		value = RDMA2_SOUT_DSI1;
-	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI2) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
-		value = RDMA2_SOUT_DSI2;
-	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI3) {
-		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
-		value = RDMA2_SOUT_DSI3;
 	} else {
 		value = 0;
 	}
@@ -423,6 +378,51 @@ static unsigned int mtk_ddp_sout_sel(const struct mtk_mmsys_reg_data *data,
 	} else if (cur == DDP_COMPONENT_BLS && next == DDP_COMPONENT_DPI0) {
 		*addr = DISP_REG_CONFIG_OUT_SEL;
 		value = BLS_TO_DPI_RDMA1_TO_DSI;
+	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI0) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
+		value = RDMA0_SOUT_DPI0;
+	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DPI1) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
+		value = RDMA0_SOUT_DPI1;
+	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI1) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
+		value = RDMA0_SOUT_DSI1;
+	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI2) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
+		value = RDMA0_SOUT_DSI2;
+	} else if (cur == DDP_COMPONENT_RDMA0 && next == DDP_COMPONENT_DSI3) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA0_SOUT_EN;
+		value = RDMA0_SOUT_DSI3;
+	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI1) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
+		value = RDMA1_SOUT_DSI1;
+	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI2) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
+		value = RDMA1_SOUT_DSI2;
+	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DSI3) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
+		value = RDMA1_SOUT_DSI3;
+	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI0) {
+		*addr = data->rdma1_sout_sel_in;
+		value = data->rdma1_sout_dpi0;
+	} else if (cur == DDP_COMPONENT_RDMA1 && next == DDP_COMPONENT_DPI1) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA1_SOUT_EN;
+		value = RDMA1_SOUT_DPI1;
+	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI0) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
+		value = RDMA2_SOUT_DPI0;
+	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DPI1) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
+		value = RDMA2_SOUT_DPI1;
+	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI1) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
+		value = RDMA2_SOUT_DSI1;
+	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI2) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
+		value = RDMA2_SOUT_DSI2;
+	} else if (cur == DDP_COMPONENT_RDMA2 && next == DDP_COMPONENT_DSI3) {
+		*addr = DISP_REG_CONFIG_DISP_RDMA2_SOUT;
+		value = RDMA2_SOUT_DSI3;
 	} else {
 		value = 0;
 	}
-- 
1.8.1.1.dirty


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
