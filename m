Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E29381F62D0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:41:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IgyOPiq+bL1UAvdhERGhoxnAS1QqL/k9u52lfL0elfE=; b=N3t80jK2uw1rna
	QfBfD7TVp4Ye1jFl5PUeM/E9n4zlNbnq2cfUMNHCbrDQ0eqzwVzNYIohr9GN3kkC1fdqcZVMMU3Qr
	OE5HDrKNZoatAOIBLUApckRoYOISkGL7z6MJVFEI48SlDA5w4KO5IcDw3FbzJxn1oXQzTCOCsPWaB
	CDmMWshKQic1SH/szA0NAsHKyKAPORzx3Q98dFQST7cbvTNO0b3EC7TZ1oLvoGWBR3cd5kz7CwiI4
	mgT4uVsuoR0GsH9vchjpMinEOrLPm/9Lgsw+yBCTdA34XNzPxFI7Aw9JHWF2aNQs6rPLDtmhszvAy
	muuhF9pRHoEQMddtUIQg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHq9-0005CN-2L; Thu, 11 Jun 2020 07:41:33 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhw-0001sR-Hm; Thu, 11 Jun 2020 07:33:06 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C9CFF5800D2;
 Thu, 11 Jun 2020 03:33:03 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:33:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=PmshlOamYtLHW
 O6/jfOTQt1gUqDsIWH25IGLKI71Rqs=; b=P7VuZqKuHezNZvKMDlC7ywS8mG/kB
 SaSCRjxtuI7S4UlU13eMd5tJ/6DwYzi0hCAOaDY+zWDLh0sPNt/fneqEPNK4DQNC
 OF0UGqEQSRjRS31sNVw/qHzTFVdqp01TLqEfQGxbuRRtIpbnl0L07uKaLKa5TMSh
 7OjYfdtDCK2yWnPVNGQM4SDIJDzJRPIgrreVUADRccQYRn0kRqPCGTNpJBfsTIdT
 z29dB6hYowhwhv5/9OaGIDzHi97UaqgD/Xzt6MyjhdjlVAJV8cUkPTVxm7cn1YYc
 3n+l+f1Enl3Dl0PsuwAX7yip0H9QxVbiCXaQqpmdI29q8/KrP6cZWkr8Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=PmshlOamYtLHWO6/jfOTQt1gUqDsIWH25IGLKI71Rqs=; b=C+8f8q4c
 oUFpVBS5syX+VyU3eMWxbApL9sersNbv3Vc7r9YHVCl1cLc7bOnHeuJw2dIhDHv6
 DgJ6Nw87+AvuBPTx9SaY0K7x+PIs3QfxwLDq5K7GzjxbBaegN99GoFRuK4PJpVh+
 ypUk9EoI6UYf5dJOmTdj7HIOHzYy1JFH7cVls86kJeroNLqPA0dL6p+atPbhzZ34
 eXsrd1Ps5giN3KrTPGr+Pg4Vp+0ppVzz3XOsNlWaw9OFJJPj6ajhPdblyta1lJvJ
 xi9T7RUJo6bIWzNFxrNeiefoc9qJ+BvPChlWx+3/BoNG2MdYdKxxpOVIvAbWzj3T
 nBYHDDZojDFxWg==
X-ME-Sender: <xms:L97hXjQvKxMU2uxAmCriiagwCE8e0Rz1rq72fS-AqDAMbOhdaO9-2g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvge
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:L97hXkztsdkhbH676-8HOEkEE9LbYhziP5GMYBoSal4ClPEvsUgGkQ>
 <xmx:L97hXo2pZC0e3AKm1DsiY0ADc5Mwc00sUcYbcz_16p8sqzIX-xuvlA>
 <xmx:L97hXjBLEJ0gE_MuokQ4N6a6YsVoL8o4W87u_alDXyM82tymOsKT2Q>
 <xmx:L97hXlUPdTuGa9ns_Wify4QD3ZmFJgdGLzISoHVAh4KEn8TkT2QFzQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 78E8630618C1;
 Thu, 11 Jun 2020 03:33:03 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 27/27] clk: bcm: rpi: Remove the quirks for the CPU clock
