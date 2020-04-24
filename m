Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60E6D1B79C0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:38:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9F2TvEl/OrU37BU51BKTBdNe+BjX7tpbCmL5ZvgA66U=; b=Ds6NiGOjcOJrLq
	bQMZy/IOYpjOwaBlWHx+8D8YrxESZVAPiDR0ChPQQ2XQ7FDggCtsWiW47NnOEetm6vzYz2+g11Mz9
	t2q8LZiatNanAa2gl0VEkN6aVTEHLSuAxogxflGbbf6hPs1T60s/LvR5/CGRvJka6QFYc50BL3rsd
	98UsHKqBaUXA9iiqdL1WCOh8calAkj9A+iz5lZ3K9/6Q2bjQnMrZCtNecE8HS9fLSgcEMcOrEwTZ9
	CROGSm7iWbUfkLol/lsiKCRt7CEhD5RisohcWE/xWYOC45BoKbSegmqG3PF89MHN1LEbouXXgRwKg
	nTZ85IFeavaRF+FXTT3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0PH-0000zp-SP; Fri, 24 Apr 2020 15:38:23 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mb-0007RW-0G; Fri, 24 Apr 2020 15:35:39 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 1D59510EF;
 Fri, 24 Apr 2020 11:35:33 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=+onva/+CqTnRX
 jGJLNx7IrsPqleVEF04jOh6pFJB/Qw=; b=Iqt7dLaFYbFjVfBX79gbkJyN84iKI
 OhrluQ7VnuyntLjpkfjrCCLVqEc6xXxMfWK0S95vKPQ+d8LJ5ft9Xpouj5yyekQa
 0BHZk1WRezzPf8esDkaDlWSSe3f2BGTxvkIr3Ec3dFYW47HjV+8GW4EEk/8XYBTS
 zksLRyPfiRya+WPw9fe40iepvM0V3/EDoJg7ga6ewzOgOVfoD1N+1NBvq5vn1z0z
 WFswxcuzuhgg8pbrRPQg1hsA3exl8tORvvJg/VqLU/LzSn3WZgyBQNUL2imoPno9
 55SinBOyWOxiNe5SuP/BkuovTj8oPnH+fSRa9h9zh0JZ2X95Frwbx84PA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=+onva/+CqTnRXjGJLNx7IrsPqleVEF04jOh6pFJB/Qw=; b=jBpUQ1RC
 pAMt4EH54TrTZlbUyd4iyBw+caS1m2+L6YeTsrjKPJZuPALAZQs4g2uVu6xe5gMr
 kt1JXG0ENnp5mhlIgnJZFFGShcbb3rH7psqaTvG5LLO5Tlpy+R/kA1+IG510AOzo
 DDiSjFQnx10zn8CfxNpZ5xul3jf6sLvwg19LdTyQeuDi2xHbLSLqe4oxb2SHz5qb
 RMlJDsgdrfZfUD746JpBxS7+iuC6fRWR30KDkXlr6M8+7E/fTcYf8hIUWd6g/lVY
 vjyu/JALj4xs0P/AwHx5dnXfn4pAFy/ooWVmJPgYSpyAurmqX3b86avMvc2mBpas
 MV8aZG+ZBKoYcw==
X-ME-Sender: <xms:RAejXr2hvADe0rjshw3V5wISN9pdNV9nDwr6pVk9l0o1hqHPBTGKaw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:RAejXmK-8csWRqrmWdVh1x5R_6kGZgcdnjaM9gc5ueeFApHWM6f4vg>
 <xmx:RAejXlQi77LqNEFYDjxzE4YgyQlZ_x1We_kmMdouAWeserVceNVKCQ>
 <xmx:RAejXpDssEmJoh63dzhAkwQV-t2wF2R3S4_UJgkxCBEP-VgDwciaEw>
 <xmx:RAejXv2cXr8qrvnBmBori5GebyBitIGGTUwG0xpZvA3dCBaMEowcDREHXvM>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 494E13065CDA;
 Fri, 24 Apr 2020 11:35:32 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 07/91] clk: bcm: rpi: Use clk_hw_register for pllb_arm
Date: Fri, 24 Apr 2020 17:33:48 +0200
Message-Id: <cc3e292006cd3c2754e650a5691e3deed4dfaa3a.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083537_125484_D8C19161 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

The pllb_arm clock is defined as a fixed factor clock with the pllb
clock as a parent. However, all its configuration is entirely static,
and thus we don't really need to call clk_hw_register_fixed_factor() but
can simply call clk_hw_register() with a static clk_fixed_factor
structure.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index b6d2823c2882..3e9032b9a0a6 100644
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
