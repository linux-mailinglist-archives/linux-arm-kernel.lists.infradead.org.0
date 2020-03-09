Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F9E17E47C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:17:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5xqrLlrafQaOazEnbAnm8SvOP0mbST3UKs4yaP5wGFU=; b=skMbhuBNsUypjq
	CJlYdEDcWCNUXlU0ctAT3LBjem+4Dlt5IWlRrM0FEcXb63hCBTj9FuUWSLpB474APXrDOgk9kp55x
	s0n4k2cbHoe4fyZ+BkT3Vymc+bpZWdrkEuCT+GnSoDLRAeHiQT9TxkAkeoOSqEq0DjlGfKutMRnsT
	bV0PM8I9ZFUJKkkgS0a6JeOJX7EtVRVN3ML/0UU1m25YSwvqyk1WpByDt0ckrRbJl3gvI/6+B7Hjx
	o1oyr0arveefsGfk2GQ07FYAnaqdqsSFbHdKRCyIISYyLtLsaJCpLZkGQJG6GeMo52wSLbhH9sPwA
	K3akpoCSqNKfwjPcWLxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBL65-0008Ez-19; Mon, 09 Mar 2020 16:17:41 +0000
Received: from perceval.ideasonboard.com ([213.167.242.64])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBL5s-0008E5-Jf
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:17:30 +0000
Received: from pendragon.bb.dnainternet.fi (81-175-216-236.bb.dnainternet.fi
 [81.175.216.236])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id D59DA2D2;
 Mon,  9 Mar 2020 17:17:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1583770637;
 bh=ml87TgXbfAEwecY2YM0QeCIphKoRoAmA8kLHojFY760=;
 h=From:To:Cc:Subject:Date:From;
 b=nmPfM390BLJvUmzRNb7BjZSJr2NUlRQffwKm9umL9JQa/Ub48LRnTRjw7U/mQbDkJ
 vXODXEYfzQ6tJ6+rgHzsVMmemW+HIXXfM8Z58xnvJ0pJ8EA/W7oInGe25V2ACwASOs
 sRLa9xP1FGqGPuInbW6vBQP5FcGJEa0lNt9F3WNs=
From: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To: linux-clk@vger.kernel.org
Subject: [PATCH] clk: imx7d: Add PXP clock
Date: Mon,  9 Mar 2020 18:17:09 +0200
Message-Id: <20200309161709.30982-1-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_091728_855291_6D5E1FF4 
X-CRM114-Status: UNSURE (   9.96  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PXP has a single CCGR clock gate, gating both the IPG_CLK_ROOT and
the MAIN_AXI_CLK_ROOT. Add a single clock to cover both.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
 drivers/clk/imx/clk-imx7d.c             | 1 +
 include/dt-bindings/clock/imx7d-clock.h | 3 ++-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx7d.c b/drivers/clk/imx/clk-imx7d.c
index fbea774ef687..4f1ead22781e 100644
--- a/drivers/clk/imx/clk-imx7d.c
+++ b/drivers/clk/imx/clk-imx7d.c
@@ -802,6 +802,7 @@ static void __init imx7d_clocks_init(struct device_node *ccm_node)
 	hws[IMX7D_PCIE_PHY_ROOT_CLK] = imx_clk_hw_gate4("pcie_phy_root_clk", "pcie_phy_post_div", base + 0x4600, 0);
 	hws[IMX7D_EPDC_PIXEL_ROOT_CLK] = imx_clk_hw_gate4("epdc_pixel_root_clk", "epdc_pixel_post_div", base + 0x44a0, 0);
 	hws[IMX7D_LCDIF_PIXEL_ROOT_CLK] = imx_clk_hw_gate4("lcdif_pixel_root_clk", "lcdif_pixel_post_div", base + 0x44b0, 0);
+	hws[IMX7D_PXP_CLK] = imx_clk_hw_gate4("pxp_clk", "main_axi_root_clk", base + 0x44c0, 0);
 	hws[IMX7D_MIPI_DSI_ROOT_CLK] = imx_clk_hw_gate4("mipi_dsi_root_clk", "mipi_dsi_post_div", base + 0x4650, 0);
 	hws[IMX7D_MIPI_CSI_ROOT_CLK] = imx_clk_hw_gate4("mipi_csi_root_clk", "mipi_csi_post_div", base + 0x4640, 0);
 	hws[IMX7D_MIPI_DPHY_ROOT_CLK] = imx_clk_hw_gate4("mipi_dphy_root_clk", "mipi_dphy_post_div", base + 0x4660, 0);
diff --git a/include/dt-bindings/clock/imx7d-clock.h b/include/dt-bindings/clock/imx7d-clock.h
index e6a670e1a3f8..1d4c0dfe0202 100644
--- a/include/dt-bindings/clock/imx7d-clock.h
+++ b/include/dt-bindings/clock/imx7d-clock.h
@@ -451,5 +451,6 @@
 #define IMX7D_SNVS_CLK			442
 #define IMX7D_CAAM_CLK			443
 #define IMX7D_KPP_ROOT_CLK		444
-#define IMX7D_CLK_END			445
+#define IMX7D_PXP_CLK			445
+#define IMX7D_CLK_END			446
 #endif /* __DT_BINDINGS_CLOCK_IMX7D_H */
-- 
Regards,

Laurent Pinchart


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
