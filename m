Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A665016A17D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:14:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pKBi5mpDp2LLBz+/Nwc5CQTxrihMl7T0kMgoTGbN1Wg=; b=a9kYVBKb9PyBwO
	xc6E3RYtB73jc96rKTHU1W4A7KB8ND3im2SdZ7g8GQwCovin2aaVGP+zH5rWZUBwOx0zZ0pyOJ6wM
	ZpEhNLQNU1hXDu2VRS2QSFICPWvbjlxA/I66fUbb0QdC4xeneHh3ECJlvCE/DrIfVR+L7AYyi8x05
	FnN5Aq0xhYxSSICokT0NElEgz8YrOzP0YesdkqveqZI2N0H8aWycmJtuDDdUnbwu9r/KPHr40ym8i
	SzBVksenX/xXr+HHKLSbIgZyMBFHjBYgSQ0jeVgGIdAlzPNNxq7o7vXaf5fh2XqTCrlrTWrTfjpkR
	YJGRtXrCDVvK89GPQsIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69ok-0005iR-Or; Mon, 24 Feb 2020 09:14:22 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jk-0001Wk-R6; Mon, 24 Feb 2020 09:09:15 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 550C35F3;
 Mon, 24 Feb 2020 04:09:10 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=k4Hi29ghrG4JQ
 tlhyZiPN5PiSDk2Gt5z3+0c/vRW2Ag=; b=MJAftrcZMyY1DD1GO0BTeFYfjJDjD
 utcSPShPIAVxU1RL9zdAZ9LvBI21X/IJrjq7TgFPZUjWDIIyKkUwXgfRcUDIRB44
 8s8Kyo6LIDlREzkXEDWyeRA2sIkX6oBzpdD7AWgVpKvIAzUuCXZ4cFFfsCRj3YZF
 3+u85KXqtR55Fp28+wYod8ALdEuu6ZKfBGq8PwLaI9nE6pAvpkzVRstovYso0u3b
 J/nsLrVpQdjZt8ht7JnyRcp4hzMdS2me/qXVcuRF7DFHGmav7qoO8SLLp3l9DeRK
 yfLpiwj16d1VIcnfzZlpU1lvOhBnCJKJxD5jsw6PUWnZvDTpUrf+4xOkQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=k4Hi29ghrG4JQtlhyZiPN5PiSDk2Gt5z3+0c/vRW2Ag=; b=b44btDP5
 93gWjsAMI1gsy3de+Q+ZAAxu9hi3McZaN2oD3iwnUkhnBpVoT//zQztvALyhg4ri
 LcipPzKUvE8UkItIgAKtQZFvirwLARBmgW3RFYrAbokyHgXDvj76KQ4zv+MRec/A
 XDReBJUvxwDSx5bO2jd1oMIAgp7tkRAIW1KRQwm7r7U+VIN+wRKyIfNtRNQv3ex2
 PJ/87PXkkQVQ1CTmIUpJb1llhWnY0JCbV23dIBji0AvLnZTKc4QmADIUwYGC56c2
 Armp8BsosWSvasNrsjyiZKW0v8YEEv32JVJyWCG9kvOVWiuCiSlbPrsIkd7vohDU
 LSO2yHITSkkQkw==
X-ME-Sender: <xms:tZJTXirPO2Ve2Yg82zTnZMcO1vFD1sKbhG_8A-wKMrZJ6vU4LZ2HHw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepleenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:tZJTXjY9mWVOPCuPpcHi9_q4T0y4d1iwDs1BuU3P6w5Jxt2ggb8XTg>
 <xmx:tZJTXkEvYsRTQ-DGA_LGVJHP5uU78ZwAPW_a6wHlwdJF4PUb492MMQ>
 <xmx:tZJTXpY1Lb_79HaUorehnrUMu0WH2nLLXn1jzP2rlozSvSl7VsgNbg>
 <xmx:tZJTXqgPuZ_AvPCA3oefzntlq7YxAdTvycSvlDhACZDWphsW00cB2o_os1U>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 963F9328005A;
 Mon, 24 Feb 2020 04:09:09 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 14/89] clk: bcm: rpi: Make sure the clkdev lookup is removed
Date: Mon, 24 Feb 2020 10:06:16 +0100
Message-Id: <1779dd1489125be571fb3c2ee3e04c32f9875420.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010912_988159_6FD290A9 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.17 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The clkdev lookup created for the cpufreq device is never removed if
there's an issue later in probe or at module removal time.

Let's convert to the managed variant of the clk_hw_register_clkdev function
to make sure it happens.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index b97c7ec61376..b8b55134ba3f 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -245,8 +245,9 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		return ret;
 	}
 
-	ret = clk_hw_register_clkdev(&raspberrypi_clk_pllb_arm.hw,
-				     NULL, "cpu0");
+	ret = devm_clk_hw_register_clkdev(rpi->dev,
+					  &raspberrypi_clk_pllb_arm.hw,
+					  NULL, "cpu0");
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize clkdev\n");
 		return ret;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
