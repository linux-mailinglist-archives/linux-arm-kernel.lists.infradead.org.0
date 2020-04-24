Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 548AC1B79C9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:41:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nShFHKKEJIeFbtQP/cg+32YS8z0zeOvFfkBwPB9X2Bo=; b=FGra1zgI0btp6D
	xYxJIoop6jVvYgn5aNMS0jlsFDl0OvUhhF1V6wsAojx2LehZNkQGuQeBh4Z7dqKaPBlBYMl/OPkRk
	oCANpuTexOAJnHyZOH5dx4z4GnbX+ZuGGpYPwewFCko6DDycwdscTZOcxXpPFnWcTthsNUxeMiX9g
	pKUQeMqqj/va/YkoP/FLVa7voGO0HgpGY/4GSNsq2qiM+EnCzD1A20lBO9lG79HtYUJm7nTi3A2B1
	3KRJ1kNkZ++QDiqU7LGOgQuUH4SyWD/+DjFzMY0K57nElQ0JwR1GVBh53Aadbmo6OirQU0d1Kmros
	3y0Eqpn3heldoz4kAKjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0SU-000646-DW; Fri, 24 Apr 2020 15:41:42 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mg-0007Xi-Ln; Fri, 24 Apr 2020 15:35:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 4273621A;
 Fri, 24 Apr 2020 11:35:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:42 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=VdIE8VV8/4tPH
 yRsnU1e4c2UT3CItJDQlPnmfU8Ws9A=; b=wsDs2BJPu3FD7dgeHilbrYFK3N1sr
 Qm3xVXhTU5ESKrCnMbZdMWUlzOX5+OvrOIdR6aoQQaGuzhtVBArDctj3thysJbS9
 GT/pyLuvfegA7NsvXzhVKtH+/a2QmLrKbtZUk+4zOYRAqjOM2P+jIA34TjKizrae
 XCoHk5hwphcFxxXawWyqqpD0HFQsRb42NPo/ORwe4tMxfarGTqow1AY3ziLvyOhJ
 HFNayv0hT5eF46bkIC4emyNlXYXjuPo4NjBHTxLFgF+W9OM1KyBPntLuBBW1Uuj8
 P6zDAY03klJqOqpGcE5I7UVJUyLud6imTiRUYGfsx/r4x6erszoNgZZ+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=VdIE8VV8/4tPHyRsnU1e4c2UT3CItJDQlPnmfU8Ws9A=; b=IddjD+MQ
 SEfKCu+6Ci1qUIZqf/lPXa4pJhpzJ90IqpOw2GpJeg/rqOpU0R6ywXjKmAlr5aqy
 zv2BdfzbXLnew8sKVM8f9Ha+NVqCCDHgygCI4RejQWPfLqv78e7tWUK7KKweYroe
 5ho2j+BEY+AK8aJRWAh6nOABliPMl4IueHB07J3Y07gLaGctQQ2B+PAoQLMzClui
 zOnRFe+cz/HQ9MJJZ0ftQXnYcwfYtOXfc4PXIU5BV/n/ODVv735cIul1yQ76kqln
 gsrYIRABfYkvHCgXM6PHm79zk/6iizOfYXrchGeFaeSKVGM/6BDkisP0XdFh8ret
 6t6weqZN0rXSfg==
X-ME-Sender: <xms:TAejXlJSXTMvqza1vDy2DyOTCf7YRujnnw53dGab7kEEPaFoQMPS-Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduudenucfrrghrrghmpehmrghi
 lhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:TAejXj_9SH4d-AArp3boKV2il2wqhcJPQCV-2kOUIw2HOX2Zz1CkhA>
 <xmx:TAejXpJHnwLp_EEOp5PeyQpV72rIQzlyB0mE0Uov0RF0Ze-ns73Wug>
 <xmx:TAejXh9MHveRQf53TUTe32Qnh7fW6MLhqUkoJO1fsRPQ23nPp0jlDw>
 <xmx:TAejXqT7WYTAOJVnOu_65NqEnq2edrrS5PlAm7UmJ3YGRgYm7HGzaVRLUm0>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 94E993065DA4;
 Fri, 24 Apr 2020 11:35:40 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 13/91] clk: bcm: rpi: Create a data structure for the clocks
