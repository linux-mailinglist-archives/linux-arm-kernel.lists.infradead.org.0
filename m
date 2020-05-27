Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F371A1E487F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:53:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=x+bLiNFqU5dRC2G2+mQVwp5ur9JAuV8c9Oz+adtS2Xk=; b=MNyKF20UeLdaxW
	ODNAUFSd6Pb7FOBch1yt/QtqK3BX4Wx5tGEwCl/pZWxSGZ5DNa6CAJnBxtc0b0hlYsRha192bNetB
	jkoEi2nNvCBwPa1c4SIHgV2ndKSqXTWWsS8+4mWccyBkVvm+Pwl6kD1iMKchCihBScyAf7WA9HXTz
	tvSQl2j7lIhJn3tzRLhW/XVeW/7McKd4qEdlt+wFXV5sG+IkuhO5DYjnfMz/iY/rXLQl4Wmk2w6cz
	VK26fAdJ1/J0YgLM3o9my7lXmbO7ozEvJcnUs756CKSuEdzM7aFxRRJJle017STBfd9fT0AwwN4/S
	OnJkb/pIDdkN6viYAHFg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyMd-0002dK-6R; Wed, 27 May 2020 15:53:07 +0000
Received: from new1-smtp.messagingengine.com ([66.111.4.221])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFc-0003M2-UF; Wed, 27 May 2020 15:45:54 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id EA6D2581DE2;
 Wed, 27 May 2020 11:45:51 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:45:51 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=f/R5tcDXGnC0L
 EgPODfQACCnYjD2fbOepAi73Ul4TFY=; b=WSN6uRtoio4k4p3quFvI93ND21+OJ
 17faETKVw1rRtEVc1Yzc7PsFzL7WAc1039+FK3cV9riAudmUNoXsThAK3LKxO6E+
 svGVxeuk4Uk52Q5aXH4wZ736syi+sgNMUzHVAKuZAC+N2BavXhwsVHHLgEBwyAQn
 cmH4ZVOnWXNVoYAzhd0k3dfvr4neGjV9FpJT3k8yG4PWDCYFbGUDjBkHGW4LrOa5
 xq/1fwS4+iR40vJZOJq85jWBHOZMOoVlUFPwbNxR+UYH3MzjOjIcwovOettxj7Jz
 IqliylzJ6v9jTGz8ExGos2wbzozmRlcm7tT9EChVS458HDQ7V63XCyAxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=f/R5tcDXGnC0LEgPODfQACCnYjD2fbOepAi73Ul4TFY=; b=Qzyt8NY8
 Vdln1eR5m1i2RXYvsagPIaRvnQFdXyLtEa92iVNyeys/0nNlvi/cwlkv449IOpSa
 tnMxcXp2n7bHEo9PDtgarsvf7bkmyHjWpCcxeOaj/rhKe9bAsoG0Yr0csMhrv3Hy
 f+MXawRd0oZEjvOvv6F40uvncPxXNLD9H/0iG7DxNTDMdvlm8tAgWtkv3DheRcE1
 BdF/duizdmOHe7LPO0wbbw2Hk8da/3/Nep1ToN1WXG2Tk7HflRPL+H7kWHOuSoyR
 5LlBAoxKaynUomn53mXwKIxJzyfa4G5DtS+THm3r4/oD6YRt1f0DpaEdiF6WRcjo
 z9Mx2aicKmuoMg==
X-ME-Sender: <xms:L4vOXkOjtPlG7rnDCftRfTJlPCkE9adooKo4no7Gr7yRRkzXO9xtqA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudegne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:L4vOXq_RUYCjQxV7MlaM8MVDgXbslHlZ7CvcZNjVkMLd1eB_umyyvQ>
 <xmx:L4vOXrTZ7Ss4Axv4SWuynSX2zVaGue-EnEfMREa3lxgliXO4k6jZfA>
 <xmx:L4vOXsvVsHQyGS1jhj2IpgdPiEvnCADM0yDTvKOofEDfqoFV42X-cQ>
 <xmx:L4vOXjyXVmCdnXHbQY09pFgDXlXTLt-9AZ3LbtgbddWN-MrdKWumXA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8952A328006C;
 Wed, 27 May 2020 11:45:51 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 16/25] clk: bcm: rpi: Rename is_prepared function
Date: Wed, 27 May 2020 17:45:12 +0200
Message-Id: <31639df90c3b1e84bb1d24c07561916f5c448662.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084553_116885_20395BE1 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
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

The raspberrypi_fw_pll_is_on function doesn't only apply to PLL
registered in the driver, but any clock exposed by the firmware.

Since we also implement the is_prepared hook, make the function
consistent with the other function names.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 3fce49a65a79..58ac1b104429 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -85,7 +85,7 @@ static int raspberrypi_clock_property(struct rpi_firmware *firmware,
 	return 0;
 }
 
-static int raspberrypi_fw_pll_is_on(struct clk_hw *hw)
+static int raspberrypi_fw_is_prepared(struct clk_hw *hw)
 {
 	struct raspberrypi_clk_data *data =
 		container_of(hw, struct raspberrypi_clk_data, hw);
@@ -166,7 +166,7 @@ static int raspberrypi_pll_determine_rate(struct clk_hw *hw,
 }
 
 static const struct clk_ops raspberrypi_firmware_pll_clk_ops = {
-	.is_prepared = raspberrypi_fw_pll_is_on,
+	.is_prepared = raspberrypi_fw_is_prepared,
 	.recalc_rate = raspberrypi_fw_pll_get_rate,
 	.set_rate = raspberrypi_fw_pll_set_rate,
 	.determine_rate = raspberrypi_pll_determine_rate,
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
