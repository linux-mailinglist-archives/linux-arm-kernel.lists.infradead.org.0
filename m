Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B0631F9221
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:48:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uRP9kBBafXk6X42QEJl+2VyKteywDhXnnbWMFHqf1Q8=; b=gXyjxE/bQ8icp3
	lwYdbGtz/d0OKcC+yp3HBPuVQYr2ci4rLCqsunlMT/kiOD/ijYrQ2d+eiKxJKlZni9hOkKsbf+7HE
	OVb3dS/Rqy9m/+ot4gjT31AAPve0NYioxeZbtcy1ooqHtZQmpCl1X6Xr1HWCmS9qSfC3PHSGJwE9L
	iDeVmbXJ/4rqSKA9xp8IGKoUjXfPcDWsY0MJwH1tXervcqTB6l14tdJiR3YumSQWT2Je2FtV2eq9T
	GPC+Mpn1WctogXQmqq4V+bweyoyq4Wy30u2NgA5M4MYqJ84edkIJZULO2trST0yuWcyIry2OstaX6
	GKYWVvjxx4okd7pqZrzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkkmk-0000s2-2Y; Mon, 15 Jun 2020 08:48:06 +0000
Received: from new2-smtp.messagingengine.com ([66.111.4.224])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkkgj-0001wH-B5; Mon, 15 Jun 2020 08:41:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 416EE58014B;
 Mon, 15 Jun 2020 04:41:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Mon, 15 Jun 2020 04:41:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=m+8UXj42uJPx8
 qcIPMY655n62FA5Z4MYx5m2JMXlm1A=; b=rIXLUMWD3MPDaR1vA5hpqVegmgcMZ
 05389yDh/1lCJQMYRjuF4TX11U8bNA5kwjSESUbf7ibbEmOlH5m2dokp8Wui6YiM
 uUJuFkdzDd6KDzHl682kTeVKfsm+RpDoar4+Q7+/wsvjQiWjvgQ+6mzOwxf8tqyJ
 fGyrRYhTpKSQSPC61nfyLsyaKXfSfKkxdZEUhuIZSuKT0d63uh3lCBmj3J9owiK8
 8RNNmYw9IfAh3rZF1Rh148SgYjJK3B0PbER6ykkCeUJEONCDU6a1AZ7bKBZ5RvQ/
 syr8lZLAMimG59G2sdNTLK4wh9MoaFEgxh0Y4pj5hKgMhN41M9Fv1KFLg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=m+8UXj42uJPx8qcIPMY655n62FA5Z4MYx5m2JMXlm1A=; b=bzkaJTRi
 mUI59c44hYRfP+W3sTp0CQyP3YWKdX1LkokZnEyFQ1wi1s1pfthu27yqJDYXu4c1
 4wqYC+lFTC86atVWfM5vv9U6KFrmmhcY541jrHnzv2mqJUN0YCU/w3ZVOd6kIDFQ
 HnwYHq28/ijTz3H+i1Qw3fZ5SPGEQXzQPH3VNP/Mb58uWg+1vSM9E3Qp+R25KUFX
 +r/vaGZmordfnWfhXgaea7KFkegBXrk/L/aE7ip1qkJJ9mqPh0lZCr3YCH1TYcuE
 TtqYiJoacFk48d5reldDfuPmIadb72rIlPOpgIuORAerdV6tPAuBesEsSsAwOXDd
 t7oBK3tFKXKF7A==
X-ME-Sender: <xms:UDTnXlbeQgGOvRFWDUCQhsi5bt20WEiadMLZEPalWlyNKsBIKwn3Og>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudeikedgtdeiucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudekne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:UDTnXsYKeHD-1yO6-yxdjg51E47nyFmLNBBoJI7BAmogwi2fmaQsXA>
 <xmx:UDTnXn_SslZAAXAO2dn5riLLQoC7RM5k_5dTHW3gxYuES_hzJ8C0KQ>
 <xmx:UDTnXjomOQcuNWYTFsDEtEz_PTZzII-6YRdRqZGbULm3pICbzNdJ3A>
 <xmx:UDTnXn1JLHeEcu7vDX_mkQG7zmcA9Nd45RIFkRruzdQNcSN95e3XCA>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id D49AD3280066;
 Mon, 15 Jun 2020 04:41:51 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v5 20/27] clk: bcm: rpi: Add an enum for the firmware clocks
Date: Mon, 15 Jun 2020 10:41:00 +0200
Message-Id: <4738f77ee7de9b48a3bb1c558ead958d0cc064d9.1592210452.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
References: <cover.98f979c2af2337c57217016d21d7c68e1ac2ce8a.1592210452.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_014153_608351_B8A5227D 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
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

While the firmware allows us to discover the available clocks, we need to
discriminate those clocks to only register the ones meaningful to Linux.
The firmware also doesn't provide a clock name, so having a list of the ID
will help us to give clocks a proper name later on.

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Tested-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 23 +++++++++++++++++++----
 1 file changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 5f4e2d49432f..eebd16040f8a 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -18,7 +18,23 @@
 
 #include <soc/bcm2835/raspberrypi-firmware.h>
 
-#define RPI_FIRMWARE_ARM_CLK_ID		0x00000003
+enum rpi_firmware_clk_id {
+	RPI_FIRMWARE_EMMC_CLK_ID = 1,
+	RPI_FIRMWARE_UART_CLK_ID,
+	RPI_FIRMWARE_ARM_CLK_ID,
+	RPI_FIRMWARE_CORE_CLK_ID,
+	RPI_FIRMWARE_V3D_CLK_ID,
+	RPI_FIRMWARE_H264_CLK_ID,
+	RPI_FIRMWARE_ISP_CLK_ID,
+	RPI_FIRMWARE_SDRAM_CLK_ID,
+	RPI_FIRMWARE_PIXEL_CLK_ID,
+	RPI_FIRMWARE_PWM_CLK_ID,
+	RPI_FIRMWARE_HEVC_CLK_ID,
+	RPI_FIRMWARE_EMMC2_CLK_ID,
+	RPI_FIRMWARE_M2MC_CLK_ID,
+	RPI_FIRMWARE_PIXEL_BVB_CLK_ID,
+	RPI_FIRMWARE_NUM_CLK_ID,
+};
 
 #define RPI_FIRMWARE_STATE_ENABLE_BIT	BIT(0)
 #define RPI_FIRMWARE_STATE_WAIT_BIT	BIT(1)
@@ -31,8 +47,6 @@
 
 #define A2W_PLL_FRAC_BITS		20
 
-#define NUM_FW_CLKS			16
-
 struct raspberrypi_clk {
 	struct device *dev;
 	struct rpi_firmware *firmware;
@@ -320,7 +334,8 @@ static int raspberrypi_clk_probe(struct platform_device *pdev)
 	rpi->firmware = firmware;
 	platform_set_drvdata(pdev, rpi);
 
-	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws, NUM_FW_CLKS),
+	clk_data = devm_kzalloc(dev, struct_size(clk_data, hws,
+						 RPI_FIRMWARE_NUM_CLK_ID),
 				GFP_KERNEL);
 	if (!clk_data)
 		return -ENOMEM;
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
