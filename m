Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7DFB71F9228
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:49:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDfD8TFBMmwws33LipIK7SlnNEMmYYeCsmsm/I6/wUk=; b=Oa/VtlzuWkT1UO
	CQcvlmPPNYvzeuDU/O1vdZKqc8FHoNEZDE7/ZHbxbRtpkY64UDwqASB9SZkz+td1lpHQyqFXyKLvt
	Zumn9+6MopH3Y/ndeMbxrFBVyikElL81GZlxB4CPhP9buYtczIfsM1Yy2d9k+sqKvyohqV4g5lLqV
	n4Uhp4QUaobhKqaSNleFXjO+nU3j0agqJXaIHsdd6Q4AMWQLOrDvSXPvoYPntY9Fn8fzJoItWivdE
	JnjP69+U27rsmnu1c/sgMuE5j1uAoyiz+G7ytTn5V5Dy1iPS7N9q704OmVUKgmsth34LXe4aNvSpK
	wJaWMAl4T3j5WN7wbBpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkknk-0001mj-LB; Mon, 15 Jun 2020 08:49:08 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgo-0001zz-Bi; Mon, 15 Jun 2020 08:42:00 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 484F558014F;
 Mon, 15 Jun 2020 04:41:57 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:57 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=DQpPTJYxXtp+r
 dATG2C/JzFH6pA6g3j8lECnpVhYo0g=; b=b4FeK6IbtHqEoEb6fFPildyK5VRq5
 GtHuaolO/QH6+RZsyovSKT7E7Jhffse8oMelUDeO8enFSfhH6KFsgqowjXpmHnXq
 YawVh39y6mbNlauo+hisQTS3b//83NjN6fuqUoyIrUTDDy9YqbHrwoMfEoA1hVq4
 mPouJOtDgG/84eGz9zlxxQlM7cdk3fhad0lSruGUZdhBBcves4u/dbZOEH4zoLw/
 +vULqoLWwXj5baOkh+yivJzqxAogEevpemnCAfzZeJZLHJbYeVKdxYDGt8bEoTfr
 92H5tPZExJh8hv3ilernL05QGnr2XwJKsHcJfskm5D3ZqNVdKXIPR8Kuw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=DQpPTJYxXtp+rdATG2C/JzFH6pA6g3j8lECnpVhYo0g=; b=rk/dbtVf
 QHFeUN1u45113xhLXEeF5VIqK2HxXePO+lm/HBJnUyYnWWWFcejz8fx2MiqtcMYJ
 aRxOTKmJ6D8QNwCYXsKmH58R8YrHVjjzt+QBC0c0QjRjse9vEOGJ0KGM8WbcCYfI
 VnATZyWh+KG5VRiad0JIpS6Muq8fe3xbMjsoZq/PLXKni3LolOoPR/10UQcWe9sB
 ohc8v6+qmJ1Xn+kAftOlt6knWoRBKeL4c4VSqbTNNFnl6Yf36QmmRdqYO7LP/kfY
 x6K9Nde6ZE1q1yVvPJ0TuoXyWCaCbp5BKb4SpdM45O1Wh7eg23VMS9GogTWtRaQm
 pAir3l8JSqsQqQ==
X-ME-Sender: <xms:VTTnXvOsyFUyq9ftS0mXb4k_GEeQl0DR_XtvYicZfPv1UXFKUH3sYA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvddune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:VTTnXp8RzkMIrCJDjKdi7geKZfGrXzr-wn3gN0JIGLsafEkVeGfkuw>
 <xmx:VTTnXuSyhhrepg789uZTllxAV9fRAlcI01rUHCgGe-LRaHmhOrPxmg>
 <xmx:VTTnXjtvJjfz0HToGQaShVfDto4_BFWWEgNAgHbUphDU25BMQqEO7A>
 <xmx:VTTnXr7UcfGOO1i5QfaHojGBTRxYk_nDcxFpW6cOxRAgWZuToJmjuw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D571B30618B7;
 Mon, 15 Jun 2020 04:41:56 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 23/27] Revert "clk: bcm2835: remove pllb"
Date: Mon, 15 Jun 2020 10:41:03 +0200
Message-Id: <5d26a4c58248f5be7760a7f2f720a1310baea5dd.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014158_636661_A7D8591B 
X-CRM114-Status: GOOD (  10.96  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Tim Gover <tim.gover@raspberrypi.com>,
 Dave Stevenson <dave.stevenson@raspberrypi.com>,
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 2256d89333bd17b8b56b42734a7e1046d52f7fc3. Since we
will be expanding the firmware clock driver, we'll need to remove the
quirks to deal with the PLLB. However, we still want to expose the clock
tree properly, so having that clock in the MMIO driver will allow that.

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-bcm2835.c | 30 ++++++++++++++++++++++++++----
 1 file changed, 26 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/bcm/clk-bcm2835.c b/drivers/clk/bcm/clk-bcm2835.c
index 6bb7efa12037..32f5c13be9d1 100644
--- a/drivers/clk/bcm/clk-bcm2835.c
+++ b/drivers/clk/bcm/clk-bcm2835.c
@@ -1684,10 +1684,32 @@ static const struct bcm2835_clk_desc clk_desc_array[] = {
 		.fixed_divider = 1,
 		.flags = CLK_SET_RATE_PARENT),
 
-	/*
-	 * PLLB is used for the ARM's clock. Controlled by firmware, see
-	 * clk-raspberrypi.c.
-	 */
+	/* PLLB is used for the ARM's clock. */
+	[BCM2835_PLLB]		= REGISTER_PLL(
+		SOC_ALL,
+		.name = "pllb",
+		.cm_ctrl_reg = CM_PLLB,
+		.a2w_ctrl_reg = A2W_PLLB_CTRL,
+		.frac_reg = A2W_PLLB_FRAC,
+		.ana_reg_base = A2W_PLLB_ANA0,
+		.reference_enable_mask = A2W_XOSC_CTRL_PLLB_ENABLE,
+		.lock_mask = CM_LOCK_FLOCKB,
+
+		.ana = &bcm2835_ana_default,
+
+		.min_rate = 600000000u,
+		.max_rate = 3000000000u,
+		.max_fb_rate = BCM2835_MAX_FB_RATE),
+	[BCM2835_PLLB_ARM]	= REGISTER_PLL_DIV(
+		SOC_ALL,
+		.name = "pllb_arm",
+		.source_pll = "pllb",
+		.cm_reg = CM_PLLB,
+		.a2w_reg = A2W_PLLB_ARM,
+		.load_mask = CM_PLLB_LOADARM,
+		.hold_mask = CM_PLLB_HOLDARM,
+		.fixed_divider = 1,
+		.flags = CLK_SET_RATE_PARENT),
 
 	/*
 	 * PLLC is the core PLL, used to drive the core VPU clock.
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
