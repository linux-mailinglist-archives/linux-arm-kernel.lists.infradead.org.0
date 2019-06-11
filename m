Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47CB3C8C3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 12:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uk6KNENhtBQW7qphcNJsrFNksKLu4o/juXeCP1eJFBU=; b=h9o2/JERJxxekA
	uJAWxkFyNBD1HedlLb1roByiWJrEgNHONFrng5jBxVw8XWrLViff676SLV7cUbivSgipp+ritVNgv
	QLpaUMmH1L5VXSCvLbtBL9n3H/EbC61isTrsHDsD9IoD0ukbqIaDQAc/RT7ckPdF7WJoqVM+qCTHY
	DvQkPSi8fuF2wElJmngES7WIqBA7lbbZBp/KdOBM53x0r7J6Voq4gsAMEZZYu4np22Bvk8AbeF76U
	n3Ly3fiIw1/ZwiVc05Yti1+2Xeb+sCURqUiWz8mh3KGnFUNyWZoIjcXRTCctanUP+RntzjXenlzbd
	G/iRS4GFH/GGAd2alPzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hadvN-0007ZQ-ML; Tue, 11 Jun 2019 10:22:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hadqJ-0001d7-N0
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 10:17:33 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 790B221773;
 Tue, 11 Jun 2019 10:17:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1560248245;
 bh=sokLnUJhT/SCRStm+Zy/S+z2plrpekbgTVKokOQld6M=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=0VwaFhzpTCg/i+0+WsLS31k8/RB9SXndRG6Vh+kyveWzl8E38vVcFAxcL7YcYsmHA
 AgSz9SVMWyQL2/blP/57YvpiApxopoKQf7Iivo12IUbIaO58qR5nnevvFpJXI8ZRPp
 ml1lvfVPXYo4NbID7opLjvyelKei9vKibf0h+ebE=
Received: by wens.tw (Postfix, from userid 1000)
 id 6E32C60ACB; Tue, 11 Jun 2019 18:17:18 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>
Subject: [PATCH v2 16/25] clk: sunxi-ng: r40: Use local parent references for
 CLK_FIXED_FACTOR
Date: Tue, 11 Jun 2019 18:16:49 +0800
Message-Id: <20190611101658.23855-17-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190611101658.23855-1-wens@kernel.org>
References: <20190611101658.23855-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_031727_842497_54BD15DD 
X-CRM114-Status: GOOD (  11.94  )
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

Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu-sun8i-r40.c | 46 ++++++++++++++++++----------
 1 file changed, 29 insertions(+), 17 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-r40.c b/drivers/clk/sunxi-ng/ccu-sun8i-r40.c
index f9625f7b9ec2..5fef799740ac 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-r40.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-r40.c
@@ -952,25 +952,37 @@ static struct ccu_common *sun8i_r40_ccu_clks[] = {
 };
 
 /* Fixed Factor clocks */
-static CLK_FIXED_FACTOR(osc12M_clk, "osc12M", "osc24M", 2, 1, 0);
+static CLK_FIXED_FACTOR_FW_NAME(osc12M_clk, "osc12M", "hosc", 2, 1, 0);
+
+static const struct clk_hw *clk_parent_pll_audio[] = {
+	&pll_audio_base_clk.common.hw
+};
 
 /* We hardcode the divider to 4 for now */
-static CLK_FIXED_FACTOR(pll_audio_clk, "pll-audio",
-			"pll-audio-base", 4, 1, CLK_SET_RATE_PARENT);
-static CLK_FIXED_FACTOR(pll_audio_2x_clk, "pll-audio-2x",
-			"pll-audio-base", 2, 1, CLK_SET_RATE_PARENT);
-static CLK_FIXED_FACTOR(pll_audio_4x_clk, "pll-audio-4x",
-			"pll-audio-base", 1, 1, CLK_SET_RATE_PARENT);
-static CLK_FIXED_FACTOR(pll_audio_8x_clk, "pll-audio-8x",
-			"pll-audio-base", 1, 2, CLK_SET_RATE_PARENT);
-static CLK_FIXED_FACTOR(pll_periph0_2x_clk, "pll-periph0-2x",
-			"pll-periph0", 1, 2, 0);
-static CLK_FIXED_FACTOR(pll_periph1_2x_clk, "pll-periph1-2x",
-			"pll-periph1", 1, 2, 0);
-static CLK_FIXED_FACTOR(pll_video0_2x_clk, "pll-video0-2x",
-			"pll-video0", 1, 2, 0);
-static CLK_FIXED_FACTOR(pll_video1_2x_clk, "pll-video1-2x",
-			"pll-video1", 1, 2, 0);
+static CLK_FIXED_FACTOR_HWS(pll_audio_clk, "pll-audio",
+			    clk_parent_pll_audio,
+			    4, 1, CLK_SET_RATE_PARENT);
+static CLK_FIXED_FACTOR_HWS(pll_audio_2x_clk, "pll-audio-2x",
+			    clk_parent_pll_audio,
+			    2, 1, CLK_SET_RATE_PARENT);
+static CLK_FIXED_FACTOR_HWS(pll_audio_4x_clk, "pll-audio-4x",
+			    clk_parent_pll_audio,
+			    1, 1, CLK_SET_RATE_PARENT);
+static CLK_FIXED_FACTOR_HWS(pll_audio_8x_clk, "pll-audio-8x",
+			    clk_parent_pll_audio,
+			    1, 2, CLK_SET_RATE_PARENT);
+static CLK_FIXED_FACTOR_HW(pll_periph0_2x_clk, "pll-periph0-2x",
+			   &pll_periph0_clk.common.hw,
+			   1, 2, 0);
+static CLK_FIXED_FACTOR_HW(pll_periph1_2x_clk, "pll-periph1-2x",
+			   &pll_periph1_clk.common.hw,
+			   1, 2, 0);
+static CLK_FIXED_FACTOR_HW(pll_video0_2x_clk, "pll-video0-2x",
+			   &pll_video0_clk.common.hw,
+			   1, 2, 0);
+static CLK_FIXED_FACTOR_HW(pll_video1_2x_clk, "pll-video1-2x",
+			   &pll_video1_clk.common.hw,
+			   1, 2, 0);
 
 static struct clk_hw_onecell_data sun8i_r40_hw_clks = {
 	.hws	= {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
