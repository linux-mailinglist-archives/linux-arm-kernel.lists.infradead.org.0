Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC701E486C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:52:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zx/CSv6yBZ7iwMbaSyCx0/cDOXP98QXUA9dMGrZBDgU=; b=XuPwapcilrq9Bv
	wyA0Kzn0GAQ8xZ6Hzs0DTNEWuJxtdd81aB+E/BzhZOYsOwyEQWUOHTLFbdTUbU31v5OrIHYWivzrS
	GX9COEjoq8RcKrH0OysUiCpIWMb7B1D1yofZ35gXEjEGegM6zCK9oDSKn3xSXyRot6JMj1d7vDv3y
	GR5WiwUmNgPA4yVs16KJsILMdag79dMmFvYtPG2cixzQ7R3/H9dnHS3thA37TcguID4jLZk8ECnQ8
	4ithUJljFjZCEUuJPRgboPvCowePyhz5tawmx+pfyUZ+GfuoySY7sWh2gkB/LY5RaIHeij+jqwHQw
	DTdnS647jYnXN/quJ5Ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyLS-0001Pm-7S; Wed, 27 May 2020 15:51:54 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFY-0003I6-Cy; Wed, 27 May 2020 15:45:50 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 4CA1C581DDE;
 Wed, 27 May 2020 11:45:47 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=nL1h5CzLTBtwB
 4Yhuh91OpjAgsyIPeWCXA3enbNnQJU=; b=lLA6xkqdyyNVK8KxqAuo1mzrvZXr1
 v5RP7kZE1mlq1ck99SZv8kzqr57XxKUa+xR25S9114d7cxiJ7rNq/KlUD/ZaI1an
 T25oJoFE/+rsXXSb0/PLrR+93znexk7O4gKeN2JNsI72nEkL7VtJ1vexoZCavuoz
 sdZNjavpAiAWikehfcgPsrg+BA7XVro6WJMC0j7X9D5o9A9tES2jQco7DdPwT4Tb
 d86+JvyrhO3qyNgIixwAi1FZJ0xZm5Yts9yzLToGxfBtLHBaqmC9GTYXd0IJObGz
 H3Twyfo0jB1wNvAX59pMF4jXUwQrKYM/i/lqDBlsKRJhUaNv2VLluNVsA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=nL1h5CzLTBtwB4Yhuh91OpjAgsyIPeWCXA3enbNnQJU=; b=K67sh9b0
 SbAz+a6PEGsyQ5x2fyjIq09vyusbrSCa+SuBqgx34VVh409aURsnNYk5pDdk2Zcp
 8fzmZAJxrrQ6MHu1PiSjDdp/bY7y2gKbgNHhdBckGj/2/tO3Lz/vAojJTgIOtIcd
 6h2FTqKccy2LvA/Suw9x8N+ZufsZNdlEY4KQyiXRuftRptzxWJKCG/aXuOe3KMi9
 3NMPqbTuPNMYHqhfN9PEQK93Nzp3Gp5sKtxjt7MFj9aaVC7vHcTfcfME46P+L+nl
 rG9nb0sbEp8/Y6yWl3As+Uo3FqZueetB+zkLa7vfi+GPw082/0+z65mIBZwgqGdD
 4wSBDyVkwuff1Q==
X-ME-Sender: <xms:K4vOXg0DHZRKTwLYFuvSYOVnL3kkna4M06jAbRHI-zjCk1dRwbTr6A>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepuddtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:K4vOXrEWCn9YVg6X9jMABtTbkOxXEbwECcHLfsJtm2msu3K99EOAlA>
 <xmx:K4vOXo4HO4ihfKIsW8Zxkh5dQiu-GEh0CJOSDs24a_fiBbjCec3giA>
 <xmx:K4vOXp03t2kcdYImm9sP1yq6RSnlZ95ypgojyIRr6qjnC_w3zTXM4Q>
 <xmx:K4vOXpbvEvH08V8pqX6uh6NfymkkZjQsKMyMJGVjFXx-Qzytw0Panw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D57213061856;
 Wed, 27 May 2020 11:45:46 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 13/25] clk: bcm: rpi: Create a data structure for the clocks
Date: Wed, 27 May 2020 17:45:09 +0200
Message-Id: <da903789bf0d96b5c9a8845595158c4c2623fdd9.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084548_743340_D8956A1E 
X-CRM114-Status: GOOD (  12.02  )
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
