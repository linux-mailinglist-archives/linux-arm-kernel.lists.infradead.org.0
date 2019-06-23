Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B60C24FA06
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Jun 2019 06:40:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ZUtg/ZsoboLO2iyLVR8llJoACg/3TdYM/g4I/qjljg=; b=GJl8w5sW4OxFAp
	Wuapg5yMUd8AuFICyzi1IMsI2c0GAjTvY2yCyjKosDIUTHtthbBCZueNgALlR5dzH4/e9g3cHZk9l
	p1YQ3h/SFnVU452WK9xHgmeFGU6ToiALSH9poA1dHffArN8wDQ7lfRxpfVroUBM7t2BDqZp5R5aAs
	LsQOmd2XO8ncAPUX4ATmOj3U7/1/7x5xZXF3UTGvReqQ6PFMGGV/jT81ny2uRdrCmItHI0grgjTDY
	I4ksaWsfvAnhmZTxTQTqK7JZPF0vzobKAFAs7+nL3qNkkMT+uZThSSZTlKC8LeYtilthG9X6a1k5D
	+bpNL2UgquRl6eyd4/mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heuId-0007LS-3c; Sun, 23 Jun 2019 04:40:19 +0000
Received: from balrog.mythic-beasts.com ([2a00:1098:0:82:1000:0:2:1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heuHY-0006lC-Gi
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Jun 2019 04:39:13 +0000
Received: from [199.195.250.187] (port=42999 helo=hermes.aosc.io)
 by balrog.mythic-beasts.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <icenowy@aosc.io>)
 id 1heuHU-0000Px-MF; Sun, 23 Jun 2019 05:39:08 +0100
Received: from localhost (localhost [127.0.0.1]) (Authenticated sender:
 icenowy@aosc.io)
 by hermes.aosc.io (Postfix) with ESMTPSA id 031366212D;
 Sun, 23 Jun 2019 04:39:03 +0000 (UTC)
From: Icenowy Zheng <icenowy@aosc.io>
To: Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Chen-Yu Tsai <wens@csie.org>,
 Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v3 2/9] clk: sunxi-ng: v3s: add the missing PLL_DDR1
Date: Sun, 23 Jun 2019 12:37:54 +0800
Message-Id: <20190623043801.14040-3-icenowy@aosc.io>
In-Reply-To: <20190623043801.14040-1-icenowy@aosc.io>
References: <20190623043801.14040-1-icenowy@aosc.io>
MIME-Version: 1.0
X-BlackCat-Spam-Score: 65
X-Spam-Status: No, score=6.5
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190622_213912_563813_FCDF6F32 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a00:1098:0:82:1000:0:2:1 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The user manual of V3/V3s/S3 declares a PLL_DDR1, however it's forgot
when developing the V3s CCU driver.

Add back the missing PLL_DDR1.

Fixes: d0f11d14b0bc ("clk: sunxi-ng: add support for V3s CCU")
Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
---
No changes in v3/v2.

 drivers/clk/sunxi-ng/ccu-sun8i-v3s.c | 19 +++++++++++++++----
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.h |  6 ++++--
 2 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
index cbbf06d42c2c..90a9ca5fac80 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
@@ -77,7 +77,7 @@ static SUNXI_CCU_NM_WITH_FRAC_GATE_LOCK(pll_ve_clk, "pll-ve",
 					BIT(28),	/* lock */
 					0);
 
