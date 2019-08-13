Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23F468BF48
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 19:07:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OdG28KDTEraLUMmLjEHacT6frWQysuIVJ4fVwbHpacc=; b=UPFQOcFTRS9FevC95eVEQsK6r1
	0GPVxODYqsntv0cC6Mnnvy7TSgIckqvoigd0fQOwE2bKOxjsE8GVVJD/fBFHj64HqHM5vcsOxt/81
	v7x+cWNEoUjG7jTP369TQiNzj9tND7NbsIhWEVPJIEzJe955CLGQhK5qpWv3tyKDwf1R5lj6tQt8E
	1f70MbA8LmRkcSw9hNxqZsplo1MufeYdX96mmSvJ3r9+EeOTfl1x5oQG7tiPY1Oi1plWbRUNbbmS/
	xFnXyMU3mh/+TnPbyVf8gAERiLU6h2TjLapRkoYn2aefZNnbgpfvEtJdNy/c/lwgaDAk+q8bZewXG
	G21iD7+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxaGG-0004xt-Mc; Tue, 13 Aug 2019 17:07:04 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxaEs-0003wK-Ll
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 17:05:41 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 7C4452000AD;
 Tue, 13 Aug 2019 19:05:37 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id 69CAA2000A4;
 Tue, 13 Aug 2019 19:05:37 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id DCDC92060E;
 Tue, 13 Aug 2019 19:05:36 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Jacky Bai <ping.bai@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Stephen Boyd <sboyd@kernel.org>, Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 4/4] clk: imx8mn: Add GIC clock
Date: Tue, 13 Aug 2019 20:05:31 +0300
Message-Id: <aac1c184fd39a96239618ec9bdcc95c5520abb8d.1565715590.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1565715590.git.leonard.crestez@nxp.com>
References: <cover.1565715590.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_100538_991538_502AA95E 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>, Anson Huang <Anson.Huang@nxp.com>,
 Michael Turquette <mturquette@baylibre.com>, linux-imx@nxp.com,
 kernel@pengutronix.de, Fabio Estevam <fabio.estevam@nxp.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This is enabled by default but if it's not explicitly defined and marked
as critical then its parent might get turned off.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/clk/imx/clk-imx8mn.c             | 5 +++++
 include/dt-bindings/clock/imx8mn-clock.h | 3 ++-
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-imx8mn.c b/drivers/clk/imx/clk-imx8mn.c
index 106cc417c19b..3a71bb37c656 100644
--- a/drivers/clk/imx/clk-imx8mn.c
+++ b/drivers/clk/imx/clk-imx8mn.c
@@ -269,10 +269,14 @@ static const char * const imx8mn_usb_core_sels[] = {"osc_24m", "sys_pll1_100m",
 
 static const char * const imx8mn_usb_phy_sels[] = {"osc_24m", "sys_pll1_100m", "sys_pll1_40m",
 						   "sys_pll2_100m", "sys_pll2_200m", "clk_ext2",
 						   "clk_ext3", "audio_pll2_out", };
 
+static const char * const imx8mn_gic_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1_40m",
+					"sys_pll2_100m", "sys_pll1_800m", "clk_ext2",
+					"clk_ext4", "audio_pll2_out" };
+
 static const char * const imx8mn_ecspi1_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1_40m",
 						  "sys_pll1_160m", "sys_pll1_800m", "sys_pll3_out",
 						  "sys_pll2_250m", "audio_pll2_out", };
 
 static const char * const imx8mn_ecspi2_sels[] = {"osc_24m", "sys_pll2_200m", "sys_pll1_40m",
@@ -522,10 +526,11 @@ static int imx8mn_clocks_probe(struct platform_device *pdev)
 	clks[IMX8MN_CLK_UART2] = imx8m_clk_composite("uart2", imx8mn_uart2_sels, base + 0xaf80);
 	clks[IMX8MN_CLK_UART3] = imx8m_clk_composite("uart3", imx8mn_uart3_sels, base + 0xb000);
 	clks[IMX8MN_CLK_UART4] = imx8m_clk_composite("uart4", imx8mn_uart4_sels, base + 0xb080);
 	clks[IMX8MN_CLK_USB_CORE_REF] = imx8m_clk_composite("usb_core_ref", imx8mn_usb_core_sels, base + 0xb100);
 	clks[IMX8MN_CLK_USB_PHY_REF] = imx8m_clk_composite("usb_phy_ref", imx8mn_usb_phy_sels, base + 0xb180);
+	clks[IMX8MN_CLK_GIC] = imx8m_clk_composite_critical("gic", imx8mn_gic_sels, base + 0xb200);
 	clks[IMX8MN_CLK_ECSPI1] = imx8m_clk_composite("ecspi1", imx8mn_ecspi1_sels, base + 0xb280);
 	clks[IMX8MN_CLK_ECSPI2] = imx8m_clk_composite("ecspi2", imx8mn_ecspi2_sels, base + 0xb300);
 	clks[IMX8MN_CLK_PWM1] = imx8m_clk_composite("pwm1", imx8mn_pwm1_sels, base + 0xb380);
 	clks[IMX8MN_CLK_PWM2] = imx8m_clk_composite("pwm2", imx8mn_pwm2_sels, base + 0xb400);
 	clks[IMX8MN_CLK_PWM3] = imx8m_clk_composite("pwm3", imx8mn_pwm3_sels, base + 0xb480);
diff --git a/include/dt-bindings/clock/imx8mn-clock.h b/include/dt-bindings/clock/imx8mn-clock.h
index 5255b1c2420e..d7b201652f4c 100644
--- a/include/dt-bindings/clock/imx8mn-clock.h
+++ b/include/dt-bindings/clock/imx8mn-clock.h
@@ -207,9 +207,10 @@
 #define IMX8MN_CLK_SDMA3_ROOT			189
 #define IMX8MN_CLK_TMU_ROOT			190
 #define IMX8MN_CLK_ARM				191
 #define IMX8MN_CLK_NAND_USDHC_BUS_RAWNAND_CLK	192
 #define IMX8MN_CLK_GPU_CORE_ROOT		193
+#define IMX8MN_CLK_GIC				194
 
-#define IMX8MN_CLK_END				194
+#define IMX8MN_CLK_END				195
 
 #endif
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
