Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A31451F62C6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jun 2020 09:39:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PTimTgKQXJbZB4apunH1hKM1BBnvleBHYYPocMPTal4=; b=NNamSR6fB3IyD0
	q6RHLtwLAflBTUsjh9URzNy6jJUuradTRB21BCQCRI8kmZLzqp9xxscyfvoKUpy22usOejYxAT466
	3lKFhOxStYlNVMPn8l3+REIj6h2wjqRMH98w7aHs/9eG1kH9HkZfVqVTfgID7894rnKgskSLbSein
	7WZbBatRzIAYo0mz7x0JZdA2OECWCMFJUqCrAfC2NepbX7q7itPIukr5clCdWaStC/hH/EEmQDkJ9
	Kkm8OPGq96QdP+BFicv9sLCeK51YLJ4ZIQyLSwLB0cWV/SMxAk16k/vh8UIt3cFV3z7U5tyHOik93
	doctcBO017iIRf9HCy/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jjHo1-0000xd-65; Thu, 11 Jun 2020 07:39:21 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jjHhl-0001jZ-VF; Thu, 11 Jun 2020 07:32:55 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id C8F5F5800D2;
 Thu, 11 Jun 2020 03:32:52 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute4.internal (MEProxy); Thu, 11 Jun 2020 03:32:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
 from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding; s=fm3; bh=+0j3O88jXCUCB
 0HT6pH0V+oipaoo+YucEFiEz5rag2U=; b=gyZ8/BvnHyMNHYbFgKWDlHgm1pTug
 DRimNZ30hG/jJgVgbr8GnAtAbf5GWhiDMCeDcWG8KvcCJtiRZfpfUqU9xxULDPIV
 UzjtSOa+RbEWQ8yECNyluM8fp7l3AEy/QMmrfQTsNjusqmf9JNKkYl9NApsvpTLj
 GNXllMr30OC5kJGzcb31uZYWTFq2sOPSzSGh4xC4qmJbyXrpvKvgY6aOY3ed4MwL
 lmfUfcoNu0xjtK1C11jdWoa3SLr+5WlWt5kHo/MA1aN7owRyYwpTRGrly6UkBQ2X
 jfS9C51aAvs6srI6NkDkKvkhsLXkRsTCmscaqKyJtVvTM4RYd8kkXlArQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :in-reply-to:message-id:mime-version:references:subject:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm3; bh=+0j3O88jXCUCB0HT6pH0V+oipaoo+YucEFiEz5rag2U=; b=YNTcU3q8
 4EvPca6S1rGWNfDbgatzafOuWnRx82ZgrQMdi27ErQXikYl8HgrRAmwlY3AeuVYb
 AwQnPxbAD7YIOqJLeKX1NOVJBVjlHx66GEuD3awyrV6/SE92xDJliyEFmTq40Qvu
 zR5AW0f4N4jB9i/E/3hk7mz/vGrfy4nL7En/9Jw1RH59N5hSVKjB2fAQ50b5RjI7
 +kx5LrO6xCEz9NbLSARhwHgWS/i3IW+0vPGqHNlPRkLMm/s8YugUK2N9VNGlW9N4
 9fQkHk53lDuPHY8bAI3YiCe9HpCanRBFknKmENuIIZFr+IKiUN5dz0SULCDOavQy
 sny+RwFPOfFl8w==
X-ME-Sender: <xms:JN7hXsUIb71TWQFdGyNTx4L_kQCp3lDeRFOnSAWYMZXoM0tr5kEPBg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgeduhedrudehjedguddvvdcutefuodetggdotefrod
 ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
 necuuegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
 enucfjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrgihi
 mhgvucftihhprghrugcuoehmrgigihhmvgestggvrhhnohdrthgvtghhqeenucggtffrrg
 htthgvrhhnpedvkeelveefffekjefhffeuleetleefudeifeehuddugffghffhffehveev
 heehvdenucfkphepledtrdekledrieekrdejieenucevlhhushhtvghrufhiiigvpeduie
 enucfrrghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthh
X-ME-Proxy: <xmx:JN7hXgnWuZ25nh72zt7N_oqAqCCnAeFR9g0g4jOLloADbO2vskIxyA>
 <xmx:JN7hXgaQGDRP7vtDEVPd9dDREIOZFCD7sg0Be4Vqs1XteXG4fh5FPg>
 <xmx:JN7hXrUiRn6R-Vewnxxuhehbk-D5u_9aurO8DigATh--6OYLvZjTgg>
 <xmx:JN7hXg6GwyW6qTW6u21PEGzjlnnX10A-IhjD5co46-fU1T0a9DlLeg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 by mail.messagingengine.com (Postfix) with ESMTPA id 659A13280059;
 Thu, 11 Jun 2020 03:32:52 -0400 (EDT)
From: Maxime Ripard <maxime@cerno.tech>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Subject: [PATCH v4 20/27] clk: bcm: rpi: Add an enum for the firmware clocks
Date: Thu, 11 Jun 2020 09:32:09 +0200
Message-Id: <889248ea19b3578b7e13f4df2a37edcc1fa4ed08.1591860665.git-series.maxime@cerno.tech>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
References: <cover.58c6e44891ff5bf61052b5804f7da9b5ba074840.1591860665.git-series.maxime@cerno.tech>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200611_003254_339665_F29EB6E3 
X-CRM114-Status: UNSURE (   8.26  )
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

While the firmware allows us to discover the available clocks, we need to
discriminate those clocks to only register the ones meaningful to Linux.
The firmware also doesn't provide a clock name, so having a list of the ID
will help us to give clocks a proper name later on.

Acked-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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
