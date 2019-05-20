Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8E122E0A
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 10:10:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=La1Ij2Fdj/sVRVV1V2mcMw/rwTd8z3O0UuCNCGyQKNw=; b=mBWs/QQ9UpkJoS
	kIirgEIT9dDqwp8QpdmNLctmX0ESgmmhWfS/vEpZ0CkgMnM6EnQd9lfcjG2hYbjorIrGSM1QS7yCA
	Cy3javWyTHH5qTYzNM+SSpa6/jx56PFzftnw3fSgJrtvlG/SaHUBuYOtJIOGUIXjGLPtWKBBVvEtE
	4+dlcU5wLhpRKVZtTAtj+YOnU2kopr9d/qqYlLudkHHqE+2bpkSBjMZJwCK9PCl685bb1tZimy8Xp
	IqRZoFlMiCpu0Ptksqhs0M5YeVE+xvVkpkoyMnfbYezs2Cv35ubRCuADN1wIW7EG16i4Q0TJioXGg
	zl7KS2MyRw/h3xlo0Fog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSdNo-0000BS-Fs; Mon, 20 May 2019 08:10:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSdIj-0001PS-UJ
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 08:05:58 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7BCE021734;
 Mon, 20 May 2019 08:05:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558339539;
 bh=sc1sQXaOkR/Bf4e4sZ0eDx9hKPimH/NNMhrLM9y14Sg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Qu8H3cfVS0E7zMKYoSLXzKj2h4TK8E57bN6cvotZVSiLfFsgCFhSyb2yRiEd9T9JS
 T66n5grOqg/ON1UDxaHljZEd5LDEXUzM2th/UiHQorJj40Z9cetwbnr7oo/mGOgoeZ
 OzC6CCFnoRZtipOrB/is2jVHB5CGHO2D1y/gyvIs=
Received: by wens.tw (Postfix, from userid 1000)
 id CD46C65842; Mon, 20 May 2019 16:05:32 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH 21/25] clk: sunxi-ng: h6: Use local parent references for
 CLK_FIXED_FACTOR
Date: Mon, 20 May 2019 16:04:17 +0800
Message-Id: <20190520080421.12575-22-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190520080421.12575-1-wens@kernel.org>
References: <20190520080421.12575-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_010542_346680_D80BDD46 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
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
