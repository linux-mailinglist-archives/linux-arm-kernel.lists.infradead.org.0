Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A5021F62C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:39:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z6/+Lq9mB2ukFrBMTxMsQGIDxGSHjfxUwKEDyZuerqA=; b=B1ZoewmRdofu2l
	XCER0f0wGHeU/23UhzaZzHlrLt5EBawAegOiLedEaP68twHJieBR+Ezs/lhRHvw12sPUfacxoDj8o
	VwZLZ1psueNOwj3qD1HLssX5SGCW0XpHww/+rXO2qzJOSgmiR3FNxeXqsHk377xLHKa5q3K7RoF8f
	XQJB7zo1C7hIspgRPhmM8OCH0qUJguiFju4ExQQ46xzGVhLcpnQfsE+kofKmjScYLBJmO5mwL1t8P
	p59+1tujtDdNKWDPVFbjDE0l294kssxxjVtk9BfCc9Apnxf78HJCJwcyfWOJfQj3Z5Z1Mm8CExS6J
	9EG6Jbpz9UKIa3fec1ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHoH-0001E9-82; Thu, 11 Jun 2020 07:39:37 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhn-0001l0-CK; Thu, 11 Jun 2020 07:32:57 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 64E125800D1;
 Thu, 11 Jun 2020 03:32:54 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:54 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=yVVGExq2LXyZ6
 itpNsa1bjBxDB/H8fNQvEDoqvH8xe0=; b=GAPHrVSaTPecdEidWfMp33W+mQXXk
 7OnCAcj86SIm2yuUFKaZZ/o9Mcd0p7IBH05r7tFf9bZt05gm7DmydBQPH/dqryIy
 dWt2UnwaPm0FmeIB3OWFbrJijhmp0sGA8Ftsy7trhD3YtcIFY9O5MqzOjEwNQIVj
 EEUBiCurxm93txFQiD5szNECwJwI7AA8+uz/DP14og/+hHAE7ST5aKSg9iCOteIA
 wg55r7yZfto5KiV6TXPLX4xhm9ROhf1I8Cq634fL37Q409ox/Z5HRun2nxZa2s1g
 Ohi3X41j0YDH8IjDqEXG0AmsELH43ioMGZUczizOUIDBRbsSq1g3sfYnw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=yVVGExq2LXyZ6itpNsa1bjBxDB/H8fNQvEDoqvH8xe0=; b=ruTww2DS
 xFSAXjEb1ar29s6P1WYabWyZe1rB9pLbPq2yjzB/T3g7BMd27phehUy+es2RB1nS
 f0IJja/75TJABIbKKNzXL7cxaFCoUShxuk4iVLXrNg8ACH0yBWKhNSvVgzSKdUwY
 NSK9wrk40skTY+YQ+qKEOf3AMJk5SNi6AdzWTBgaRpGGu7RL4Pq4SjNoKrEFnQoD
 OvRg2vLKo26eR/LXh6Ib/M+WyjzOwN2jaFq6JQnuGffhyJ34wBk3cZobOL7TQjXi
 QwO4kvVXpp/QBAGCPV2PvI8EFeJ5LsTmgIIdUyeXTQ3Z2tmVjcKFUe8TtNJZqU32
 3lDwNBkyzUoDuw==
X-ME-Sender: <xms:Jt7hXhA4lZCJ7HVavqhiWEDzzpfiOuV4ZIEgzCiCI5pk3lkhZjwGuQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduie
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:Jt7hXvhanXa23rX5-3OVqqRBQ_DJzw8u-kghwMRwUf1ZsSv57cLNdg>
 <xmx:Jt7hXsnjusSRQ34PBxBY7RPePc6NJ5HT1iTXS79lVbGuSe1pBQETRw>
 <xmx:Jt7hXrz-aDxX8PjjxfJkmmp5Hgb0K3HAk60AQ6Q1ruP2LhNj40MBbQ>
 <xmx:Jt7hXpFQ_jdPCer3LHIzjNWb9UCmaPHa3YLNuMoRrctc7tINMwYg4Q>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id F2B1E3061856;
 Thu, 11 Jun 2020 03:32:53 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 21/27] clk: bcm: rpi: Discover the firmware clocks