Date: Fri, 24 Apr 2020 17:33:54 +0200
Message-Id: <a6540fe73db6be84a2b64b898b9b739a55f15307.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083542_798509_B7BB16B2 
X-CRM114-Status: GOOD (  12.58  )
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

So far the driver has really only been providing a single clock, and stored
both the data associated to that clock in particular with the data
associated to the "controller".

Since we will change that in the future, let's decouple the clock data from
the provider data.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 40 ++++++++++++++++++++------------
 1 file changed, 26 insertions(+), 14 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index eb5c4f5720e8..75197d8574cf 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -35,11 +35,15 @@ struct raspberrypi_clk {
 	struct device *dev;
 	struct rpi_firmware *firmware;
 	struct platform_device *cpufreq;
+};
+
+struct raspberrypi_clk_data {
+	struct clk_hw hw;
 
 	unsigned long min_rate;
 	unsigned long max_rate;
 
-	struct clk_hw pllb;
+	struct raspberrypi_clk *rpi;
 };
 
 /*
@@ -83,8 +87,9 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware, u32 tag,
 
 static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
 {
-	struct raspberrypi_clk *rpi = container_of(hw, struct raspberrypi_clk,
-						   pllb);
+	struct raspberrypi_clk_data *data =
+		container_of(hw, struct raspberrypi_clk_data, hw);
+	struct raspberrypi_clk *rpi = data->rpi;
 	u32 val = 0;
 	int ret;
 
@@ -101,8 +106,9 @@ static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
 static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
 						 unsigned long parent_rate)
 {
-	struct raspberrypi_clk *rpi = container_of(hw, struct raspberrypi_clk,
-						   pllb);
+	struct raspberrypi_clk_data *data =
+		container_of(hw, struct raspberrypi_clk_data, hw);
+	struct raspberrypi_clk *rpi = data->rpi;
 	u32 val = 0;
 	int ret;
 
@@ -119,8 +125,9 @@ static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
 static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 				       unsigned long parent_rate)
 {
-	struct raspberrypi_clk *rpi = container_of(hw, struct raspberrypi_clk,
-						   pllb);
+	struct raspberrypi_clk_data *data =
+		container_of(hw, struct raspberrypi_clk_data, hw);
+	struct raspberrypi_clk *rpi = data->rpi;
 	u32 new_rate = rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
 	int ret;
 
@@ -142,13 +149,13 @@ static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
 					  struct clk_rate_request *req)
 {
-	struct raspberrypi_clk *rpi = container_of(hw, struct raspberrypi_clk,
-						   pllb);
+	struct raspberrypi_clk_data *data =
+		container_of(hw, struct raspberrypi_clk_data, hw);
 	u64 div, final_rate;
 	u32 ndiv, fdiv;
 
 	/* We can't use req->rate directly as it would overflow */
-	final_rate = clamp(req->rate, rpi->min_rate, rpi->max_rate);
+	final_rate = clamp(req->rate, data->min_rate, data->max_rate);
 
 	div = (u64)final_rate << A2W_PLL_FRAC_BITS;
 	do_div(div, req->best_parent_rate);
@@ -173,10 +180,15 @@ static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
 
 static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 {
+	struct raspberrypi_clk_data *data;
 	struct clk_init_data init = {};
 	u32 min_rate = 0, max_rate = 0;
 	int ret;
 
+	data = devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return -ENOMEM;
+	data->rpi = rpi;
 
 	/* All of the PLLs derive from the external oscillator. */
 	init.parent_names = (const char *[]){ "osc" };
@@ -215,12 +227,12 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	dev_info(rpi->dev, "CPU frequency range: min %u, max %u\n",
 		 min_rate, max_rate);
 
-	rpi->min_rate = min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
-	rpi->max_rate = max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+	data->min_rate = min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
+	data->max_rate = max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
 
-	rpi->pllb.init = &init;
+	data->hw.init = &init;
 
-	return devm_clk_hw_register(rpi->dev, &rpi->pllb);
+	return devm_clk_hw_register(rpi->dev, &data->hw);
 }
 
 static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