Date: Thu, 11 Jun 2020 09:32:16 +0200
Message-Id: <a636a413f26014901ff1acb8df046049a79c4c6d.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003304_751212_057340FC 
X-CRM114-Status: GOOD (  12.85  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The CPU clock has had so far a bunch of quirks to expose the clock tree
properly, but since we reverted to exposing them through the MMIO driver,
we can remove that code from the firmware driver.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 164 +-------------------------------
 1 file changed, 164 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index adc0bb56008a..5cc82954e1ce 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -56,14 +56,6 @@ static char *rpi_firmware_clk_names[] = {
 #define RPI_FIRMWARE_STATE_ENABLE_BIT	BIT(0)
 #define RPI_FIRMWARE_STATE_WAIT_BIT	BIT(1)
 
-/*
- * Even though the firmware interface alters 'pllb' the frequencies are
- * provided as per 'pllb_arm'. We need to scale before passing them trough.
- */
-#define RPI_FIRMWARE_PLLB_ARM_DIV_RATE	2
-
-#define A2W_PLL_FRAC_BITS		20
-
 struct raspberrypi_clk {
 	struct device *dev;
 	struct rpi_firmware *firmware;
@@ -152,13 +144,6 @@ static unsigned long raspberrypi_fw_get_rate(struct clk_hw *hw,
 	return val;
 }
 
-static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
-						 unsigned long parent_rate)
-{
-	return raspberrypi_fw_get_rate(hw, parent_rate) *
-		RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
-}
-
 static int raspberrypi_fw_set_rate(struct clk_hw *hw, unsigned long rate,
 				   unsigned long parent_rate)
 {
@@ -177,142 +162,6 @@ static int raspberrypi_fw_set_rate(struct clk_hw *hw, unsigned long rate,
 	return ret;
 }
 
-static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
-				       unsigned long parent_rate)
-{
-	u32 new_rate = rate / RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
-
-	return raspberrypi_fw_set_rate(hw, new_rate, parent_rate);
-}
-
-/*
- * Sadly there is no firmware rate rounding interface. We borrowed it from
- * clk-bcm2835.
- */
-static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
-					  struct clk_rate_request *req)
-{
-	u64 div, final_rate;
-	u32 ndiv, fdiv;
-
-	/* We can't use req->rate directly as it would overflow */
-	final_rate = clamp(req->rate, req->min_rate, req->max_rate);
-
-	div = (u64)final_rate << A2W_PLL_FRAC_BITS;
-	do_div(div, req->best_parent_rate);
-
-	ndiv = div >> A2W_PLL_FRAC_BITS;
-	fdiv = div & ((1 << A2W_PLL_FRAC_BITS) - 1);
-
-	final_rate = ((u64)req->best_parent_rate *
-					((ndiv << A2W_PLL_FRAC_BITS) + fdiv));
-
-	req->rate = final_rate >> A2W_PLL_FRAC_BITS;
-
-	return 0;
-}
-
-static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
-	.is_prepared = raspberrypi_fw_is_prepared,
-	.recalc_rate = raspberrypi_fw_pll_get_rate,
-	.set_rate = raspberrypi_fw_pll_set_rate,
-	.determine_rate = raspberrypi_pll_determine_rate,
-};
-
-static struct clk_hw *raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
-{
-	struct raspberrypi_clk_data *data;
-	struct clk_init_data init = {};
-	u32 min_rate = 0, max_rate = 0;
-	int ret;
-
-	data = devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
-	if (!data)
-		return ERR_PTR(-ENOMEM);
-	data->rpi = rpi;
-	data->id = RPI_FIRMWARE_ARM_CLK_ID;
-
-	/* All of the PLLs derive from the external oscillator. */
-	init.parent_names = (const char *[]){ "osc" };
-	init.num_parents = 1;
-	init.name = "pllb";
-	init.ops = &raspberrypi_firmware_pll_clk_ops;
-	init.flags = CLK_GET_RATE_NOCACHE | CLK_IGNORE_UNUSED;
-
-	/* Get min & max rates set by the firmware */
-	ret = raspberrypi_clock_property(rpi->firmware, data,
-					 RPI_FIRMWARE_GET_MIN_CLOCK_RATE,
-					 &min_rate);
-	if (ret) {
-		dev_err(rpi->dev, "Failed to get %s min freq: %d\n",
-			init.name, ret);
-		return ERR_PTR(ret);
-	}
-
-	ret = raspberrypi_clock_property(rpi->firmware, data,
-					 RPI_FIRMWARE_GET_MAX_CLOCK_RATE,
-					 &max_rate);
-	if (ret) {
-		dev_err(rpi->dev, "Failed to get %s max freq: %d\n",
-			init.name, ret);
-		return ERR_PTR(ret);
-	}
-
-	if (!min_rate || !max_rate) {
-		dev_err(rpi->dev, "Unexpected frequency range: min %u, max %u\n",
-			min_rate, max_rate);
-		return ERR_PTR(-EINVAL);
-	}
-
-	dev_info(rpi->dev, "CPU frequency range: min %u, max %u\n",
-		 min_rate, max_rate);
-
-	data->hw.init = &init;
-
-	ret = devm_clk_hw_register(rpi->dev, &data->hw);
-	if (ret)
-		return ERR_PTR(ret);
-
-	clk_hw_set_rate_range(&data->hw,
-			      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
-			      max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE);
-
-	return &data->hw;
-}
-
-static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
-	.mult = 1,
-	.div = 2,
-	.hw.init = &(struct clk_init_data) {
-		.name		= "pllb_arm",
-		.parent_names	= (const char *[]){ "pllb" },
-		.num_parents	= 1,
-		.ops		= &clk_fixed_factor_ops,
-		.flags		= CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
-	},
-};
-
-static struct clk_hw *raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
-{
-	int ret;
-
-	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
-	if (ret) {
-		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
-		return ERR_PTR(ret);
-	}
-
-	ret = devm_clk_hw_register_clkdev(rpi->dev,
-					  &raspberrypi_clk_pllb_arm.hw,
-					  NULL, "cpu0");
-	if (ret) {
-		dev_err(rpi->dev, "Failed to initialize clkdev\n");
-		return ERR_PTR(ret);
-	}
-
-	return &raspberrypi_clk_pllb_arm.hw;
-}
-
 static int raspberrypi_fw_dumb_determine_rate(struct clk_hw *hw,
 					      struct clk_rate_request *req)
 {
@@ -341,19 +190,6 @@ static struct clk_hw *raspberrypi_clk_register(struct raspberrypi_clk *rpi,
 	u32 min_rate, max_rate;
 	int ret;
 
-	if (id == RPI_FIRMWARE_ARM_CLK_ID) {
-		struct clk_hw *hw;
-
-		hw = raspberrypi_register_pllb(rpi);
-		if (IS_ERR(hw)) {
-			dev_err(rpi->dev, "Failed to initialize pllb, %ld\n",
-				PTR_ERR(hw));
-			return hw;
-		}
-
-		return raspberrypi_register_pllb_arm(rpi);
-	}
-
 	data = devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
 	if (!data)
 		return ERR_PTR(-ENOMEM);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
