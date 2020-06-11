Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 200721F6296
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:35:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KguaEpYUaIffUAiQZqV0eUGQ4R4it5nlJG99QcT/F5s=; b=NnU/UQeFmLya3V
	rRDGbSGsH9z+uftEq8efV/tabMzLeO//CTkw05LkabkzJC/yz2MoZeigq+Gv2cZly16QeFYuedGlH
	3T48sAmnVNDXkiMwQ2dT9ZsKuHBxNA68soDciZHUlj6wtgHhIRo0mqpzX6OhJtrS6Vn5z8nySd8Wc
	amj5vft0RPWGghveX47w/f8Me7nI87vaj/HJhK/14Y4B//gzZBQTscJauj67c3uK5BW8lvo+c8Fnb
	B2GZ5meimy8tmcnxKXHwqtqu5PwpEmKLXKSdm0aGaV/7P3TaD3SGBkj3929jzYL31RYOFDPWJ2rUz
	G0uR8N4d1khqEJ8d+Q3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHjr-00037k-Ra; Thu, 11 Jun 2020 07:35:03 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhP-0001OM-AK; Thu, 11 Jun 2020 07:32:33 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id A8FC45800D1;
 Thu, 11 Jun 2020 03:32:30 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:30 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=1CRffqz/Ml8mm
 POvizsQdWw+f6223btgJ0KputgcYZQ=; b=PMicSRLsc50Uy5HsAF2bSwQRfbzve
 0X1KLS+OBk0ulj8Tk32ot4AnvQHkbCIZHIN31diwKv6rIYJs5145etCo8cKwSacK
 rY3XEl/I7otw3YoYvNXYPpUXX3b+3PcJArQ5ghYo2sY3ACa9OGZNRwah5mCUXAVe
 ZaYl0EHr/rFgtQJ2iCWkEvtm7Az2t0hrctKg+koFO9jYwDhj1zWeh+yW1c0TMm80
 3lW9jSU8FU0vWqw8sOZMeGWG8ApZXmBv7sMD7FyH0gOhS+06X8dEApkH8xIrmk1R
 6ewOiDhxd2y1Nl1UwUqYZyw6F2peo+XwULij/O1wJw+Fi9m/7mwj6bYxw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=1CRffqz/Ml8mmPOvizsQdWw+f6223btgJ0KputgcYZQ=; b=T5DPFZfC
 h0T1PSPj2fvnovdBXxuYZyq1FIf7tNBjNoZt478cUBuIHhEofYmcGWcYZA9m4k79
 whYe3B3hp3NFEr0EVQheCJal9570IUMvkoR0rAkJA51VkrOnYO8lsdT4DehYzXou
 hwykHd1W+GgA+Z6R4eh0t/5wk29n9hqUsWQlQNI5xNzGQk3NpxpYzBZacEK33ErU
 1J9C4XXexF9gbdaGWuqQu/3hWaZfs4DYZnLXy8s9dGFdbOBTW4npkuys/ewEPda1
 /RznXxX93AQ9mFXjgqW0mk+1wtLCmZdjegdkIVnb7f5UGdO09UJ2DORwzxIXAWvp
 VpnMwuQu6q4L7A==
X-ME-Sender: <xms:Dt7hXrT4pLZSw-9WrFr7bk3C9K9_nbM5J6bxuHBUFxrHewfpT3elIA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedune
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:Dt7hXsy4laFABwwjNGSjmvC_McQOoeR-nTPLRar5mbBuXXNHQbE1MQ>
 <xmx:Dt7hXg1PN4xXmxKlT97J1448UVg76omPMVI9wRWmLJW4auAXbIKqPw>
 <xmx:Dt7hXrDCcc9BtHcAnB8kZr4Q_crB2AFPPt9v7yFcYHPrZt516HTf1Q>
 <xmx:Dt7hXtUUPPLqI5KWO94R9xG0wKQrnogy637jMQwaviAdXorU734mZw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 4A8B93280064;
 Thu, 11 Jun 2020 03:32:30 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 06/27] clk: bcm: rpi: Use clk_hw_register for pllb_arm
Date: Thu, 11 Jun 2020 09:31:55 +0200
Message-Id: <c131bc0722ff3b8ef7018b14357fb73668b48868.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003231_522612_477AC9D7 
X-CRM114-Status: GOOD (  10.76  )
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

The pllb_arm clock is defined as a fixed factor clock with the pllb
clock as a parent. However, all its configuration is entirely static,
and thus we don't really need to call clk_hw_register_fixed_factor() but
can simply call clk_hw_register() with a static clk_fixed_factor
structure.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index ddc72207212e..5f0d4875e145 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -225,16 +225,28 @@ static int raspberrypi_register_pllb(struct raspberrypi_clk *rpi)
 	return devm_clk_hw_register(rpi->dev, &rpi->pllb);
 }
 
+static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
+	.mult = 1,
+	.div = 2,
+	.hw.init = &(struct clk_init_data) {
+		.name		= "pllb_arm",
+		.parent_names	= (const char *[]){ "pllb" },
+		.num_parents	= 1,
+		.ops		= &clk_fixed_factor_ops,
+		.flags		= CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
+	},
+};
+
 static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
-	rpi->pllb_arm = clk_hw_register_fixed_factor(rpi->dev,
-				"pllb_arm", "pllb",
-				CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
-				1, 2);
-	if (IS_ERR(rpi->pllb_arm)) {
+	int ret;
+
+	ret = clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
+	if (ret) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm\n");
-		return PTR_ERR(rpi->pllb_arm);
+		return ret;
 	}
+	rpi->pllb_arm = &raspberrypi_clk_pllb_arm.hw;
 
 	rpi->pllb_arm_lookup = clkdev_hw_create(rpi->pllb_arm, NULL, "cpu0");
 	if (!rpi->pllb_arm_lookup) {
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
