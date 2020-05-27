Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C711E488E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:54:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3olfZVusrx4mMnKSSMLI2Tt78ERYBLXPsUg/0fXoDRc=; b=P461iqHjWK5u3j
	EXoAGOryivYdPbpXgusQxNdcF7QRCLQLNhok+OPfDLZ9lQbB21tDa5FSc+t2GJoAEho6eYm3EiA0b
	v+rxxqPgfZx1uPsxkcKBpEGdEI7BcHdV2UUE1DJveXJFvpw3fMOxYO+3RPb7fjRA6eDiDYMuuvwLd
	Iri9BdJZWt2Lx/E/sZ+X1V09qv53EenuY6+EI/CVq0f4Wma+TGcPKRyTfGlFeeAZ7l6uvmhd3yGzr
	kIWKCYMb+hNSt9lF/Y8jKux1sRbNVGfW7PCgOle35vCv3HXrPFiXLcQpRlsHovkuCfXK/sMXK6Sl+
	et9Hlko9rXwL0NLR1GSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyOB-0003mI-9U; Wed, 27 May 2020 15:54:43 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFk-0003W5-S1; Wed, 27 May 2020 15:46:04 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A330C581DEE;
 Wed, 27 May 2020 11:45:59 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:59 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=FyUcCHOFsyuvq
 quxAGpxzLB3J1lVMUHe9bD76zXi07U=; b=rH3rHkqNdjEN0iiWeOLF4dO5FI3hf
 th/M2YLH3jRDMOjxfi1u2TmKOOo1bcBDotVnenYNCiDgVdyrjfK7XetA+QE319/7
 Syh7mr8dLpPL6xpvnzSla//63HAZaOXai1GO2DGfXs7b/VKfJXRhNfb7hPTcqJ4P
 uXnLN1u76Jdh59CuLKro7T1yL87Wz5RBaRCovZVTvWKgNcue/HTw820Ekfs3KhG1
 8raMnfydJ+uWC0I2BLaSoTy9EOKoc96A2kJzUSQqkYUks0vg2W3LATMxGBitd/Vv
 eYTSH9Ncjcreebu7IqdwwxdIcbI1bLG8gk/b0FLMg3Ft45t2Cg6YWnT1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=FyUcCHOFsyuvqquxAGpxzLB3J1lVMUHe9bD76zXi07U=; b=TuUdEJvl
 icyO9TtAjHCOHbtzft+h7JUi+dhKKdCmtf3nssyx2gYtU7tYOhJcmvkOrpp0Cx/L
 81fBGGhmGVX/or0iHFyqoK/69P0LJDVGq6NicqrMgSOB2cad+QfGJzn//gD6Bmik
 r6uvLZYzGxartGU9b2m5zvmRn566U4eakV0j0p6ToN3apWyLMPBcvPj53eGOQyEA
 u4iqOydDNplYYOWlA36iDRwKkRB+8Nqxw1Qi6lSwMiyRbyptAB2fSBD/ot0IBMHr
 Xl962aYRvcnnayNJeiAKk0W7LW3iYgOPs5bwqPgNcmiHYvAJdgf/5Vo5ZdWwu4du
 TyAs8AJgucNn2A==
X-ME-Sender: <xms:N4vOXiLRAIWsYtK1ecez4aTJFZpWI3abLk4cVtB08p5av2jlVCacHQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudekne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:N4vOXqKzi-zEtA6Mw9L8rVwhW6c45K7lziblHq8ktDDiA_QktglKVw>
 <xmx:N4vOXitgl0cTvLWCafe_2Hh2vrHmjc-sC2DRWyjY2Y9zLEm-3vbd3Q>
 <xmx:N4vOXnYAYrIJb_myLOZhVCUVkgavNw2Ue-JoXIw5eWoWUSRyzXXUlQ>
 <xmx:N4vOXnOpWkcalTsZhXSvlrjcDfaJnmW2lUT_lFeHFuddhAP48774lQ>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3D93230618C1;
 Wed, 27 May 2020 11:45:59 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 21/25] clk: bcm: rpi: Discover the firmware clocks
Date: Wed, 27 May 2020 17:45:17 +0200
Message-Id: <d3791b14fceec639085ff427e934852f275e348c.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084601_347892_EDCA0572 
X-CRM114-Status: GOOD (  17.51  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.221 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.221 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
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
 drivers/clk/bcm/clk-raspberrypi.c          | 151 ++++++++++++++++++++--
 include/soc/bcm2835/raspberrypi-firmware.h |   5 +-
 2 files changed, 144 insertions(+), 12 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index eebd16040f8a..8d3acf3ee053 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -296,6 +296,142 @@ static struct clk_hw *raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
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
+	dev_info(rpi->dev, "Clock %d frequency range: min %u, max %u\n",
+		 id, min_rate, max_rate);
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
@@ -303,7 +439,6 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rpi_firmware *firmware;
 	struct raspberrypi_clk *rpi;
-	struct clk_hw *hw;
 	int ret;
 
 	/*
@@ -340,17 +475,9 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
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
diff --git a/include/soc/bcm2835/raspberrypi-firmware.h b/include/soc/bcm2835/raspberrypi-firmware.h
index 3025aca3c358..1c48f8269eab 100644
--- a/include/soc/bcm2835/raspberrypi-firmware.h
+++ b/include/soc/bcm2835/raspberrypi-firmware.h
@@ -136,6 +136,11 @@ enum rpi_firmware_property_tag {
 	RPI_FIRMWARE_GET_DMA_CHANNELS =                       0x00060001,
 };
 
+struct rpi_firmware_get_clocks_response {
+	__le32 parent;
+	__le32 id;
+};
+
 #if IS_ENABLED(CONFIG_RASPBERRYPI_FIRMWARE)
 int rpi_firmware_property(struct rpi_firmware *fw,
 			  u32 tag, void *data, size_t len);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
