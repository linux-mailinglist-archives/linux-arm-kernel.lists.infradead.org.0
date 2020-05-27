Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 066221E482A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x6R36EDvNfrEWYSmq8qHZNNDkuOOsl6JXmuA9bwwEqA=; b=Wq5RoHdzD2pk7L
	9zfooeMOyUobdoA2VblrCdGCcD6TU+SuE5MY5fFke9uJ14s3GWjY+eQXVWadriABQduEBHBc4R5RT
	5JIb9wmHFb9DoY4TGDAXCS6uVkEAoQJyoWJBXhno6Gd1vtb6oFKeK6Rx8hnmyEMyroaq+J6zARZkT
	CMGpQar+r2kVk+FHDUAIUYO8xu4yZJ/sa4nP2is0u+wNJr9VOA5YZTvjxL0TLs84R63nDVkdU1TVo
	FNntWlvZU+5tuxD4J0k1vmPxnZoVmZGwwIX3eeawTngEDxZn/Jex6aN+tsCc0pvAaYs4vOMqtj6Lu
	WeM4ga8+cQ9Djd+ni7jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyIX-0005MF-5K; Wed, 27 May 2020 15:48:53 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFQ-0003Ax-N5; Wed, 27 May 2020 15:45:44 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 5429F581DD0;
 Wed, 27 May 2020 11:45:39 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:39 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=bKIFK4HlCTngX
 qlGFWYw+rUQ2qZUCm/IgUu0AKgZk3I=; b=fCzYJNG6JAiipLs4zis0TvjGt+cJl
 E09F9Wvm+qFfbirS5xUAVryBf39n+zIhYqwlhfzKY5GZp68pB6FX3XZhbjYZsIuU
 Fuue9yZyGw6GvpUHwhC6rb1NtQHTruTGu1bODqlTHpVQYhZf7rbilrNfV1RDXV/I
 qotBfqHQcEsF/tMoL2Ito2hIO4LBOlLBwwlu76YROmR1AA/LAT1SnOhBSN79RTSH
 N/59RqdZgzQXAGqDUFC0fM1GYUcL9IVqyAiKWEXKJP3kvWyzNpGB8rfsDj2kRio0
 hQsiPXBajN4ELURAEPYUGfstz8kc/LoPYsqXKGaMBJhKT8kLbas7reh/g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=bKIFK4HlCTngXqlGFWYw+rUQ2qZUCm/IgUu0AKgZk3I=; b=SJ2fIS3+
 nd6fkBX+PEDrftioFb8ecmyxv8LdrJJJCkStotspSpungI0wznY9mATTgdKKi/E4
 K12DR2oi21+MkwYxcrnfM9lxuRCzsqAVUrlpa6x1bMfMNcTGjmnsVmgqbfvAj+1F
 0Xl9FgWfgbjXQUINQ70ciz7/5k1yKFN0yBex/D4TOCSL8203gVGhAJ/UsSxv9fhR
 FO5ZVP+qOX1kmdNIV/2HCCvb5FbRr+tvGvqq/Fxc5DXBJYbJe+2O8G0NaCYA2Oz0
 pEqIAEQ5j1RCKqdTaQI6P3EFBJDWE7LGTgOkY4/MY7Szl7L6Wi+ggnXz8Xrr2aCX
 hlXkAEqINkxe8A==
X-ME-Sender: <xms:I4vOXo01HnXv9pdscBu0diQ4aH8YYIqxgpdOc4-Ly9NLowRt4mMSiQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepieenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:I4vOXjGX6-0Ryl5kF6tlUwDDGRCo2v_wUTpIqAOh-Sqshot8f5z9fA>
 <xmx:I4vOXg6-sc1a7kzGPCPcbwxEZZP2fiYOx8CtsElxvV13RIQIIzUJuw>
 <xmx:I4vOXh3sOePXXi_RNG4956pxuOrRqH0nouSQpvXiv8Ubp4r6mBr2zw>
 <xmx:I4vOXhZGpDPd81WFfhHVANRxMEcRL0BdZVPXc1Dz3Fauryf5mG73wg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id EB4BF328005A;
 Wed, 27 May 2020 11:45:38 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 08/25] clk: bcm: rpi: Make sure pllb_arm is removed
Date: Wed, 27 May 2020 17:45:04 +0200
Message-Id: <2bd4695ae7af2931f861e50b0892b81086ce972a.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084540_900841_E7314745 
X-CRM114-Status: GOOD (  10.70  )
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

The pllb_arm clock was created at probe time, but was never removed if
something went wrong later in probe, or if the driver was ever removed from
the system.

Now that we are using clk_hw_register(), we can just use its managed variant
to take care of that for us.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index b21dd6ddc4fe..d62605861028 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -240,7 +240,7 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
 	int ret;
 
-	ret = clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
+	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
 	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
 		return ret;
@@ -250,7 +250,6 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 						NULL, "cpu0");
 	if (!rpi->pllb_arm_lookup) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
-		clk_hw_unregister_fixed_factor(&raspberrypi_clk_pllb_arm.hw);
 		return -ENOMEM;
 	}
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
