Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 961D53C8D0
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lxRnUgnrJl8xDsmztsfHhOa7G51U+f7P5ZZR9vKTSY0=; b=tNhjUmdjPlQwsw
	HBrpTzrQF8vr4UXg//E5IfXB0EfB9gvayfe9B4KWKn+z+I92F6KMMVXzkxiNdM4HTsTlCdKg6hywW
	Mp5DDWN/xqpxSvszL85+/DP0K96WqsBmrYcO3mfJBZgevm9D7EkfadD6V+W+GqUhmhxXrl0HFrF/G
	PIK8mFRRR+kY8nkbkUWg92ZP0CGFtjzMwhaEOEu6BFYpE8q1TmsaKcjc029IoXNodzO0cDCpb4wiy
	6E5XHarWPzOUREWJEQ1B435d4X32I3TQmmgZe0gZlJWqB4s7Jck3YkoGNuN4nw+mnMOLiRK6/zZ53
	vDerGnZ9hgmcXmWmh5ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadxd-0002aM-2Y; Tue, 11 Jun 2019 10:25:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqK-0001dV-Jk
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:17:36 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6E31D208E3;
 Tue, 11 Jun 2019 10:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560248245;
 bh=q7wJtycKmnzcTXPIHMv0VJJqiXDTMo8DpT30ueYKVmc=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=W5ynChVEXxKK3SLA8vfiAE+LiVJdlpMyzU4tA3Kdb8K61nMfuLTzH3GYi7vcP59p8
 77Pkz6uuN26oMYIoVb9zBd1rU3pHuy9Qun2aT2w82DijMgchyZqvswk7a+OrrQi4MS
 GyJLCEtHH6OiwGuyEkxh2Nx/fbhUTtl1S6Y6Qxro=
Received: by wens.tw (Postfix, from userid 1000)
 id 92AC060C86; Tue, 11 Jun 2019 18:17:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 21/25] clk: sunxi-ng: h6: Use local parent references for
 CLK_FIXED_FACTOR
