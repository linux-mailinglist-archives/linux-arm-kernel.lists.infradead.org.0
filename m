Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D3E81E4852
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Li/wbdbQiCcVZzgL3ssElLON/xtV29fCut+ugmwfDHs=; b=LBsnm7UjaCtKg0
	NXnbQ5wyXFzwsA0j9LGJQIebWG3n+osZ5Vkw3tfNk/Q7RIWAFWvngb0RT+415g09zR5I3SIftc8SQ
	oFjidnWMpTz4oNnG75EPqD/q0mti2A5DphH8iN25ZN8s6JcT3F2xLQTPoOmNSpP/QBcYiJV8TpgUb
	LVGStQef5s5F88b03itnfz0TK+8wBIrDEGDWOgFoauxOfPo7+pKziLM9Jb0+THlcZukr8L0+zRc/H
	lmsF4g5iY7QmgefGSertOByd3JrdxUPTr7CP326yOYUsvmUaz8k2xq7IODh1b2iin0BvHrY6sEw4d
	w3bV+ZsrIGompvKtD4aQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyKx-00011m-CL; Wed, 27 May 2020 15:51:23 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFW-0003GH-7f; Wed, 27 May 2020 15:45:47 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 7E7A25C009C;
 Wed, 27 May 2020 11:45:45 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:45 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=AjDg50eF8/fT3
 dIsJRXR7a1XQUYcZlWK28+/sYq4TL8=; b=A8Yr1qDAjGPEvcfBDVvSflFlkBROn
 HkHZVljyA/FdA/tSVwpCND7ymE/99oez/hacuPBPg8wOi9SFUngeKWpM7zCIgMRa
 pCU3Jf68Y7o+lBdG1bfzId+Ak1qMKOkk1zcurelnr3OIbxvNzZZG8kfUi5FNow+s
 rQ3b3+8PZfmEPIHUExcm6OfdeD3sNTGaJhw3tea+kbjmQBj4rq/mrSPfRnO5IWuc
 XiKN8POh8htKBeNhYQ2VNaz5n99PqmGD2M0LC/HJr2oOpl8l8FYNWTi3IBX6CbzM
 NGXMGNU3JLjQmyw5ZtE9SoSShLxylewO5B1sSaDZjslrkYWSYa+Nfddmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=AjDg50eF8/fT3dIsJRXR7a1XQUYcZlWK28+/sYq4TL8=; b=gX5BfnMm
 5i1zEdKS2FFCmxBNXukmDlOTXyOrg6SS5EjniXZsNcpQfaHRRcDngpq2qZn3nDvQ
 qfZJBMZ04xjGkboaxofO12EcWS3A6tW6gBHYHCyLS34pRP0YWxSRPxOIvBZsrKXW
 xTDeh1E0qtxs216nypnIlKRD7nYnn6RSmKqUFTY+l1Not5mqUbZ35qkwiKROAus2
 MTP4NFiBWrdW15PYRopS0OMauw1jvV2jLEQUzcqeMuJKCPzNLcivOmrKKkFbZNNE
 sLjHvq52n6VOU8plIPQDsFEAsrUbrhdM9dGNGFDiUSQeQJ8LFihyTqwP72VxlBoK
 LjelHnLThy/R/Q==
X-ME-Sender: <xms:KYvOXuiNnCHZ2dvM80J3QMxBpLIk6Byyfpg5OtZy-EsUrOEcf6bshw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepuddtne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:KYvOXvD3_EDkBsZTXziqYuUyBgDePE2Gk1lKTGOoTCe2nLxytDqn0w>
 <xmx:KYvOXmGJF5vSL7mplmM0FQmPvh7rxi3G_px3dES6dvZlWoppzBwxUQ>
 <xmx:KYvOXnQQwjaI9g1sKfxZpcqHefwF6Zf90U6Q6HWNahEsVlj6m4w-MQ>
 <xmx:KYvOXmrXehv3cRsmuhw-4URqKWCvaK4o8O9kEZ5os6RtO2LPN90PUw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 1F5343280060;
 Wed, 27 May 2020 11:45:45 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 12/25] clk: bcm: rpi: Use CCF boundaries instead of rolling
 our own
Date: Wed, 27 May 2020 17:45:08 +0200
Message-Id: <eb1b2838f1c3c006c24bcb9816f75e1351c63b05.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084546_437701_E1844DFA 
X-CRM114-Status: GOOD (  10.75  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.26 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [66.111.4.26 listed in wl.mailspike.net]
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
 Dave Stevenson <dave.stevenson@raspberrypi.com>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 Phil Elwell <phil@raspberrypi.com>, linux-arm-kernel@lists.infradead.org,
 Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The raspberrypi firmware clock driver has a min_rate / max_rate clamping by
storing the info it needs in a private structure.

However, the CCF already provides such a facility, so we can switch to it
to remove the boilerplate.

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