Date: Thu, 11 Jun 2020 09:32:10 +0200
Message-Id: <40ab5a9718000636a513d374e7579e2d2b57f961.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003255_626277_C0450F12 
X-CRM114-Status: GOOD (  16.89  )
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

The RaspberryPi4 firmware actually exposes more clocks than are currently
handled by the driver and we will need to change some of them directly
based on the pixel rate for the display related clocks, or the load for the
GPU.

Since the firmware implements DVFS, this rate change can have a number of
side-effects, including adjusting the various PLL voltages or the PLL
parents. The firmware also implements thermal throttling, so even some
thermal pressure can change those parameters behind Linux back.

DVFS is currently implemented on the arm, core, h264, v3d, isp and hevc
clocks, so updating any of them using the MMIO driver (and thus behind the
firmware's back) can lead to troubles, the arm clock obviously being the
most problematic.

In order to make Linux play as nice as possible with those constraints, it
makes sense to rely on the firmware clocks as much as possible. However,
the firmware doesn't seem to provide some equivalents to their MMIO
counterparts, so we can't really replace that driver entirely.

Fortunately, the firmware has an interface to discover the clocks it
exposes.

Let's use it to discover, register the clocks in the clocks framework and
then expose them through the device tree for consumers to use them.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 153 ++++++++++++++++++++++++++++---
 1 file changed, 141 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index eebd16040f8a..11a62bde5203 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -296,6 +296,144 @@ static struct clk_hw *raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 	return &raspberrypi_clk_pllb_arm.hw;
 }
 
