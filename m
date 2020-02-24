Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEA5416A1B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:16:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eJSCldNhP3KHSTjpvyB8Wsq3yI3idlaGDG5LmVGyNyo=; b=j2yJyBKaiaUkQb
	erjteIc2xtlYu+xxhYeWZUsEO7oVaDhg3MXPYphlVd/dqAgZjogAJRI9zPo9YnciPzg9HajffruPM
	ohfZmCXLnMwqAbSVSxvFooLzcKmJH6Q7x+YWS4ttCSfo81t+NSNAhsHVFLkcsHHDjYVBic2oQl0ah
	DojUU0WXzEOppjg1ual/7ZJJZ+4yGab8whrbp8gTijJPW5giyYBJrYxvQi9Q4Zl23uhTGvrxlHYbE
	Het94buYBLBl6mCYoxlq++pLfxYUc5J1A3qA6EPjoH5TpKpAhYNXzI94YPoiQ7DSMAF8QwHb2xmBA
	N8GEo9lN7sas9uY6pnaw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69r5-0008Ib-9T; Mon, 24 Feb 2020 09:16:47 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jk-0001WQ-TM; Mon, 24 Feb 2020 09:09:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 3B5725D0;
 Mon, 24 Feb 2020 04:09:03 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:04 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=rQ9z3JDnGS1f+
 +roKHzhbrCbzlUT0lEu5PjHEQxG818=; b=qg9BuVR5FAzM2euH/IkvPtLOBE2ep
 P7/VyC2U7F9F6f4ZG0rScPxxIhaonni4EimEx7UCxkoYWr1TT5dqXzcVAiAxvDV8
 jEd6kwhp5lmufuAw34lV9w3vZtNCv3joddJYenrlJ6hObtTpt/lkIoFUuXSKs4rO
 SoyLLeMvTms8TPRJht+47Ewz/9eUVvLGefT7zOa5qD4FZImOseP6KAxzHR+Tjll0
 l8q+8CRrygs3iP/D1uyi8hplskCgN3xR47mYp7dElYetsDT4HgEDqboV86Rx5SPU
 b+zubbPMHjF1Qmt62DtsvAh6xIURb+YTBFttsgsK77c3TasJ+vPg1joMw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=rQ9z3JDnGS1f++roKHzhbrCbzlUT0lEu5PjHEQxG818=; b=FSWtlH0N
 lWUnUP3KHN1EIBN00dQuY9S1Tq9qb/0C3HFMi+e1CZClTB8arLEkjy2Db9nIoJH1
 ik5+5OoO6NjoZXqEGQBRGApK5/U5gdZlT4SsGwQrrIWDyG3wS/Bovixu6LDQASiN
 dIpDjDEtSOqv2q10jdB1HvQuJfMEvgpySNHaR77l2kUTwb+tzo29sH7FeJvjkfps
 utmcAdoWBgtsNNdRI9RN1BMj0oSEXxoKDV+FTURPkm3EeNR5kW2/k/N6jtRzmZ6O
 bPphhT8o4vKGzKsQBTEeAVTy0rNEJs96GJH40fTXSR6hhgE/8jlb6zfg7yf6b4w1
 nP5kx26ngJYyZQ==
X-ME-Sender: <xms:rpJTXsn8d_uX8Mw9kl53CScKZaJrvOLpOIX0-U0ylYNLL6w5wE_cBQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepheenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:rpJTXlKnbBqn53WOeXyX1jbQWAQt-8yAFyG75-9HxDJAsDHxEwaLCg>
 <xmx:rpJTXh65pKB3RuovxMQgx-QdCIBnGhH53-RA4_s9-THTDJkc9ccLAQ>
 <xmx:rpJTXp3kS59pszfzNrimUokfsBVSQmkRdh8bGrfOcX0DhG_WT-ATmA>
 <xmx:rpJTXoIJx-324ab2IubKFkLyuwgmVfIMvYQBrnwkxybQME_3TVhAp3AOZHE>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 7AB4B3060F9B;
 Mon, 24 Feb 2020 04:09:02 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 09/89] clk: bcm: rpi: Use clk_hw_register for pllb_arm
Date: Mon, 24 Feb 2020 10:06:11 +0100
Message-Id: <1c47c839fda93460994d37b4c851d805a3282d5f.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010913_138496_98155860 
X-CRM114-Status: GOOD (  11.55  )
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

The pllb_arm clock is defined as a fixed factor clock with the pllb clock
as a parent. However, all its configuration is entirely static, and thus we
don't really need to call clk_hw_register_fixed_factor but can simply call
clk_hw_register with a static clk_fixed_factor structure.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 64fd91b5ffe9..48cffa44db64 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -225,16 +225,28 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	return devm_clk_hw_register(rpi->dev, &rpi->pllb);
 }
 
+static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
+	.mult = 1,
+	.div = 2,
+	.hw.init = &(struct clk_init_data) {
+		.name		= "pllb_arm",
+		.parent_names	= (const char *[]){ "pllb" },
+		.num_parents	= 1,
+		.ops		= &clk_fixed_factor_ops,
+		.flags		= CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
+	},
+};
+
 static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
-	rpi->pllb_arm = clk_hw_register_fixed_factor(rpi->dev,
-				"pllb_arm", "pllb",
-				CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
-				1, 2);
-	if (IS_ERR(rpi->pllb_arm)) {
+	int ret;
+
+	ret = clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
+	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
-		return PTR_ERR(rpi->pllb_arm);
+		return ret;
 	}
+	rpi->pllb_arm = &raspberrypi_clk_pllb_arm.hw;
 
 	rpi->pllb_arm_lookup = clkdev_hw_create(rpi->pllb_arm, NULL, "cpu0");
 	if (!rpi->pllb_arm_lookup) {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
