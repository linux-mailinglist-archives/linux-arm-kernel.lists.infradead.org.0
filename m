Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED37C1E48AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 May 2020 17:55:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WvGBsYvPcMtB0g5E9zZLPumh22IsnsiXTO15IK/aQkg=; b=QbeBPoZ7/JWplK
	ymiZMrmlX9C3uQa82I6EThMSJ8FF21xxU7PG+GEcSR5VtI4VlRo0V3mjMQ03yulpJXvAyjRmCAXa9
	MbRgF2FTWLOhmDZ4IRr/o2ZbvZxM0aNdOqqdHjYsWn+7S7ucu3chVpr1JFq1Sy4b44OkOZg0C24WH
	IVlhZHuoxAtXkouCz7YxXpz7MBxKo0PrTEYwA2emE3SGyCfCXHZtDxgI1MoZaqvahr9cEGpEYT7RN
	TMVwI2kyu0lfc4ERZw7fUOrbIEtsp30rChrM1Ia+eaRzhpQUiheUXhbmBvzlzC26u21o3PWse79LM
	3158nnEzLL3+PcQ4Pnyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdyOn-00047a-Si; Wed, 27 May 2020 15:55:21 +0000
Received: from out2-smtp.messagingengine.com ([66.111.4.26])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdyFm-0003Zq-UU; Wed, 27 May 2020 15:46:07 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailout.nyi.internal (Postfix) with ESMTP id 192695C0229;
 Wed, 27 May 2020 11:46:01 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Wed, 27 May 2020 11:46:01 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm2; bh=Br1uyNI7ITy6T
 7Cb01ktGmvtq22WgQAeHm0e1UAZ/lA=; b=vJADURQtqkaS6ntR542Xt0Idob2hP
 8pTNVNCdxCNtfEu9iwbh/CjQcZMY77qIV1msIf2YGLw0yQnRDdtIXB4mh0iv602T
 m+hjjXtgu5RqHg4MwyCy0iTnb25J7nYmuIyu2JgFGGVSlvx31lEQ26ACjwdzSiMM
 UwcwO1CZXvELYR7hNKALEXW5K7TfZ6nXhmJnGCZiuhuFQHswRVM49PyHM4ITK6R0
 CvUYMxisnf7/V7z1bzQtNGYLToZymVUAv749MFNxXqRuwoIrJ8rn9sgQZsFHrpT2
 xdfTG1hvNCHtDqixKdkWVaNCo4RHEfijACIX/85coL0/JobJPwX5i34XA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm2; bh=Br1uyNI7ITy6T7Cb01ktGmvtq22WgQAeHm0e1UAZ/lA=; b=2uIUBetx
 Qou6spF7Vqkn4AlLfdvVJzJlyH7PVFbYZqCBC8sAqXLDMsgDNk9628lr2YtllZJZ
 UQcxixGAj5ccT6xc7mqC8jY7RmW2kntn1p+HuwqHxZVHEnjYqwQv8mj8IdWtag3H
 tFwB0Yo7Hlc97+W3zFeSajnyr37qCYoqiPCS1NOZVyhb73UMguO2xLkV5lwHSiEa
 CJR6Kxq9XXYXg8Grx9tAdyl8UJBWc2kTAsIwEzba7vmRQYA4lz3WYWz7Ht4UQsZx
 muUDh2ukj7A3anWIhMmUW8BAcMo2xVcNV8vNYcq0XjMaaBuyIWATBn9WQNiCoEW3
 L0s24vulPr5bGw==
X-ME-Sender: <xms:OYvOXoURO_hi4e7H8SKaBgmQxmnzmw06xU5uGbCuN50yGp4oTTQLJA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedruddvgedgkeefucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforgigihhm
 vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuggftrfgrth
 htvghrnhepvdekleevfeffkeejhfffueelteelfeduieefheduudfggffhhfffheevveeh
 hedvnecukfhppeeltddrkeelrdeikedrjeeinecuvehluhhsthgvrhfuihiivgepudekne
 curfgrrhgrmhepmhgrihhlfhhrohhmpehmrgigihhmvgestggvrhhnohdrthgvtghh