+static int raspberrypi_fw_dumb_determine_rate(struct clk_hw *hw,
+					      struct clk_rate_request *req)
+{
+	/*
+	 * The firmware will do the rounding but that isn't part of
+	 * the interface with the firmware, so we just do our best
+	 * here.
+	 */
+	req->rate = clamp(req->rate, req->min_rate, req->max_rate);
+	return 0;
+}
+
+static const struct clk_ops raspberrypi_firmware_clk_ops = {
+	.is_prepared	= raspberrypi_fw_is_prepared,
+	.recalc_rate	= raspberrypi_fw_get_rate,
+	.determine_rate	= raspberrypi_fw_dumb_determine_rate,
+	.set_rate	= raspberrypi_fw_set_rate,
+};
+
+static struct clk_hw *raspberrypi_clk_register(struct raspberrypi_clk *rpi,
+					       unsigned int parent,
+					       unsigned int id)
+{
+	struct raspberrypi_clk_data *data;
+	struct clk_init_data init = {};
+	u32 min_rate, max_rate;
+	int ret;
+
+	if (id == RPI_FIRMWARE_ARM_CLK_ID) {
+		struct clk_hw *hw;
+
+		hw = raspberrypi_register_pllb(rpi);
+		if (IS_ERR(hw)) {
+			dev_err(rpi->dev, "Failed to initialize pllb, %ld\n",
+				PTR_ERR(hw));
+			return hw;
+		}
+
+		return raspberrypi_register_pllb_arm(rpi);
+	}
+
+	data = devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
+	if (!data)
+		return ERR_PTR(-ENOMEM);
+	data->rpi = rpi;
+	data->id = id;
+
+	init.name = devm_kasprintf(rpi->dev, GFP_KERNEL, "fw-clk-%u", id);
+	init.ops = &raspberrypi_firmware_clk_ops;
+	init.flags = CLK_GET_RATE_NOCACHE;
+
+	data->hw.init = &init;
+
+	ret = raspberrypi_clock_property(rpi->firmware, data,
+					 RPI_FIRMWARE_GET_MIN_CLOCK_RATE,
+					 &min_rate);
+	if (ret) {
+		dev_err(rpi->dev, "Failed to get clock %d min freq: %d",
+			id, ret);
+		return ERR_PTR(ret);
+	}
+
+	ret = raspberrypi_clock_property(rpi->firmware, data,
+					 RPI_FIRMWARE_GET_MAX_CLOCK_RATE,
+					 &max_rate);
+	if (ret) {
+		dev_err(rpi->dev, "Failed to get clock %d max freq: %d\n",
+			id, ret);
+		return ERR_PTR(ret);
+	}
+
+	ret = devm_clk_hw_register(rpi->dev, &data->hw);
+	if (ret)
+		return ERR_PTR(ret);
+
+	clk_hw_set_rate_range(&data->hw, min_rate, max_rate);
+
+	if (id == RPI_FIRMWARE_ARM_CLK_ID) {
+		ret = devm_clk_hw_register_clkdev(rpi->dev, &data->hw,
+						  NULL, "cpu0");
+		if (ret) {
+			dev_err(rpi->dev, "Failed to initialize clkdev\n");
+			return ERR_PTR(ret);
+		}
+	}
+
+	return &data->hw;
+}
+
+struct rpi_firmware_get_clocks_response {
+	u32 parent;
+	u32 id;
+};
+
+static int raspberrypi_discover_clocks(struct raspberrypi_clk *rpi,
+				       struct clk_hw_onecell_data *data)
+{
+	struct rpi_firmware_get_clocks_response *clks;
+	int ret;
+
+	clks = devm_kcalloc(rpi->dev,
+			    sizeof(*clks), RPI_FIRMWARE_NUM_CLK_ID,
+			    GFP_KERNEL);
+	if (!clks)
+		return -ENOMEM;
+
+	ret = rpi_firmware_property(rpi->firmware, RPI_FIRMWARE_GET_CLOCKS,
+				    clks,
+				    sizeof(*clks) * RPI_FIRMWARE_NUM_CLK_ID);
+	if (ret)
+		return ret;
+
+	while (clks->id) {
+		struct clk_hw *hw;
+
+		switch (clks->id) {
+		case RPI_FIRMWARE_ARM_CLK_ID:
+		case RPI_FIRMWARE_CORE_CLK_ID:
+		case RPI_FIRMWARE_M2MC_CLK_ID:
+		case RPI_FIRMWARE_V3D_CLK_ID:
+			hw = raspberrypi_clk_register(rpi, clks->parent,
+						      clks->id);
+			if (IS_ERR(hw))
+				return PTR_ERR(hw);
+
+			data->hws[clks->id] = hw;
+			data->num = clks->id + 1;
+			fallthrough;
+
+		default:
+			clks++;
+			break;
+		}
+	}
+
+	return 0;
+}
+
 static int raspberrypi_clk_probe(struct platform_device *pdev)
 {
 	struct clk_hw_onecell_data *clk_data;
@@ -303,7 +441,6 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rpi_firmware *firmware;
 	struct raspberrypi_clk *rpi;
-	struct clk_hw *hw;
 	int ret;
 
 	/*
@@ -340,17 +477,9 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	if (!clk_data)
 		return -ENOMEM;
 
-	hw = raspberrypi_register_pllb(rpi);
-	if (IS_ERR(hw)) {
-		dev_err(dev, "Failed to initialize pllb, %ld\n", PTR_ERR(hw));
-		return PTR_ERR(hw);
-	}
-
-	hw = raspberrypi_register_pllb_arm(rpi);
-	if (IS_ERR(hw))
-		return PTR_ERR(hw);
-	clk_data->hws[RPI_FIRMWARE_ARM_CLK_ID] = hw;
-	clk_data->num = RPI_FIRMWARE_ARM_CLK_ID + 1;
+	ret = raspberrypi_discover_clocks(rpi, clk_data);
+	if (ret)
+		return ret;
 
 	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
 					  clk_data);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
