Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 449FE1B79C6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 17:40:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dcR3XizmKhBMmzJg+J9wNjezqAAg76yAn1tlWcZwifI=; b=NVH3JUtKt/JUO3
	F4NlqhYwbG2pjFETZ2UUf2Xt0rN1dKLv/CrR8lhfguXMiEm5jrhiHHxGWYEv0+tOSMiOuHLmZqk1/
	WIYr86+TaMQg/boEta7pxXeIeDTVTqVkDbOjY1S39yJ66RRnxSeD59vlLhsq3MrSXGbnWwsl5n38Z
	i44VNe0MrMmaTESLqnUDql5OC6mvrYsApkovA4dVVNN2QSxW9vmHzEqdpJvLWjR8QJfM82HY2A//B
	uITVqKydPoxlMJJ7ahgHm+uhLWEbdhDhF9omGXTEyzVLzsCyAOW/N8hDb7j/MAw9uyFZAFCXCOXTD
	VBcQW0rfdgMDg9cufC2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0RJ-0002k7-2o; Fri, 24 Apr 2020 15:40:29 +0000
Received: from wnew2-smtp.messagingengine.com ([64.147.123.27])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0Mc-0007T7-MW; Fri, 24 Apr 2020 15:35:40 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.west.internal (Postfix) with ESMTP id 36C75FE1;
 Fri, 24 Apr 2020 11:35:37 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Fri, 24 Apr 2020 11:35:38 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=JZTQ85nIfmA4C
 atYLZcz0wDEhV7DtHJBMQeC7q6JGEQ=; b=b+A9+Ta34bOdVVK55zfWoWRdJTaq1
 m/SbIWYB2eqfnF8KXOb7GLQsVxuO70j+W51ItxxxiSx02L/6H+e1eSsrlwfQuApw
 qkrmhzOESLTcF38a47b1xYtcRJ8SNO4195LUugyDu97YfW8c+R699gHelAaxKC1i
 LC+XE8RwQiwMMvJjipESxdelz6p5dKkD45qh+eSDK8ucIeZ5j8QipNc6+iWJHs1a
 I73xeTa2YCFHvGgcdEHLlshdZFcaPieoGEKxFQNuPrxBrPX6Ggstt0xMDApI11c3
 Uir/VDbvvfoDNNATKkErUe5H0X2buxofHrpAsHh1Ebl7PbPZrOT1vZhjg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=JZTQ85nIfmA4CatYLZcz0wDEhV7DtHJBMQeC7q6JGEQ=; b=inpOSl1K
 VnmH2JKMRMOH+/m+L59M+a1OEi4dFL0Ruyj+za79POl8SdIg5UDCvaYZK8TUcvk4
 o8YQ5v04QDwWAVhlQowXjJgcrsfIcEkqqAsZc61OlEH2GiYabxu66kCxyachMe9K
 X8sPccjD9w0TPPj/nzyz/cDzcMk5D4X1G6bGpAV4wJyXus5eIDOnNnyQFOirHjsj
 HKZzWdRWUwDwJ+lDD8CBDcZxioM1WDA4RsOU+QTluxUD1QCL12JnFTb5dlA3/bYD
 NLuZKBfVWW3b7kU8mco53WxIBmS2yyR6GVzLgnewX9GC/nxGQl3NWAnLzV9pAYz/
 awtFa4WoYG69xw==
X-ME-Sender: <xms:SAejXh0eJ86Y1TVfl01drA8F4Bf6YdcYGvbhX7CtvaRgC5JDSGB53Q>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrhedugdekiecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihimhgv
 ucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucfkphepledtrd
 ekledrieekrdejieenucevlhhushhtvghrufhiiigvpeejnecurfgrrhgrmhepmhgrihhl
 fhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:SAejXizVU6lup__ARNgeFrzUxPgjVNCJy5JL8LdEVOIX3xadPSPP6w>
 <xmx:SAejXl7OkbjTmcaJEjuQkJ8162gJIQb8hLpkV2ZDtdYhhvVtGUjuIQ>
 <xmx:SAejXvidwZQO77kgCRshagR0-BPe04g202rx20hu8QokwLJl69IaCQ>
 <xmx:SAejXgUMKT4xKtSQirWacWhfqekJI4o8pJLamOnhiPiaCXZc_80uKJ2H-74>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 6795B328005E;
 Fri, 24 Apr 2020 11:35:36 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Eric Anholt <eric@anholt.net>
Subject: [PATCH v2 10/91] clk: bcm: rpi: Remove pllb_arm_lookup global pointer
Date: Fri, 24 Apr 2020 17:33:51 +0200
Message-Id: <7f02e508b0772d155c76bffdaa955cfae8041d18.1587742492.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
References: <cover.d1e741d37e43e1ba2d2ecd93fc81d42a6df99d14.1587742492.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_083538_795904_EAB3BAB7 
X-CRM114-Status: GOOD (  10.17  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [64.147.123.27 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-clk@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, Phil Elwell <phil@raspberrypi.com>,
 linux-arm-kernel@lists.infradead.org, Maxime Ripard <maxime@cerno.tech>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The pllb_arm_lookup pointer in the struct raspberrypi_clk is not used for
anything but to store the returned pointer to clkdev_hw_create, and is not
used anywhere else in the driver.

Let's remove that global pointer from the structure.

Cc: Michael Turquette <mturquette@baylibre.com>
Cc: linux-clk@vger.kernel.org
Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Reviewed-by: Stephen Boyd <sboyd@kernel.org>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 859eac020122..5bed35483e71 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -40,7 +40,6 @@ struct raspberrypi_clk {
 	unsigned long max_rate;
 
 	struct clk_hw pllb;
-	struct clk_lookup *pllb_arm_lookup;
 };
 
 /*
@@ -238,6 +237,7 @@ static struct clk_fixed_factor raspberrypi_clk_pllb_arm = {
 
 static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 {
+	struct clk_lookup *pllb_arm_lookup;
 	int ret;
 
 	ret = devm_clk_hw_register(rpi->dev, &raspberrypi_clk_pllb_arm.hw);
@@ -246,9 +246,9 @@ static int raspberrypi_register_pllb_arm(struct raspberrypi_clk *rpi)
 		return ret;
 	}
 
-	rpi->pllb_arm_lookup = clkdev_hw_create(&raspberrypi_clk_pllb_arm.hw,
-						NULL, "cpu0");
-	if (!rpi->pllb_arm_lookup) {
+	pllb_arm_lookup = clkdev_hw_create(&raspberrypi_clk_pllb_arm.hw,
+					   NULL, "cpu0");
+	if (!pllb_arm_lookup) {
 		dev_err(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
 		return -ENOMEM;
 	}
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
