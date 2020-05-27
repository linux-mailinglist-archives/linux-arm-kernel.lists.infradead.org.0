Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22BC01E480F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yz4vDhns3pj8ATd9nOXiq4LlHGOnZVfiOuvanGUOV4w=; b=KiTwbDRPs1iiQ3
	asl2Zurk35T9LEgR5uj9zFuj+LbnUmi0CQLb9nWqyeROtkHz5nYYGGMFvvU/5ETm9r3xPPybCWZoO
	yeccPXGlaUG+cD+iaOTYUt0zvbAQ7hTtGwcTPeGKlfmDwHyjbIpto6GKCnk72OczqZAIYMztYKtps
	wDlKl/MbGXsQjQkfUjU3dsKA1cpc3IWJWRqu11Vo9TAFjkgmiMreXohtHY7YKaRkOAR8k7fhPs69f
	U22HSkVdUhUK9hUpoOTefsab7PGbRSGxwU4V9tVI18P8OdO1CaeL1Qw1kEbAMWaH2hwRQ/rKDwS9e
	v2YaV8Qur/yGcUxiBIVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyGk-000455-J7; Wed, 27 May 2020 15:47:02 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFO-000388-KG; Wed, 27 May 2020 15:45:42 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A9A28581DC2;
 Wed, 27 May 2020 11:45:34 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:34 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=LSIsfiNq5IpAS
 JINyuaxA/q7xkNPFUcq7XPKpT78W2w=; b=mKJOO2/bAUXe1b1kiUFbNvhIia3FO
 xFI0szLda8wvBvsyVWRHyjWB+7LuB+/fge3TqBcCGpDGIjoM70HSh53bG0Vojebc
 NRzzr692PINjjsmIUxqGqqWGv7ybJS711/eaeZfxIVgAf3L5MAyl/dUhjTZ7LW1G
 zLgZxdCS+1QTibRQH0ycKtDpXJ++84JTiNA5oHYob+9FWmX2M+vzKokxqHib4txo
 Z4xMQtxwuBPDRhfbreu1+nP6g1gok7ndkCpk4JtVD0LhNfqcXEME0TuVm/R9C6sS
 RKz0Ag/Zj1dP551QDw9NmFzfdWwVoRFiU1C/caN0B6o1UvhTN/AFjMOPg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=LSIsfiNq5IpASJINyuaxA/q7xkNPFUcq7XPKpT78W2w=; b=mDP8NOl4
 b/upWAP7fi6qHQgsmL901ocbRkeRIy5quvNKYTrEG+jQ4nMi973cs8AryDw/IVLu
 a2rDtOw8bJdm4+4hrUx5hFMiTiNJ4TKnu9O9AGH2cs5Bp+eiZqmxhevxraLPZduq
 L94wGENQX0eIilqrOL2PL1FHv14ABcCu4TqeopPIbNKQ9tPkLNFWFcMZRSeq5flH
 kUpU1YW7IYG/EkL/SDVC5tBKAI+Gl67kGudQGiRAqKxT/6pheJ4xuB1qN+zbZVAx
 JrMAswsG63FUbeLnbJWO2KptpqaFDpPACGZK1Ua3lkqY2TcaRy8E7/tgDxOHmjmb
 RhfIEgy1UqW+HQ==
X-ME-Sender: <xms:HovOXrGWow-yut4TZNUArXeZMGGWuqeh80TIwotobhggYBQtBroKMg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepvdenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:HovOXoVLLFOzJUU-uqZ7DonH8f2Y7pGKesrZ0A4PR6-lojPebV9q8Q>
 <xmx:HovOXtL9sSH11F9IG8-jCPSw_5lM-lztQW4tt-A10RGb2_K7Sopw2g>
 <xmx:HovOXpEqT6G3HUCYiteANiFHI86Tq3Y1Iu52ayht79UTGyB8X3-hjQ>
 <xmx:HovOXtr-A-03jTviwOXrggcGfc7rnT7ybkLI0KxN0OXtHz9-VRfFsg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 49BCE30618B7;
 Wed, 27 May 2020 11:45:34 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 05/25] clk: bcm: rpi: Statically init clk_init_data
Date: Wed, 27 May 2020 17:45:01 +0200
Message-Id: <0a5615fe97082eafb44221164cdefba48d38e654.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084538_811258_BC63431E 
X-CRM114-Status: GOOD (  10.28  )
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

Instead of declaring the clk_init_data and then calling memset on it, just
initialise properly.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 8610355bda47..ddc72207212e 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -175,11 +175,10 @@ static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
 
 static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 {
+	struct clk_init_data init = {};
 	u32 min_rate = 0, max_rate = 0;
-	struct clk_init_data init;
 	int ret;
 
-	memset(&init, 0, sizeof(init));
 
 	/* All of the PLLs derive from the external oscillator. */
 	init.parent_names = (const char *[]){ "osc" };
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
