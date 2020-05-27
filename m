Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A2891E4881
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BLuzXuxRhyaVa/wsYbkz3ZMOyvXv9EAPNareXLcWBLI=; b=qfGTMJmnF+Cgtk
	0NQsSHLnrlJS98jr3j3BoMmxFN8vDNYCFdRAuAP0X1z2dbB69bWspiwWbWlvnZTURe7UD0hy5vBFk
	udA80Az4vR53letITD2S+STnZvq4X0h9FMBYObZi4G3D3NdJGCnpU3xlb1y+W9T/GZUhYqqodv4Fa
	+w6J0MwkPFXM/XxJMdSRayogdUmKVzhq7vamUv1D8pA9B3rNotr7eeUPG5dHvUUBf+UZVrc1rxuLv
	Ta2Z//atrVW1/yPrswD/8ko8NjKxa8IO2lSSsW0hcGSOq5NUZ452IlqPmkPYVtsQeNzWnMjIX4pcn
	wRIcqcljQwwQtYBkqW7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyNW-0003CI-L8; Wed, 27 May 2020 15:54:02 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFf-0003On-NV; Wed, 27 May 2020 15:45:57 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 0C31C581DF4;
 Wed, 27 May 2020 11:45:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=llHhktEnA6XGb
 o/RLB+HslRNzJaroZgdUrVgU1ImKpI=; b=hJtpR02B/Bfmgx6v7/SKp0dBT0CSM
 jogUA9TLgh4cLlLvGOLsqjEN4aDj6qGDXGWBMUpPKAxAvKMB+UE3I1O9xL5crbxH
 aG3b+eWhjQH+3n9Mg8A3RCmo7Le/sKajiIUxfOTi3wXHi1Yvg6m3Ebaw24WJH1az
 KwGuflSBeQPkMJpb+MZHK/mgxQLwaSI9nbWl8LbW7x1EQhca9KbtwsVbyeIcVWsT
 MtIxwmac209eEE2uViiXOwN3Xr3GQ4KzhdprzMZ1Ok1WFX+VovzKM7qZipmwVdn9
 mSRlU5YmniIa4DXENOkXj3dc0Y+cgPLi27y7V0AV+lYQDmZG3v/pz+guQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=llHhktEnA6XGbo/RLB+HslRNzJaroZgdUrVgU1ImKpI=; b=jb+n64ON
 fKDjl+hfdYtg70zR8iFikKWodavWYrowk+tDZ1eIHJuAieGeZCx79yuZ+BUMnK8g
 jUkWv8mbs+8qZP1PQ26wt3EHVSpGtzRymzhCEfg9iVt6d/MO2/7Nd/jEne+rAR8C
 iUucGq+pw3lqd/e10Fw3etjDxH02d1FtKjonY1xFzD9nhazLXjXpmNGcaNU9Si7O
 /DiQZ3HC+XhB03VO+fMEjnQTFXZ/GIxdGH6ggdQiZPEo3Hg8ouvpVJGd85JAGe8R
 N6qMMpWsmXHD8vl23VG8bPsVgXmULpOnCQscI8HxSdyXGGy6kyPNC6wMEw6YDx57
 7bOksVEf8JZJXA==
X-ME-Sender: <xms:MovOXo-Ip041VJzt0JObfwp3qlvuWYJB8Ru_axmTlpiQ5dc0kHpXig>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudegne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:MovOXgu7zy_rv33laxd8Ekkn2gPNxVu2pKNueFZAcCqc9i9ZsQgTtQ>
 <xmx:MovOXuDdAu1MxVt5v61u_VYborR5P79Wpj36E7qG3sOKW8vUvR8cpQ>
 <xmx:MovOXock84xytEXoixH4j7yYMZocoKo0yJW41J0WPb2SUaJS-sKWCQ>
 <xmx:M4vOXmj-pPT-rxiI9-lmpInGyoC6am9miLZ9BpK3D26sDZa0BOo-yg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 9D0933280064;
 Wed, 27 May 2020 11:45:54 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 18/25] clk: bcm: rpi: Make the PLLB registration function
 return a clk_hw
