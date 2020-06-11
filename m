Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 729691F62B7
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:37:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zx/CSv6yBZ7iwMbaSyCx0/cDOXP98QXUA9dMGrZBDgU=; b=TwGXLbFikqGhQG
	v6XbNNHDU5No1NhyUrd6NAwS/7BYcO7Af4cDlQ3MZ9sZ9c3j0p47cw/DxvYF1NfuM2Vz/vR+gFAj0
	594vz4zGuBTSTMOG8Hb2ZgPxbqX7xzTiTQdFtYZyWWengELWMa8Fgi1Q8BIlXmuP3xnul3jZNlce7
	M2nXwt04gOxyTNeaSNVXUp0q2saU44DPdjjr0OZXGMugwH4EalslwFGIkHyjzPTIrkLEJFp69f8ue
	C0oehj/gLLEhbinRD0kOLpt9pngoP//yqpP2UO7zoYSkXFXdo7AqEwJelC10xi4Ex0n1BQwiVApaA
	2DLgkAD4rs74345GCJuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHmJ-0007lK-Es; Thu, 11 Jun 2020 07:37:35 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhb-0001an-Kg; Thu, 11 Jun 2020 07:32:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id BB95C5800D6;
 Thu, 11 Jun 2020 03:32:41 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:41 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=nL1h5CzLTBtwB
 4Yhuh91OpjAgsyIPeWCXA3enbNnQJU=; b=FhEt3dwgujkONfWtx1GJIzFybZgdm
 Zx6Dhay9stuF7/M6ncDGLa4lANoB4KIR4fNu+1FeOl6WKKRqHM7kcZH4zwJf0bQf
 VDPRfgga6DyQwaaU4Px28XzzqEYJ6YZNeWYb1VajRl6EGuxgKqHkz6yTmKoMVb+T
 6pIcEbY1ZRI9+UOjxB3+8XStYy3myNLrp61Gcaxd2QlgqAnwc4gy6APE7PRSqfIq
 yS+55RIrIExBNLpO21hxzoJkjbtu+jVBodgBcUSgZF359+Sc+oBZTzZ378mHmJga
 ZN674eHOm7zu8IK+nLNd21+VMrcbqGQ90HqyxRC5DWJQfNdJczXv9XXXg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=nL1h5CzLTBtwB4Yhuh91OpjAgsyIPeWCXA3enbNnQJU=; b=FhVH08xJ
 hIsL1pxqn0tV9p16e7pJrDU9033FdpCmc1pYRTy/etlrliOE7Fs1TH+0Z7C4wCbN
 tuFHFttsaTCbQFmLjFR54kbqOqlYNCs820s39ziPYrmeUmg8M6dskEAGAEye2OmM
 DPIUELXT8binDUX1WnSJQMVG00ld0s5KiLhgjzZ0NrTfqL1bv+hTrHtObzW4bb7a
 m501+CeFDMU25OTnhGq1NytjPXvJiM2nwNiv3uToJjqQGNG3IpU69TyU93KPr4Lr
 NKN8pTLLtl3NnDnS+40B7uQx5mPz5QbHdzNVA79+N8XFBqwBXBxoFMQMMIVPOECN
 204TzhXFq5OyxA==
X-ME-Sender: <xms:Gd7hXiwXX5NL8i_AUq3YTBFIH6OlJvz4XMn8T4LNdv9sS_mQsJzOsg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeelne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Gd7hXuSB1PpFwlQssiRSUczFOvTrlSbul4Q6YmPDjLN3gcx9yxEnMA>
 <xmx:Gd7hXkV-viZWgmtfCpkawVELP8nSBFN3dD-BUuEFg7nTgfyOdST2QQ>
 <xmx:Gd7hXogtDSdv_GpeT8nLA0WHUEo7MNvZ21TW-UqG8kCkgYr3g04IXQ>
 <xmx:Gd7hXg2CTaJLewSHSubXzbFZcbd13d5HYYpO-bYwMx0_Ah3s4nmWdg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 580373061856;
 Thu, 11 Jun 2020 03:32:41 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 13/27] clk: bcm: rpi: Create a data structure for the clocks
Date: Thu, 11 Jun 2020 09:32:02 +0200
Message-Id: <e21144d6bd65d6b33767e6c922cf0a6956666f50.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003244_114167_B9F4B26E 
X-CRM114-Status: GOOD (  12.16  )
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
 drivers/clk/bcm/clk-raspberrypi.c | 31 +++++++++++++++++++++----------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index e135ad28d38d..00735704eabc 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -35,8 +35,11 @@ struct raspberrypi_clk {
 	struct device *dev;
 	struct rpi_firmware *firmware;
 	struct platform_device *cpufreq;
+};
 
-	struct clk_hw pllb;
+struct raspberrypi_clk_data {
+	struct clk_hw hw;
+	struct raspberrypi_clk *rpi;
 };
 
 /*
@@ -80,8 +83,9 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware, u32 tag,
 
 static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
 {
-	struct raspberrypi_clk *rpi = container_of(hw, struct raspberrypi_clk,
-						   pllb);
+	struct raspberrypi_clk_data *data =
+		container_of(hw, struct raspberrypi_clk_data, hw);
+	struct raspberrypi_clk *rpi = data->rpi;
 	u32 val = 0;
 	int ret;
 
@@ -98,8 +102,9 @@ static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
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
 
@@ -116,8 +121,9 @@ static unsigned long raspberrypi_fw_pll_get_rate(struct clk_hw *hw,
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
 
@@ -168,10 +174,15 @@ static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
 
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
@@ -210,11 +221,11 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	dev_info(rpi->dev, "CPU frequency range: min %u, max %u\n",
 		 min_rate, max_rate);
 
-	rpi->pllb.init = &init;
+	data->hw.init = &init;
 
-	ret = devm_clk_hw_register(rpi->dev, &rpi->pllb);
+	ret = devm_clk_hw_register(rpi->dev, &data->hw);
 	if (!ret)
-		clk_hw_set_rate_range(&rpi->pllb,
+		clk_hw_set_rate_range(&data->hw,
 				      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
 				      max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE);
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
