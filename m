Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D4C16A1B2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 10:17:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jpb182f3YUEqJqM4mSZ1BSoHB0TSeVwUeguZKVZ/bc4=; b=O70ZuD6OF2KRcV
	J1L2k40GhYqpyPFV3MdrOFfgRX7nPut8qr9c1+1AhKE9K5VjxkBUQSniVxHTc7gOKG8MsiFFPiIYB
	yJChM+Zlfz0yebauz/uIdo990Lwu/hG0p0FR4SrchEZtlARart+302ApYZZ1HmEGApe/P8jYErAQy
	zLg1oVoCbe/DSbzgVFhb06JCe9JWf2d8Xt+d6/ok4K5uQA4k8+YStXlz+tBXe+NasEPvoMqG4xa2c
	fA8oF9q97/aPL7uJ+pZT3NDe5p+VnsvWTttXwp+EmuqKzZTq3No4yhZSMd4TuuQtUcE919WR1psH7
	YXWCosrxaFLwHFjlmN6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j69rT-0000Hu-9X; Mon, 24 Feb 2020 09:17:11 +0000
Received: from wnew3-smtp.messagingengine.com ([64.147.123.17])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j69jk-0001WP-Vg; Mon, 24 Feb 2020 09:09:17 +0000
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
 by mailnew.west.internal (Postfix) with ESMTP id 9F7F75E9;
 Mon, 24 Feb 2020 04:09:04 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
 by compute3.internal (MEProxy); Mon, 24 Feb 2020 04:09:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=RA0maRjIFng70
 1n6PiOOHPmNpTe6VLKblsL5phqkTNA=; b=zZIK4LeCe85vxmM5YSQmORs4CZcLk
 NoiENbMpZdmhQ7XGc7STYfFwA56FFa7CSACCq1VblSNeiElaqpDvruyk+8JFlwQu
 pBkpXmeK90Pm8jEUJWTDoOnP8esh2UOqNl5W51+W7ubCi7wNz43+v3n7xBGh1tU5
 JGZAMMmpKf65uBHY3e6U1lpZCJ5y1LXHk8ZwYYG/QOUAfnlvcuuOJJPv467GBLXk
 rT3lwiXrE/JI+RrT7y/AW2cXc3eI179sPabpcCstBhypy/t4tnI09JTF9HmP9XYm
 364EsJkSMtHZGFS2Vl+Xx0LhcrRo5TUekDFa4U8o9Gz48WxI0XSk8hI+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=RA0maRjIFng701n6PiOOHPmNpTe6VLKblsL5phqkTNA=; b=VA4+Ixzn
 qQMS1xdvHK4iRNwtvJqNhVE7N9xQAhhViFe5TJUrp/oSF8fo+JOKes728zrfpvTG
 zN0ulpI4TDTehmb92YGKet89UTgg4WXV5hcSt2HA/v2FV0b2i4B/G80kq0KqbdGX
 3yR9zsUX8MYe/DguFICfQo01R4aeX8KYCzfT1QNVKif6Q6mHsKHpbvCJFT5vxwRN
 uSopoH/8twU6mYn1Mip9nHpu/kAYmhOu1S3py8OgcTG+2dUOvxgoWXc4pGaIjMpW
 RhPEFlXHmSXjTlts54iPsx0BxD6xTc8/Kr6EGmeEWo7NTX4GeL0pVeaZnLHzoPav
 2EiqT9FgMFI9oQ==
X-ME-Sender: <xms:sJJTXl37Qy19Ptk--4nuKjM6l6iyHgTi-drHHrwDfk3FDoY_yfnFfw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrledtucetufdoteggodetrfdotffvucfrrh
 hofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgenuceurghi
 lhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmnecujfgurh
 ephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhmvgcutfhi
 phgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecukfhppeeltddrkeelrd
 eikedrjeeinecuvehluhhsthgvrhfuihiivgepheenucfrrghrrghmpehmrghilhhfrhho
 mhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:sJJTXgWKqFog-Wr7IJ0TtoEFuYzljs30luCokhzTIRhvRHe9nHo4Qw>
 <xmx:sJJTXg4vClpKbKlg4de-O_eWUsmVP5WRKuoPIN9-BbAf5krIVF69BA>
 <xmx:sJJTXnKmgxBHJT9SBWYF2o_-NgTRIpr5eLFsB4PyovBvPQ5t1lStTQ>
 <xmx:sJJTXgOzMOyQRPiH_h9pCsnoIT_j__5PfRmHO2hm9QCjux8aisdiTTAZNkE>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id DC81F3280063;
 Mon, 24 Feb 2020 04:09:03 -0500 (EST)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH 10/89] clk: bcm: rpi: Remove global pllb_arm clock pointer
Date: Mon, 24 Feb 2020 10:06:12 +0100
Message-Id: <3876f732b3fec2059270678d464d27b7d3a0414b.1582533919.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
References: <cover.6c896ace9a5a7840e9cec008b553cbb004ca1f91.1582533919.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_010913_172853_840034C2 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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

The pllb_arm clk_hw pointer in the raspberry_clk structure isn't used
anywhere but in the raspberrypi_register_pllb_arm.

Let's remove it, this will make our lives easier in future patches.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 48cffa44db64..61a942f9a6a2 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -40,7 +40,6 @@ struct raspberrypi_clk {
 	unsigned long max_rate;
 
 	struct clk_hw pllb;
-	struct clk_hw *pllb_arm;
 	struct clk_lookup *pllb_arm_lookup;
 };
 
@@ -246,12 +245,12 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
 		return ret;
 	}
-	rpi->pllb_arm = &raspberrypi_clk_pllb_arm.hw;
 
-	rpi->pllb_arm_lookup = clkdev_hw_create(rpi->pllb_arm, NULL, "cpu0");
+	rpi->pllb_arm_lookup = clkdev_hw_create(&raspberrypi_clk_pllb_arm.hw,
+						NULL, "cpu0");
 	if (!rpi->pllb_arm_lookup) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
-		clk_hw_unregister_fixed_factor(rpi->pllb_arm);
+		clk_hw_unregister_fixed_factor(&raspberrypi_clk_pllb_arm.hw);
 		return -ENOMEM;
 	}
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
