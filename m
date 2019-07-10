Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004F5645C0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 13:28:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=QjxhQ3hQ5y6Et7HGXTnzCMtEYqr2QUAqxDTX25J5RAQ=; b=m48
	0R//9L8Ce1Fa8YyVbX9EhbFmtOfcK2f+aiwHtI8q7o2PqV49Xi0Lowg2r4B2ou28MNCMCLYcSCLeR
	fbSQgdlTCnkcqUVo9MxEELJ95BKfpbiPU0D5Ud+CUwKygUbXrS9GGkOupc9KYCzBRDsvryeotswhg
	GC5VuOQkKCi/TeGtTptV5lUrsIy+Qrfv1m6TNlgyS/UGaZzHUgcZLdocCaJL0QklcZoHubDVfdUbT
	RAN/67SWUxebjJf6To5zijbgHSPQnVTWe/50SONtpjdfLcyKI+1pX6jOmuBKFgSgFYmW0Rd3Eu/ti
	NvbaOdADn+BNR8M/21xtoqYmilw0jKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlAmL-0000nu-Qo; Wed, 10 Jul 2019 11:28:53 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlAmB-0000nB-Vv
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 11:28:45 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5177F1A076E;
 Wed, 10 Jul 2019 13:28:40 +0200 (CEST)
Received: from invc005.ap-rdc01.nxp.com (invc005.ap-rdc01.nxp.com
 [165.114.16.14])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 5955A1A0176;
 Wed, 10 Jul 2019 13:28:29 +0200 (CEST)
Received: from titan.ap.freescale.net (TITAN.ap.freescale.net [10.192.208.233])
 by invc005.ap-rdc01.nxp.com (Postfix) with ESMTP id BAE2E402C9;
 Wed, 10 Jul 2019 19:28:16 +0800 (SGT)
From: jun.li@nxp.com
To: shawnguo@kernel.org,
	sboyd@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH 1/2] clk: imx8mq: set correct parent for usb ctrl clocks
Date: Wed, 10 Jul 2019 19:19:16 +0800
Message-Id: <20190710111917.6615-1-jun.li@nxp.com>
X-Mailer: git-send-email 2.9.5
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_042844_168157_0D2B9747 
X-CRM114-Status: UNSURE (   6.80  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, peter.chen@nxp.com, agx@sigxcpu.org, ping.bai@nxp.com,
 Anson.Huang@nxp.com, ccaione@baylibre.com, andrew.smirnov@gmail.com,
 mturquette@baylibre.com, angus@akkea.ca, linux-clk@vger.kernel.org,
 abel.vesa@nxp.com, devicetree@vger.kernel.org, linux-imx@nxp.com,
 kernel@pengutronix.de, l.stach@pengutronix.de, festevam@gmail.com,
 s.hauer@pengutronix.de, linux-arm-kernel@lists.infradead.org, jun.li@nxp.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Li Jun <jun.li@nxp.com>

Per latest imx8mq datasheet of CCM, the parent of usb1_ctrl_root_clk
and usb2_ctrl_root_clk is usb_bus.

Signed-off-by: Li Jun <jun.li@nxp.com>
---
 drivers/clk/imx/clk-imx8mq.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/imx/clk-imx8mq.c b/drivers/clk/imx/clk-imx8mq.c
index d407a07..c7d1546 100644
--- a/drivers/clk/imx/clk-imx8mq.c
+++ b/drivers/clk/imx/clk-imx8mq.c
@@ -523,8 +523,8 @@ static int imx8mq_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MQ_CLK_UART2_ROOT] = imx_clk_gate4("uart2_root_clk", "uart2", base + 0x44a0, 0);
 	clks[IMX8MQ_CLK_UART3_ROOT] = imx_clk_gate4("uart3_root_clk", "uart3", base + 0x44b0, 0);
 	clks[IMX8MQ_CLK_UART4_ROOT] = imx_clk_gate4("uart4_root_clk", "uart4", base + 0x44c0, 0);
-	clks[IMX8MQ_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_core_ref", base + 0x44d0, 0);
-	clks[IMX8MQ_CLK_USB2_CTRL_ROOT] = imx_clk_gate4("usb2_ctrl_root_clk", "usb_core_ref", base + 0x44e0, 0);
+	clks[IMX8MQ_CLK_USB1_CTRL_ROOT] = imx_clk_gate4("usb1_ctrl_root_clk", "usb_bus", base + 0x44d0, 0);
+	clks[IMX8MQ_CLK_USB2_CTRL_ROOT] = imx_clk_gate4("usb2_ctrl_root_clk", "usb_bus", base + 0x44e0, 0);
 	clks[IMX8MQ_CLK_USB1_PHY_ROOT] = imx_clk_gate4("usb1_phy_root_clk", "usb_phy_ref", base + 0x44f0, 0);
 	clks[IMX8MQ_CLK_USB2_PHY_ROOT] = imx_clk_gate4("usb2_phy_root_clk", "usb_phy_ref", base + 0x4500, 0);
 	clks[IMX8MQ_CLK_USDHC1_ROOT] = imx_clk_gate4("usdhc1_root_clk", "usdhc1", base + 0x4510, 0);
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