X-ME-Proxy: <xmx:OYvOXskPdofykykOYXqmwRP94J4HMbqvudLeJn-IT6Wa9T6HsGGgRw>
 <xmx:OYvOXsamH5Lmt1b7O7yaoD1HU7jfkR8Ww8g3VjjUtDkh0WUAa3W50Q>
 <xmx:OYvOXnVSu172DI9nb67jjVn1DnqleWwzlZKtES9yHcryssg_gym8IQ>
 <xmx:OYvOXptJCfDoFi2-pi_2XfgggRMxEyZ96IqjqZWe_x-BqpQ9ok5Umg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id C095A328005D;
 Wed, 27 May 2020 11:46:00 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v3 22/25] clk: bcm: rpi: Give firmware clocks a name
Date: Wed, 27 May 2020 17:45:18 +0200
Message-Id: <135a5d32e42d9a117e264f1f52ac9fb6b9dc20e6.1590594293.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
References: <cover.662a8d401787ef33780d91252a352de91dc4be10.1590594293.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200527_084603_307575_4BC2BB12 
X-CRM114-Status: UNSURE (   8.52  )
X-CRM114-Notice: Please train this message.
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

We've registered the firmware clocks using their ID as name, but it's much
more convenient to register them using their proper name. Since the
firmware doesn't provide it, we have to duplicate it.

Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 25 ++++++++++++++++++++++---
 1 file changed, 22 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 8d3acf3ee053..cee634cb5323 100644
--- a/drivers/clk/bcm/clk-raspberrypi.c
+++ b/drivers/clk/bcm/clk-raspberrypi.c
@@ -36,6 +36,23 @@ enum rpi_firmware_clk_id {
 	RPI_FIRMWARE_NUM_CLK_ID,
 };
 
+static char *rpi_firmware_clk_names[] = {
+	[RPI_FIRMWARE_EMMC_CLK_ID]	= "emmc",
+	[RPI_FIRMWARE_UART_CLK_ID]	= "uart",
+	[RPI_FIRMWARE_ARM_CLK_ID]	= "arm",
+	[RPI_FIRMWARE_CORE_CLK_ID]	= "core",
+	[RPI_FIRMWARE_V3D_CLK_ID]	= "v3d",
+	[RPI_FIRMWARE_H264_CLK_ID]	= "h264",
+	[RPI_FIRMWARE_ISP_CLK_ID]	= "isp",
+	[RPI_FIRMWARE_SDRAM_CLK_ID]	= "sdram",
+	[RPI_FIRMWARE_PIXEL_CLK_ID]	= "pixel",
+	[RPI_FIRMWARE_PWM_CLK_ID]	= "pwm",
+	[RPI_FIRMWARE_HEVC_CLK_ID]	= "hevc",
+	[RPI_FIRMWARE_EMMC2_CLK_ID]	= "emmc2",
+	[RPI_FIRMWARE_M2MC_CLK_ID]	= "m2mc",
+	[RPI_FIRMWARE_PIXEL_BVB_CLK_ID]	= "pixel-bvb",
+};
+
 #define RPI_FIRMWARE_STATE_ENABLE_BIT	BIT(0)
 #define RPI_FIRMWARE_STATE_WAIT_BIT	BIT(1)
 
@@ -343,7 +360,9 @@ static struct clk_hw *raspberrypi_clk_register(struct raspberrypi_clk *rpi,
 	data->rpi = rpi;
 	data->id = id;
 
-	init.name = devm_kasprintf(rpi->dev, GFP_KERNEL, "fw-clk-%u", id);
+	init.name = devm_kasprintf(rpi->dev, GFP_KERNEL,
+				   "fw-clk-%s",
+				   rpi_firmware_clk_names[id]);
 	init.ops = &raspberrypi_firmware_clk_ops;
 	init.flags = CLK_GET_RATE_NOCACHE;
 
@@ -367,8 +386,8 @@ static struct clk_hw *raspberrypi_clk_register(struct raspberrypi_clk *rpi,
 		return ERR_PTR(ret);
 	}
 
-	dev_info(rpi->dev, "Clock %d frequency range: min %u, max %u\n",
-		 id, min_rate, max_rate);
+	dev_info(rpi->dev, "Clock %s frequency range: min %u, max %u\n",
+		 rpi_firmware_clk_names[id], min_rate, max_rate);
 
 	ret = devm_clk_hw_register(rpi->dev, &data->hw);
 	if (ret)
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
