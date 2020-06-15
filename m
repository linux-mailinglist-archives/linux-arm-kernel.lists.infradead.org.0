Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29D541F91FE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:44:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TBI2vrIaf9iKB9blM/FFstCO0w+AeJ0tSWhITROgdkU=; b=R8vIi6jBvYiy2/
	Ko7c0OQKAGOZ/bce6+++ZPnP7tMeiR7fbQhs9aounYo5tpuSBTXVisbNZqhfYhEtZHbCg/FctLQ5U
	X1eP07iNIFRSuroUQoC8i3FZoE5Re9mDqgAlFkSaNih1FKCa67DrS7ygyKN0miCG0jZLEJZKRITat
	BcQvnhAjQgqgVlCeqrm1vujd0w8BL4gTfLHWoCRFLU8mfvrT7uuMQJttw8tNtiJSdHIe7Nz9rifyv
	JTkWeeupJJ++JIMzkfue2dQZBku/X20DpGTxxXUi1aC7VdhiU79tdseheEJal4cbfxU2eoue7K1Ho
	hAm5k8TOUN+Kp7Cbjdqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkj8-0003ou-3E; Mon, 15 Jun 2020 08:44:22 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgQ-0001e2-0V; Mon, 15 Jun 2020 08:41:35 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 3F04458014B;
 Mon, 15 Jun 2020 04:41:33 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:33 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=sS6BwBFUiZXRU
 4wm/8LzjilpwHkbk9SalRSRG+6ui94=; b=fiDYs8MvSbDQG2KQXX6FoEXJqQJ4N
 DnIwo19eH8PZsrSi0YBTtAs/bwEMArJ2JX1EH8JBkK6vxJ4T/HB9c4Xyyq4MEq8+
 UO5KssK/C/5j3LAQZ4lFmdsyUlwiWWoImmytvi7VozhdTljWobJ/OrIEr4+QZIwr
 J+rDPCFrHMbdUl9zhl4UBeoIb0RqZkWJTDeOEbXcl3oc7ylpgYVjynCldvT0KWNW
 wa7RoeMDpdbQHScWjGMx62xQJiX5QjsXzKCWkm86q8guLg/06gjZv2DeGMLkVbOL
 O0TVpsJHde4IT+Uw0evYGyuJQUIUHCQJhv2lS5NmeDdSd1MDbmyXMuU2A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=sS6BwBFUiZXRU4wm/8LzjilpwHkbk9SalRSRG+6ui94=; b=nsRGIJ0N
 QFDKi2WxjqG/acAnjyYj70l3B4r2mRfcDcHfEYVFycj4qhCV8zYKIfb4vmu8zr/K
 cX2NhDkyOWlH1YTJjcmWEkZYVmjaYJlvEDimwseRTfhy1YH8kgvcDPIISSXci5sA
 R6bte7gz8LX1+Bu1imqXG2eguTDbNEZGnCq5/vb3CND4LGerzPPH5c7KbRaiupM0
 Lpje8PfUZcMwp7TBrnZO9GhatdWbhP50asb6NqZITKL8Ys2Xk91tlIZJwAnwDPUN
 gG0diqVbzU8tZOZLK6dDQQqlPBIpKp7GAEYyIkW3IKQlQ4crs7bJ5HvubX2Wskgj
 vjIe8AbglfiqGQ==
X-ME-Sender: <xms:PTTnXujS12lDjgK_VzP8Zn6Xdyb-o6sW8YXzph8qp_yD7QNlU8nw1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepieenuc
 frrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:PTTnXvBYN96YTQzpThqGDJuorYh2xorHfxfvwk7ZdiAIb5pucSUKaQ>
 <xmx:PTTnXmHWGGyocwr_EtvnIk6FSkPDOmuO37s8Axz_cBdbVLfFl2R92Q>
 <xmx:PTTnXnTZfVt8calBLTgKmo2HapQmH7UGd8kgKGl_SN9yDb_CugKbEQ>
 <xmx:PTTnXjc_TFxP9Ke_g9HKfymok_7uUrPKeJXW7e0WYKaJTL67vyYFyA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D04C23280060;
 Mon, 15 Jun 2020 04:41:32 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 08/27] clk: bcm: rpi: Make sure pllb_arm is removed
Date: Mon, 15 Jun 2020 10:40:48 +0200
Message-Id: <34254ed1556614658e5dad5cca4cf4fe617df7fc.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014134_260376_EE3CEC46 
X-CRM114-Status: GOOD (  11.66  )
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
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