Date: Wed, 27 May 2020 17:45:14 +0200
Message-Id: <be60ef4f29c929e633363a4473aa119f69ace7a0.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084555_920823_0CED6C13 
X-CRM114-Status: GOOD (  12.66  )
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

The raspberrypi_register_pllb has been returning an integer so far to
notify whether the functions has exited successfully or not.

However, the OF provider functions in the clock framework require access to
the clk_hw structure so that we can expose those clocks to device tree
consumers.

Since we'll want that for the future clocks, let's return a clk_hw pointer
instead of the return code.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 46 ++++++++++++++++----------------
 1 file changed, 24 insertions(+), 22 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 19571602ba64..d2cb90c086a7 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -186,7 +186,7 @@ static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
 	.determine_rate = raspberrypi_pll_determine_rate,
 };
 
-static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
+static struct clk_hw *raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 {
 	struct raspberrypi_clk_data *data;
 	struct clk_init_data init = {};
@@ -195,7 +195,7 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 
 	data = devm_kzalloc(rpi->dev, sizeof(*data), GFP_KERNEL);
 	if (!data)
-		return -ENOMEM;
+		return ERR_PTR(-ENOMEM);
 	data->rpi = rpi;
 	data->id = RPI_FIRMWARE_ARM_CLK_ID;
 
@@ -213,7 +213,7 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	if (ret) {
 		dev_err(rpi->dev, "Failed to get %s min freq: %d\n",
 			init.name, ret);
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	ret = raspberrypi_clock_property(rpi->firmware, data,
@@ -222,13 +222,13 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	if (ret) {
 		dev_err(rpi->dev, "Failed to get %s max freq: %d\n",
 			init.name, ret);
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	if (!min_rate || !max_rate) {
 		dev_err(rpi->dev, "Unexpected frequency range: min %u, max %u\n",
 			min_rate, max_rate);
-		return -EINVAL;
+		return ERR_PTR(-EINVAL);
 	}
 
 	dev_info(rpi->dev, "CPU frequency range: min %u, max %u\n",
@@ -237,12 +237,14 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	data->hw.init = &init;
 
 	ret = devm_clk_hw_register(rpi->dev, &data->hw);
-	if (!ret)
-		clk_hw_set_rate_range(&data->hw,
-				      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
-				      max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE);
+	if (ret)
+		return ERR_PTR(ret);
 
-	return ret;
+	clk_hw_set_rate_range(&data->hw,
+			      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
+			      max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE);
+
+	return &data->hw;
 }
 
 static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
@@ -257,14 +259,14 @@ static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
 	},
 };
 
-static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
+static struct clk_hw *raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
 	int ret;
 
 	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
-		return ret;
+		return ERR_PTR(ret);
 	}
 
 	ret = devm_clk_hw_register_clkdev(rpi->dev,
@@ -272,10 +274,10 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 					  NULL, "cpu0");
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize clkdev\n");
-		return ret;
+		return ERR_PTR(ret);
 	}
 
-	return 0;
+	return &raspberrypi_clk_pllb_arm.hw;
 }
 
 static int raspberrypi_clk_probe(struct platform_device *pdev)
@@ -284,7 +286,7 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct rpi_firmware *firmware;
 	struct raspberrypi_clk *rpi;
-	int ret;
+	struct clk_hw *hw;
 
 	/*
 	 * We can be probed either through the an old-fashioned
@@ -314,15 +316,15 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	rpi->firmware = firmware;
 	platform_set_drvdata(pdev, rpi);
 
-	ret = raspberrypi_register_pllb(rpi);
-	if (ret) {
-		dev_err(dev, "Failed to initialize pllb, %d\n", ret);
-		return ret;
+	hw = raspberrypi_register_pllb(rpi);
+	if (IS_ERR(hw)) {
+		dev_err(dev, "Failed to initialize pllb, %ld\n", PTR_ERR(hw));
+		return PTR_ERR(hw);
 	}
 
-	ret = raspberrypi_register_pllb_arm(rpi);
-	if (ret)
-		return ret;
+	hw = raspberrypi_register_pllb_arm(rpi);
+	if (IS_ERR(hw))
+		return PTR_ERR(hw);
 
 	rpi->cpufreq = platform_device_register_data(dev, "raspberrypi-cpufreq",
 						     -1, NULL, 0);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
