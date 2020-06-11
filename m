Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1625E1F62C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ojrZrK+qt8RQEPevqv4oL3aSHbdz5K96+gzWD41hDUg=; b=lq5SC99AgEscpF
	0Y6INCr4uKy+x74ld2b+WIXLCgFjoKmZztSKDH1r8TlfSJxnqLBJAZnoG5QiXxmBhgLrPnniuJeYy
	BqDMC/nLy4W00Hwwy3ARnljbivKL8QTRCq8VqvFbJbqJcq36BKhnpTy8SAB9hBsN6Af8JTpDmwYn5
	t8qmhIcaDRX/JjV75IsjweCSaj5Do9mScAtMk1hpKimRpEC05w1/eVUcOIGSL8tNXqYaJ8guqPmfW
	5KdDD/wFaebFw/9lDlgTbEYz3SjrbknfeHXUpQQJ0F3U86zdKdfVNt+hrxWhWTy0zCKLU3wmOsl57
	qsgsjHPANLdEiEmW+9lw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHoZ-0001RX-FU; Thu, 11 Jun 2020 07:39:55 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHho-0001mm-VR; Thu, 11 Jun 2020 07:32:58 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id F0EE95800D2;
 Thu, 11 Jun 2020 03:32:55 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:55 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=50dNnUGcZ5mn3
 FPiDe0yy/zqxPcf3960haBgPL103hs=; b=ItR4oLacezTkGfIT3ev3BMPcn06Nv
 MavgOPdH7yd7P0ST7WWlSjiB9vNAmdyM6ahQrfWTrKoV5szjba+RAt6rjFPZCk9S
 +o1WcwccLS4F+8gw+QTDZz9CvHGwMtlWnFh14lP+Qxc/j1cj/xr0ZxARlJZg5Zyy
 mF75BfW6t2uLakogKq1SL5ogNjIr8vMF1DD8YE63b/25TlDnCkLMPLEowE6AFTlK
 G2LrJGb2wZWXMoUuYyyTyQSvinnTgsOPLeQii3/8tTfQSNpdydIqWWGJrbjLMXMb
 MyJhaFoEgTASGE5mz7HO12nw9aTXw4WHtfDrk1MaV+Sbg5Kgg77Z439DQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=50dNnUGcZ5mn3FPiDe0yy/zqxPcf3960haBgPL103hs=; b=s23cuXZ0
 X2KU4J1QAFq7p+vMv7n3Gs81KwXjKyYM/Xd2CjEbg8OV6Jt+QYZV1svBeVp8lmsh
 MdKCYZIyMsdXSX81VVltmV1FE0mo/wl8bDbMY8k9ysDquUuORb/DvsWVpaRTP1/b
 xYi+7tFyTjntwhYPp75iW0krvYpSRsORUDemTc9ynv8uSbXXLb0cep6A4ixttiZQ
 PjPXwRat6JALg4cIZ0aRMaAiH71bvpoQbYx7IzWOQ3zPXpQt4PneXwctMnymT+ch
 SNimtptBEWy1cl7TaW/qx4MVGxM3ym6rOZdpj5fictNEWQGTnxo6R8ryTDb9t2oS
 Up3tBFP6lsTnKg==
X-ME-Sender: <xms:J97hXkdoH0xUnlS7x2W21F2q0jpV5dItodK3j3D560-OVvBlAVUWaw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpedvtd
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:J97hXmNMeZyxZPb2cHVTlSuAOSySMAlJ-0AL2jlUyIkSZ-0ko0UDZg>
 <xmx:J97hXljQ6tbHL4QbPZxFrecQVYePlZz6l67MSqGKUGHYb7i_B0-PRQ>
 <xmx:J97hXp8xLR-k1RXPeVvHBkVytyQV9fF8ixvOykZUmujqHxdLlX3IhA>
 <xmx:J97hXuB-zgbjmMS_SZV_OJIb4E-Ig1WDEeiOGzeUjUmPUjSLAA_MMw>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 8CBA33280059;
 Thu, 11 Jun 2020 03:32:55 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 22/27] clk: bcm: rpi: Give firmware clocks a name
Date: Thu, 11 Jun 2020 09:32:11 +0200
Message-Id: <bdfe97621e5473dbcea3b8402cc5929a7e60565e.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003257_167844_1227C928 
X-CRM114-Status: UNSURE (   8.06  )
X-CRM114-Notice: Please train this message.
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

We've registered the firmware clocks using their ID as name, but it's much
more convenient to register them using their proper name. Since the
firmware doesn't provide it, we have to duplicate it.

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Signed-off-by: Maxime Ripard <maxime@cerno.tech>
---
 drivers/clk/bcm/clk-raspberrypi.c | 21 ++++++++++++++++++++-
 1 file changed, 20 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/bcm/clk-raspberrypi.c b/drivers/clk/bcm/clk-raspberrypi.c
index 11a62bde5203..adc0bb56008a 100644
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
 
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
