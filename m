Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 09EBF12C034
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 29 Dec 2019 04:00:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2q14BZIwaSMgvsy4CI3qQ5282XnZppWRef6vALuVJ6U=; b=nqq1FWwrbUbl4M
	KyRP34TcdagFgv6D9vYSdziPXn/C9C3I/K6ygJTX2Mwhzfl8KG+7dBf4Ofi+k+7eswQLQmGPR8kYb
	7r5OTb9bn3b7f3l5cP/T+J/FZpcFVFUjgwi/DYSpgWdQa9h4G+VS4WUpEiMv4qWTsZ8izXBBA1ed7
	BnUYKZAA2sc5w7HdmJStOtIEWOiijZRvnEbBCund1aMIiJQsx0hsMLrI9geKlzeM5IKXVhHSmhki4
	jqqzyjMotj2qurstpbG0JfuSFgWQDAIEoH0AUgkrzrQpC9AbzAz/hDzsz/6jCKaXuBuHluUkxIDlZ
	yfLUV9sr+bREf8Dhcv+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ilOoW-0003vf-Tr; Sun, 29 Dec 2019 03:00:21 +0000
Received: from wout1-smtp.messagingengine.com ([64.147.123.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ilOnm-0003VK-1Y
 for linux-arm-kernel@lists.infradead.org; Sun, 29 Dec 2019 02:59:35 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 8AD8B53A;
 Sat, 28 Dec 2019 21:59:25 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sat, 28 Dec 2019 21:59:26 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm1; bh=HKgRKkpYDwYCc
 0C8LMU1d+PYGgyIFfDsSkTAmXEnnec=; b=cPVQUCSx2CGEVlOBuwU3gxSxkh0dB
 r/XL3nNXYBu/1hvp2HqAO3dJ3aMwg4KKNxpeDliAK4WZ1xOVzAu9wKEpSYk2F4Jd
 7rz5lCQ2ea3sbinnSbX8xFCajXVPWkR98NVjiftEOI5pF8jh8e6NC5JnxjGu0o1/
 aWobUtPXeLZRmZcCCv109sOjPj3UoufZwc3ug2cOWsG0TZBm6QzME+Nt+8/ne3+r
 iDLcztfsIREbyYU9WQN3vMjs+TFcFtwa3M7Vsc8PsMmU0A6OQlH+V82SJgzCJNi2
 Abk85YiNPxVe8LURlBc4wQl5ONPFvsjpHq1GBpBfVbzbZL1Ji1eb+hyBA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; bh=HKgRKkpYDwYCc0C8LMU1d+PYGgyIFfDsSkTAmXEnnec=; b=lvthTO2U
 yulNJ6YcTCTmRvuZf6pCCd8f8+WvPxIC5XVmK74Qn+tOd91dyqKh4FvYthQd6+GD
 IKZ2MlhW4cMCUsquj+ftUmZnEULis+ryHPgIkfLP+/vZ6bOzCErHbo7h/9GfY/k1
 YrjzcBnC2ZOVMpYv7b22eMxQvSZe2/Y8UGWtKvFiNk7Yqw92VycO/wXBqLRBLOte
 sLy/gDHr7tpILYY90igPxzF/wnXhUNo8I33ViyHtqutRIjnic/AB9Fj/SIytkJYD
 aL8ohUfx2gFHBeC4P5ISh9zWOnjZG/seSfpWf7BNCW6foWbFITst4NK0UwYcInW0
 A+T/MN8wwCZd2Q==
X-ME-Sender: <xms:jBYIXmA6Wbus9U-0DXDwdl5fcwJP39DrdArxKO6org_ULjjeOqhv1g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrvdefuddgheduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpefurghmuhgv
 lhcujfholhhlrghnugcuoehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhgqeenucfkph
 epjedtrddufeehrddugeekrdduhedunecurfgrrhgrmhepmhgrihhlfhhrohhmpehsrghm
 uhgvlhesshhhohhllhgrnhgurdhorhhgnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:jBYIXkwQFaGsUQl6Hpz7nUVlOed-QPSmLFRc3izbBLw2p155S-jjsw>
 <xmx:jBYIXkklVzL3Jp5gJzs9ZLChc1bApY2GEwkOeDhZfgUqpcqnKk0OCQ>
 <xmx:jBYIXpF_5XbV5e5VvLRmTxo0hYSukcpQgcLXli6Vv_2qorvIyLa7Wg>
 <xmx:jRYIXuJpLDT0NP6GCSkvezb-rr4E2QSD-hVllc-Aoi7em4KmuX6bpQ>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id DE5573060A0F;
 Sat, 28 Dec 2019 21:59:23 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 1/3] clk: sunxi-ng: sun8i-r: Fix divider on APB0 clock
Date: Sat, 28 Dec 2019 20:59:20 -0600
Message-Id: <20191229025922.46899-2-samuel@sholland.org>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191229025922.46899-1-samuel@sholland.org>
References: <20191229025922.46899-1-samuel@sholland.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191228_185934_122664_D2DA9757 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.24 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-sunxi@googlegroups.com, Samuel Holland <samuel@sholland.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to the BSP source code, the APB0 clock on the H3 and H5 has a
normal M divider, not a power-of-two divider. This matches the hardware
in the A83T (as described in both the BSP source code and the manual).
Since the A83T and H3/A64 clocks are actually the same, we can merge the
definitions.

Signed-off-by: Samuel Holland <samuel@sholland.org>
---
 drivers/clk/sunxi-ng/ccu-sun8i-r.c | 21 +++------------------
 1 file changed, 3 insertions(+), 18 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-r.c b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
index 4646fdc61053..4c8c491b87c2 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-r.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-r.c
@@ -51,19 +51,7 @@ static struct ccu_div ar100_clk = {
 
 static CLK_FIXED_FACTOR_HW(ahb0_clk, "ahb0", &ar100_clk.common.hw, 1, 1, 0);
 
-static struct ccu_div apb0_clk = {
-	.div		= _SUNXI_CCU_DIV_FLAGS(0, 2, CLK_DIVIDER_POWER_OF_TWO),
-
-	.common		= {
-		.reg		= 0x0c,
-		.hw.init	= CLK_HW_INIT_HW("apb0",
-						 &ahb0_clk.hw,
-						 &ccu_div_ops,
-						 0),
-	},
-};
-
-static SUNXI_CCU_M(a83t_apb0_clk, "apb0", "ahb0", 0x0c, 0, 2, 0);
+static SUNXI_CCU_M(apb0_clk, "apb0", "ahb0", 0x0c, 0, 2, 0);
 
 /*
  * Define the parent as an array that can be reused to save space
@@ -127,7 +115,7 @@ static struct ccu_mp a83t_ir_clk = {
 
 static struct ccu_common *sun8i_a83t_r_ccu_clks[] = {
 	&ar100_clk.common,
-	&a83t_apb0_clk.common,
+	&apb0_clk.common,
 	&apb0_pio_clk.common,
 	&apb0_ir_clk.common,
 	&apb0_timer_clk.common,
@@ -167,7 +155,7 @@ static struct clk_hw_onecell_data sun8i_a83t_r_hw_clks = {
 	.hws	= {
 		[CLK_AR100]		= &ar100_clk.common.hw,
 		[CLK_AHB0]		= &ahb0_clk.hw,
-		[CLK_APB0]		= &a83t_apb0_clk.common.hw,
+		[CLK_APB0]		= &apb0_clk.common.hw,
 		[CLK_APB0_PIO]		= &apb0_pio_clk.common.hw,
 		[CLK_APB0_IR]		= &apb0_ir_clk.common.hw,
 		[CLK_APB0_TIMER]	= &apb0_timer_clk.common.hw,
@@ -282,9 +270,6 @@ static void __init sunxi_r_ccu_init(struct device_node *node,
 
 static void __init sun8i_a83t_r_ccu_setup(struct device_node *node)
 {
-	/* Fix apb0 bus gate parents here */
-	apb0_gate_parent[0] = &a83t_apb0_clk.common.hw;
-
 	sunxi_r_ccu_init(node, &sun8i_a83t_r_ccu_desc);
 }
 CLK_OF_DECLARE(sun8i_a83t_r_ccu, "allwinner,sun8i-a83t-r-ccu",
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
