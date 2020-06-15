Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38DB51F920D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:45:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4AQGDreITSLwmV36d2fklcWszqCGFKaBrjDYmcVGiyY=; b=EasxKydNk6k8Mj
	gU7fnbbo1Dj/m5tNeUhJA2Ie3rQkmPteRK4dU8UchPZCiirVEqlLvTeBMjynvyZWGhS/nGLzjiZiL
	oHlVkxMUmd2MHQ+JucVlVU/1jEthtTAVL/vh3fNelBTaNrmmaAnssP1VdLJaTr3PMfZshvOPMm1r9
	4wtvOjU5f4YV6W9ZCLJA7aDz9DxYkgN5m8ih1ocGdcMSC/BTRD02+/ztbIy3uPYLd6NdqEWHvW33O
	uoaPImPhRd6dWnwbLKz3cdYcZ3DJ0gUC6EkXR3pzdqy3isw1/MXD55FLdGchp8u0B1AzATuxB3hlz
	cvjyQyKcrlU1VGBYzcVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkkP-0007EY-Jm; Mon, 15 Jun 2020 08:45:41 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgW-0001l5-Ah; Mon, 15 Jun 2020 08:41:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8B1CE58014F;
 Mon, 15 Jun 2020 04:41:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=+PQEhItmczD1S
 u8XNd9hu+fknO60RHPYY+kjCnpg8zw=; b=p4neOYx9SRaDGT/VZoJdWMxxxshhI
 I7mJSBzWIkue6xwAS/zeTJatrp30MgJ/98PIewPHSGNgJ88yOTxbDaFHHetxslJh
 lXFfsS+nlIXMZ1sDbdbML3GdRTfC3EmJcJ1fmaIygGg+mbJGEthagTEjOsOCMxG6
 tv3bDOJB2NsS0qeWgKgEU7wVbaVD2uHnYY01AJZpgnkqs+RmaE6Pm/Br8GhqOY6f
 RgUXpBrHPUOMB6XIplLxWU8FBouUUAR/1X83RXt3zr/tB66CWeh/QUXMH6VNzJvO
 GoLIca0ExoCk+qxQj5+c/+bZPhfs7ZdSMQSIJhKv0stLuUzv1QBa0XgMQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=+PQEhItmczD1Su8XNd9hu+fknO60RHPYY+kjCnpg8zw=; b=WNFOIqGz
 aXzCybrwTsA1kTAzgmDT2YYMfNt8ekR69r6TJDa2/DoJ7oXXfLaNyfiqOes7JlbJ
 5gbr36ejuFTrRZKD1En0tt/fRZo4lS9xK6i0nCHjC2VFg9GxsR2J9akifeJdMyfv
 KPUasckHB+hxhYSQa++jmEEOVnBHnYlfXlEikQDcW/vLxfc5/f2fOvIApuRp1L3k
 cF/AiCqNjrs27KtCYJuGSWTcC9sXr4I44gBk6xlwGtMzzaczfIB9319HNd3w374O
 hGcloyncC8af9IGaVEkuSlHgP6N7TH+XpcH6brRgWMxjiBQo4TpF8x72JwPoKTW0
 3tWdUPsJqMSk1Q==
X-ME-Sender: <xms:QzTnXnv-x5F9gKxyb4B8Daoc2yI0L9mCwFabt8XKoSz1QzkaDL5pNA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepuddtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:QzTnXof4I0x1uKxJDhzSeTOKQ-1GZpkX5Ir-gXvi74qX1bPoAC-K3g>
 <xmx:QzTnXqxzbuK-B-kk93Jkubp2gkaGDcweXlrU0jMIVLdrqEmdxZL--A>
 <xmx:QzTnXmM0Z7RUApQ3Y4azNruw0V3K_f5ygLCFGj6HPXoqHRAGXn1CmA>
 <xmx:QzTnXuYzjpb6X8u-YaijHvOqaO_qChQhBag-TmF12eQM5hWMbr8OmA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 3A9BF3280064;
 Mon, 15 Jun 2020 04:41:39 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 12/27] clk: bcm: rpi: Use CCF boundaries instead of rolling
 our own
Date: Mon, 15 Jun 2020 10:40:52 +0200
Message-Id: <d4c53dab6de5d5f70743d9c139d0117589530e62.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014140_574222_81541659 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.224 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [66.111.4.224 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Stephen Boyd <sboyd@kernel.org>, Mike Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Philipp Zabel <p.zabel@pengutronix.de>, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The raspberrypi firmware clock driver has a min_rate / max_rate clamping by
storing the info it needs in a private structure.

However, the CCF already provides such a facility, so we can switch to it
to remove the boilerplate.

Reviewed-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 18 ++++++++----------
 1 file changed, 8 insertions(+), 10 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index a20492fade6a..e135ad28d38d 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -36,9 +36,6 @@ struct raspberrypi_clk {
 	struct rpi_firmware *firmware;
 	struct platform_device *cpufreq;
 
-	unsigned long min_rate;
-	unsigned long max_rate;
-
 	struct clk_hw pllb;
 };
 
@@ -142,13 +139,11 @@ static int raspberrypi_fw_pll_set_rate(struct clk_hw *hw, unsigned long rate,
 static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
 					  struct clk_rate_request *req)
 {
-	struct raspberrypi_clk *rpi = container_of(hw, struct raspberrypi_clk,
-						   pllb);
 	u64 div, final_rate;
 	u32 ndiv, fdiv;
 
 	/* We can't use req->rate directly as it would overflow */
-	final_rate = clamp(req->rate, rpi->min_rate, rpi->max_rate);
+	final_rate = clamp(req->rate, req->min_rate, req->max_rate);
 
 	div = (u64)final_rate << A2W_PLL_FRAC_BITS;
 	do_div(div, req->best_parent_rate);
@@ -215,12 +210,15 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	dev_info(rpi->dev, "CPU frequency range: min %u, max %u\n",
 		 min_rate, max_rate);
 
-	rpi->min_rate = min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
-	rpi->max_rate = max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE;
-
 	rpi->pllb.init = &init;
 
-	return devm_clk_hw_register(rpi->dev, &rpi->pllb);
+	ret = devm_clk_hw_register(rpi->dev, &rpi->pllb);
+	if (!ret)
+		clk_hw_set_rate_range(&rpi->pllb,
+				      min_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE,
+				      max_rate * RPI_FIRMWARE_PLLB_ARM_DIV_RATE);
+
+	return ret;
 }
 
 static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
