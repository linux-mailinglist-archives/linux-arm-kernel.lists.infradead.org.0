Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 239971F62C3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:39:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cScdIGCNZX2O+3dg0FCEdwsI7WmpliFPombSuVsA/xw=; b=Bcj3ABqVHH7jtY
	jZ7ffpPnANNUrNdqHUkwd49I7C9otWxREE3E9agz0rrwsmjBH/PQUpaONSxKOx3pTtBn3PWuKb6U1
	s5RiSF76Tt3dJA6Nthq94aGIXxqurvY2D1DstUA3B9oS8Nv76EJUOOa6uE9dZWPujHrBT5o/BAlfU
	DEa2Xr0g0enrjqbGARf47WZUFMUZZNp2DrCGChifKj+pu3d1ApXnb80cVufDKixSdJnBpXTfR6cLl
	aNvHMj0NfhwCi8F/RoTJ4EdPrdPdDeLDIxBf/e1j6xT6IPpuL+fDSFn4zEhGuZQQ44J0jNjrs77Wa
	940h1W7psIFy1MWwn94g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHne-0000Z3-0C; Thu, 11 Jun 2020 07:38:58 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhk-0001ht-78; Thu, 11 Jun 2020 07:32:53 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 386535800D1;
 Thu, 11 Jun 2020 03:32:51 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=vOye5Ojf6Pz67
 EFbXOJLbRGjP3SfY7Wh3y7/T5vyRcE=; b=f9N2HBKnw9CcnFgQNC/xQ1WEFtI7N
 n+8B2H0zvWP1W0nWB2shcv6FWyAJLeSK+BzhX3hshT+WzSdoM/9phY6Vm34dms1r
 oYcTk/HsW08+lUG0Als9E9MNeRxWp81+tYv7JfdFr6DSoyvLpCxcd4HAIhs1Txnz
 iBoiV/VfEJr8cyQCNj8NOu3Pl3v7HH3wGlFwkoFfhTprYCu1c8AjBFwoX8EghW9V
 syNY1IS5LRG06sFvHNLetiX0hzX/SDCvtAYzETzsQxEhLEiLJR1RUrqzEzJuejtf
 zCmiSbejjCDxgKVDg6jZCMLDD+JTkqrbeGuFAikXfxViIdsFDCtOsu7vg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=vOye5Ojf6Pz67EFbXOJLbRGjP3SfY7Wh3y7/T5vyRcE=; b=lwhQ8q58
 151Z1ryWaJwYuJ4vy4oSSyhuWxJ/RS5Zn5z2Qg2JLoUKreTFDTIf69k/A+MIJWEF
 z6T4GTLsf0as2OpfMg5fC3snBFxrgyKVQrEKBAaPCmrrPj6Ope8X+I60gQ8zeoz9
 41H9RVhR4ttQUMSgNOtPpuxVtxJ13AnaSUkFEJUP2LMtQvuZ4bOluSXgQqexCg+V
 0nggf+5cdti/jV4v1czleCPrvwo5F+dCEcJqdMQvsetnP+/mFP2xYInA3NcwpU5F
 f/LJfOzTicOcRMe5JxaS7rEPI9F9URyULxCwYEHyg5gyXYEFSZoqFgzPQKl0+6ce
 zMavTbrZPIMIoA==
X-ME-Sender: <xms:I97hXs1I7jopoRS7XKQvpjuq-TBaEbJZU_y09tJcAvr1MYGt8ilyMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduie
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:I97hXnFJz1dUPaXd-iZmN0LZJw-CDMRqVyOxKUgii2Wy0qcmJFbpVg>
 <xmx:I97hXk4jykiTtl_6jFCQlinsLczl7y2_lhpxI8Y6snhxwLLK3g4YVQ>
 <xmx:I97hXl2IlA5M6WYBRbRRS7qCdCVAAvPJn1SraN7mFHDd3nTgNNLthw>
 <xmx:I97hXlZ7oIbHiR0s_cVFxUMLrmgvyVmSLRKlM1_ZRNOSMGxqCdUhww>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id CC0003061856;
 Thu, 11 Jun 2020 03:32:50 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 19/27] clk: bcm: rpi: Add DT provider for the clocks
Date: Thu, 11 Jun 2020 09:32:08 +0200
Message-Id: <e6e80151926f9d1dfa9b29971efa7dc816e32b4a.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003252_406119_EC107ADE 
X-CRM114-Status: GOOD (  10.26  )
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

For the upcoming registration of the clocks provided by the firmware, make
sure it's exposed to the device tree providers.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 16 ++++++++++++++++
 1 file changed, 16 insertions(+)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index d2cb90c086a7..5f4e2d49432f 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -31,6 +31,8 @@
 
 #define A2W_PLL_FRAC_BITS		20
 
+#define NUM_FW_CLKS			16
+
 struct raspberrypi_clk {
 	struct device *dev;
 	struct rpi_firmware *firmware;
@@ -282,11 +284,13 @@ static struct clk_hw *raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 
 static int raspberrypi_clk_probe(struct platform_device *pdev)
 {
+	struct clk_hw_onecell_data *clk_data;
 	struct device_node *firmware_node;
 	struct device *dev = &pdev->dev;
 	struct rpi_firmware *firmware;
 	struct raspberrypi_clk *rpi;
 	struct clk_hw *hw;
+	int ret;
 
 	/*
 	 * We can be probed either through the an old-fashioned
@@ -316,6 +320,11 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	rpi->firmware = firmware;
 	platform_set_drvdata(pdev, rpi);
 
+	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, NUM_FW_CLKS),
+				GFP_KERNEL);
+	if (!clk_data)
+		return -ENOMEM;
+
 	hw = raspberrypi_register_pllb(rpi);
 	if (IS_ERR(hw)) {
 		dev_err(dev, "Failed to initialize pllb, %ld\n", PTR_ERR(hw));
@@ -325,6 +334,13 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	hw = raspberrypi_register_pllb_arm(rpi);
 	if (IS_ERR(hw))
 		return PTR_ERR(hw);
+	clk_data->hws[RPI_FIRMWARE_ARM_CLK_ID] = hw;
+	clk_data->num = RPI_FIRMWARE_ARM_CLK_ID + 1;
+
+	ret = devm_of_clk_add_hw_provider(dev, of_clk_hw_onecell_get,
+					  clk_data);
+	if (ret)
+		return ret;
 
 	rpi->cpufreq = platform_device_register_data(dev, "raspberrypi-cpufreq",
 						     -1, NULL, 0);
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