-static SUNXI_CCU_NKM_WITH_GATE_LOCK(pll_ddr_clk, "pll-ddr",
+static SUNXI_CCU_NKM_WITH_GATE_LOCK(pll_ddr0_clk, "pll-ddr0",
 				    "osc24M", 0x020,
 				    8, 5,	/* N */
 				    4, 2,	/* K */
@@ -116,6 +116,14 @@ static SUNXI_CCU_NK_WITH_GATE_LOCK_POSTDIV(pll_periph1_clk, "pll-periph1",
 					   2,		/* post-div */
 					   0);
 
+static SUNXI_CCU_NM_WITH_GATE_LOCK(pll_ddr1_clk, "pll-ddr1",
+				   "osc24M", 0x04c,
+				   8, 7,	/* N */
+				   0, 2,	/* M */
+				   BIT(31),	/* gate */
+				   BIT(28),	/* lock */
+				   0);
+
 static const char * const cpu_parents[] = { "osc32k", "osc24M",
 					     "pll-cpu", "pll-cpu" };
 static SUNXI_CCU_MUX(cpu_clk, "cpu", cpu_parents,
@@ -303,7 +311,8 @@ static SUNXI_CCU_GATE(usb_phy0_clk,	"usb-phy0",	"osc24M",
 static SUNXI_CCU_GATE(usb_ohci0_clk,	"usb-ohci0",	"osc24M",
 		      0x0cc, BIT(16), 0);
 
-static const char * const dram_parents[] = { "pll-ddr", "pll-periph0-2x" };
+static const char * const dram_parents[] = { "pll-ddr0", "pll-ddr1",
+					     "pll-periph0-2x" };
 static SUNXI_CCU_M_WITH_MUX(dram_clk, "dram", dram_parents,
 			    0x0f4, 0, 4, 20, 2, CLK_IS_CRITICAL);
 
@@ -363,10 +372,11 @@ static struct ccu_common *sun8i_v3s_ccu_clks[] = {
 	&pll_audio_base_clk.common,
 	&pll_video_clk.common,
 	&pll_ve_clk.common,
-	&pll_ddr_clk.common,
+	&pll_ddr0_clk.common,
 	&pll_periph0_clk.common,
 	&pll_isp_clk.common,
 	&pll_periph1_clk.common,
+	&pll_ddr1_clk.common,
 	&cpu_clk.common,
 	&axi_clk.common,
 	&ahb1_clk.common,
@@ -451,11 +461,12 @@ static struct clk_hw_onecell_data sun8i_v3s_hw_clks = {
 		[CLK_PLL_AUDIO_8X]	= &pll_audio_8x_clk.hw,
 		[CLK_PLL_VIDEO]		= &pll_video_clk.common.hw,
 		[CLK_PLL_VE]		= &pll_ve_clk.common.hw,
-		[CLK_PLL_DDR]		= &pll_ddr_clk.common.hw,
+		[CLK_PLL_DDR0]		= &pll_ddr0_clk.common.hw,
 		[CLK_PLL_PERIPH0]	= &pll_periph0_clk.common.hw,
 		[CLK_PLL_PERIPH0_2X]	= &pll_periph0_2x_clk.hw,
 		[CLK_PLL_ISP]		= &pll_isp_clk.common.hw,
 		[CLK_PLL_PERIPH1]	= &pll_periph1_clk.common.hw,
+		[CLK_PLL_DDR1]		= &pll_ddr1_clk.common.hw,
 		[CLK_CPU]		= &cpu_clk.common.hw,
 		[CLK_AXI]		= &axi_clk.common.hw,
 		[CLK_AHB1]		= &ahb1_clk.common.hw,
diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
index fbc1da8b4520..10af324bd6b1 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
@@ -20,7 +20,7 @@
 #define CLK_PLL_AUDIO_8X	5
 #define CLK_PLL_VIDEO		6
 #define CLK_PLL_VE		7
-#define CLK_PLL_DDR		8
+#define CLK_PLL_DDR0		8
 #define CLK_PLL_PERIPH0		9
 #define CLK_PLL_PERIPH0_2X	10
 #define CLK_PLL_ISP		11
@@ -49,6 +49,8 @@
 
 /* And the GPU module clock is exported */
 
-#define CLK_NUMBER		(CLK_MIPI_CSI + 1)
+#define CLK_PLL_DDR1		74
+
+#define CLK_NUMBER		(CLK_PLL_DDR1 + 1)
 
 #endif /* _CCU_SUN8I_H3_H_ */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
