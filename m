Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AD213EDE3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 19:06:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c1waYsMdt+yazjSxeMBZvOjZS3PUap2Q/R1mCAvHlqQ=; b=f+DOw5CfqNpc60
	q7jwfgF7lTBEwWXaJBDz//DGJ0G6DvFdvKEVTuq394R5vp6Q9+KfvOhcxgmgMjg+W9E8y6PE6GMKB
	qxwLQPIi+xwp7oUcuKBXEQp6MEyvPEVarrbM2Ppd7Xo1rLCJoTi/NOvG3GLVaWSWxbEOfa9bJnGCZ
	vvDR9/aOhovHJbxCWpwVw73zVW81wuJHgL+QtVzuHZhhVY/mYw4hKV3xw6VHsUjjgWzFbvJ0hnnhl
	MNOy7drc0ZkNlfr6S20+D2oKsadhHXqATWA78S7cSY1U8D280yzB5lFi4m7VUilLK3r1Qz2S+7QNc
	lSyEUqEBkF5CMszU+gpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is9Wm-0003oQ-5y; Thu, 16 Jan 2020 18:05:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8wQ-0005iU-5j
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 17:28:28 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DA5BD246D7;
 Thu, 16 Jan 2020 17:28:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579195701;
 bh=LCKPWLkODzpw6QsnzkhbK96CpxHMm83SsS2SL8upF8o=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Uvp4ItRAo63zSYt1Oq3TXeE0aiCiIMHpLUa58EQLE7hWyRW0JaI3SaEurCtHbE20A
 539la9SbATaYQUew0fgGlBI0xekgg74cAEiDfw5C+zDam9RxJy/v2R9S3TJ0mpwr43
 IwkCQVZhL5zBbDvlUaMlmo+/T6jWr/x5ftCBSDyg=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.14 249/371] clk: sunxi-ng: v3s: add the missing
 PLL_DDR1
Date: Thu, 16 Jan 2020 12:22:01 -0500
Message-Id: <20200116172403.18149-192-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116172403.18149-1-sashal@kernel.org>
References: <20200116172403.18149-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_092822_314449_F72852F5 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Maxime Ripard <maxime.ripard@bootlin.com>, Sasha Levin <sashal@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Icenowy Zheng <icenowy@aosc.io>

[ Upstream commit c5ed9475c22c89d5409402055142372e35d26a3f ]

The user manual of V3/V3s/S3 declares a PLL_DDR1, however it's forgot
when developing the V3s CCU driver.

Add back the missing PLL_DDR1.

Fixes: d0f11d14b0bc ("clk: sunxi-ng: add support for V3s CCU")
Signed-off-by: Icenowy Zheng <icenowy@aosc.io>
Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.c | 19 +++++++++++++++----
 drivers/clk/sunxi-ng/ccu-sun8i-v3s.h |  6 ++++--
 2 files changed, 19 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
index 9e3f4088724b..c7f9d974b10d 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.c
@@ -84,7 +84,7 @@ static SUNXI_CCU_NM_WITH_FRAC_GATE_LOCK(pll_ve_clk, "pll-ve",
 					BIT(28),	/* lock */
 					0);
 
-static SUNXI_CCU_NKM_WITH_GATE_LOCK(pll_ddr_clk, "pll-ddr",
+static SUNXI_CCU_NKM_WITH_GATE_LOCK(pll_ddr0_clk, "pll-ddr0",
 				    "osc24M", 0x020,
 				    8, 5,	/* N */
 				    4, 2,	/* K */
@@ -123,6 +123,14 @@ static SUNXI_CCU_NK_WITH_GATE_LOCK_POSTDIV(pll_periph1_clk, "pll-periph1",
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
@@ -310,7 +318,8 @@ static SUNXI_CCU_GATE(usb_phy0_clk,	"usb-phy0",	"osc24M",
 static SUNXI_CCU_GATE(usb_ohci0_clk,	"usb-ohci0",	"osc24M",
 		      0x0cc, BIT(16), 0);
 
-static const char * const dram_parents[] = { "pll-ddr", "pll-periph0-2x" };
+static const char * const dram_parents[] = { "pll-ddr0", "pll-ddr1",
+					     "pll-periph0-2x" };
 static SUNXI_CCU_M_WITH_MUX(dram_clk, "dram", dram_parents,
 			    0x0f4, 0, 4, 20, 2, CLK_IS_CRITICAL);
 
@@ -369,10 +378,11 @@ static struct ccu_common *sun8i_v3s_ccu_clks[] = {
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
@@ -457,11 +467,12 @@ static struct clk_hw_onecell_data sun8i_v3s_hw_clks = {
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
index 4a4d36fdad96..a091b7217dfd 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-v3s.h
@@ -29,7 +29,7 @@
 #define CLK_PLL_AUDIO_8X	5
 #define CLK_PLL_VIDEO		6
 #define CLK_PLL_VE		7
-#define CLK_PLL_DDR		8
+#define CLK_PLL_DDR0		8
 #define CLK_PLL_PERIPH0		9
 #define CLK_PLL_PERIPH0_2X	10
 #define CLK_PLL_ISP		11
@@ -58,6 +58,8 @@
 
 /* And the GPU module clock is exported */
 
-#define CLK_NUMBER		(CLK_MIPI_CSI + 1)
+#define CLK_PLL_DDR1		74
+
+#define CLK_NUMBER		(CLK_PLL_DDR1 + 1)
 
 #endif /* _CCU_SUN8I_H3_H_ */
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