Date: Tue, 11 Jun 2019 18:16:54 +0800
Message-Id: <20190611101658.23855-22-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611101658.23855-1-wens@kernel.org>
References: <20190611101658.23855-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031728_754497_B3F04F85 
X-CRM114-Status: GOOD (  12.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

With the new clk parenting code and CLK_FIXED_FACTOR_{HW,FW_NAME}
macros, we can reference parents locally via pointers to struct clk_hw
or DT clock-names.

Convert existing CLK_FIXED_FACTOR definitions to either the _HW or
_FW_NAME variant based on whether the parent clock is internal or
external to the CCU.

A forward declaration for struct clk_fixed_factor pll_periph0_4x_clk
is added as the definitions of the fixed factor clocks appear much later
in the file. The position of fixed factor clock definitions will be
moved for all drivers at a later time, before the conversion of all
other clock types.

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu-sun50i-h6.c | 69 ++++++++++++++++++----------
 1 file changed, 44 insertions(+), 25 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
index 9d3f98962779..207c65dc5d70 100644
--- a/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
+++ b/drivers/clk/sunxi-ng/ccu-sun50i-h6.c
@@ -622,8 +622,9 @@ static SUNXI_CCU_GATE(bus_xhci_clk, "bus-xhci", "ahb3", 0xa8c, BIT(5), 0);
 static SUNXI_CCU_GATE(bus_ehci3_clk, "bus-ehci3", "ahb3", 0xa8c, BIT(7), 0);
 static SUNXI_CCU_GATE(bus_otg_clk, "bus-otg", "ahb3", 0xa8c, BIT(8), 0);
 
-static CLK_FIXED_FACTOR(pcie_ref_100m_clk, "pcie-ref-100M",
-			"pll-periph0-4x", 24, 1, 0);
+static struct clk_fixed_factor pll_periph0_4x_clk;
+static CLK_FIXED_FACTOR_HW(pcie_ref_100m_clk, "pcie-ref-100M",
+			   &pll_periph0_4x_clk.hw, 24, 1, 0);
 static SUNXI_CCU_GATE(pcie_ref_clk, "pcie-ref", "pcie-ref-100M",
 		      0xab0, BIT(31), 0);
 static SUNXI_CCU_GATE(pcie_ref_out_clk, "pcie-ref-out", "pcie-ref",
@@ -745,34 +746,52 @@ static SUNXI_CCU_M_WITH_MUX_GATE(hdcp_clk, "hdcp", hdcp_parents, 0xc40,
 static SUNXI_CCU_GATE(bus_hdcp_clk, "bus-hdcp", "ahb3", 0xc4c, BIT(0), 0);
 
 /* Fixed factor clocks */
-static CLK_FIXED_FACTOR(osc12M_clk, "osc12M", "osc24M", 2, 1, 0);
+static CLK_FIXED_FACTOR_FW_NAME(osc12M_clk, "osc12M", "hosc", 2, 1, 0);
+
+static const struct clk_hw *clk_parent_pll_audio[] = {
+	&pll_audio_base_clk.common.hw
+};
 
 /*
  * The divider of pll-audio is fixed to 8 now, as pll-audio-4x has a
  * fixed post-divider 2.
  */
-static CLK_FIXED_FACTOR(pll_audio_clk, "pll-audio",
-			"pll-audio-base", 8, 1, CLK_SET_RATE_PARENT);
-static CLK_FIXED_FACTOR(pll_audio_2x_clk, "pll-audio-2x",
-			"pll-audio-base", 4, 1, CLK_SET_RATE_PARENT);
-static CLK_FIXED_FACTOR(pll_audio_4x_clk, "pll-audio-4x",
-			"pll-audio-base", 2, 1, CLK_SET_RATE_PARENT);
-
-static CLK_FIXED_FACTOR(pll_periph0_4x_clk, "pll-periph0-4x",
-			"pll-periph0", 1, 4, 0);
-static CLK_FIXED_FACTOR(pll_periph0_2x_clk, "pll-periph0-2x",
-			"pll-periph0", 1, 2, 0);
-
-static CLK_FIXED_FACTOR(pll_periph1_4x_clk, "pll-periph1-4x",
-			"pll-periph1", 1, 4, 0);
-static CLK_FIXED_FACTOR(pll_periph1_2x_clk, "pll-periph1-2x",
-			"pll-periph1", 1, 2, 0);
-
-static CLK_FIXED_FACTOR(pll_video0_4x_clk, "pll-video0-4x",
-			"pll-video0", 1, 4, CLK_SET_RATE_PARENT);
-
-static CLK_FIXED_FACTOR(pll_video1_4x_clk, "pll-video1-4x",
-			"pll-video1", 1, 4, CLK_SET_RATE_PARENT);
+static CLK_FIXED_FACTOR_HWS(pll_audio_clk, "pll-audio",
+			    clk_parent_pll_audio,
+			    8, 1, CLK_SET_RATE_PARENT);
+static CLK_FIXED_FACTOR_HWS(pll_audio_2x_clk, "pll-audio-2x",
+			    clk_parent_pll_audio,
+			    4, 1, CLK_SET_RATE_PARENT);
+static CLK_FIXED_FACTOR_HWS(pll_audio_4x_clk, "pll-audio-4x",
+			    clk_parent_pll_audio,
+			    2, 1, CLK_SET_RATE_PARENT);
+
+static const struct clk_hw pll_periph0_parents[] = {
+	&pll_periph0_clk.common.hw
+};
+static CLK_FIXED_FACTOR_HWS(pll_periph0_4x_clk, "pll-periph0-4x",
+			    pll_periph0_parents,
+			    1, 4, 0);
+static CLK_FIXED_FACTOR_HWS(pll_periph0_2x_clk, "pll-periph0-2x",
+			    pll_periph0_parents,
+			    1, 2, 0);
+
+static const struct clk_hw pll_periph1_parents[] = {
+	&pll_periph1_clk.common.hw
+};
+static CLK_FIXED_FACTOR_HWS(pll_periph1_4x_clk, "pll-periph1-4x",
+			    pll_periph1_parents,
+			    1, 4, 0);
+static CLK_FIXED_FACTOR_HWS(pll_periph1_2x_clk, "pll-periph1-2x",
+			    pll_periph1_parents,
+			    1, 2, 0);
+
+static CLK_FIXED_FACTOR_HW(pll_video0_4x_clk, "pll-video0-4x",
+			   &pll_video0_clk.common.hw,
+			   1, 4, CLK_SET_RATE_PARENT);
+static CLK_FIXED_FACTOR_HW(pll_video1_4x_clk, "pll-video1-4x",
+			   &pll_video1_clk.common.hw,
+			   1, 4, CLK_SET_RATE_PARENT);
 
 static struct ccu_common *sun50i_h6_ccu_clks[] = {
 	&pll_cpux_clk.common,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
