Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFB06DAFDA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:22:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tq1HVFANV3t75LD/ejbtvZOgwj2YLghUm4xPfecXyfc=; b=tORizhGhvAWEhg
	/H45EAGlkMpjMWW8SWyaVS+YJFjC7iT1jdkY/wLpEhAw/WwapkBDXaeKvLNlWW2Pt4gCxHxafVp8I
	ET+u/XzjtUQSSqxNY3kwFMgTa9sukyY7Xq33OJo2dAuR9RcPsSMmaGjFCI7rRQqipiP03WlzPaK07
	WphETbT0sh3DybNVRiOk/7q2whsdULfnyOMxz/7E7i0iuslwF7yOEMJPXWX7EgBm+hPQ09zeYVgZM
	zIzIPFEDANhs2KGPybfvMv0ZOJqVkD10m0qR4HzUPn9IE9qNxxBpn04VdNwcW2cOCMMFFa4VHZuYK
	3llevBboBcGpz6SHYvVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6fV-0004Fq-Eq; Thu, 17 Oct 2019 14:22:21 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6dk-0002Y4-7r
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:20:35 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 63028C001B;
 Thu, 17 Oct 2019 14:20:26 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 5/7] spi: atmel: Remove platform data support
Date: Thu, 17 Oct 2019 16:18:44 +0200
Message-Id: <20191017141846.7523-6-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191017141846.7523-1-gregory.clement@bootlin.com>
References: <20191017141846.7523-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072032_412235_0711F518 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver is now only used through the device tree. Simplify code
by explicitly depend on device tree.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/spi/Kconfig     |  1 +
 drivers/spi/spi-atmel.c | 16 ++--------------
 2 files changed, 3 insertions(+), 14 deletions(-)

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index 6f7fdcbb9151..6c0c1f55bd71 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -80,6 +80,7 @@ config SPI_ARMADA_3700
 config SPI_ATMEL
 	tristate "Atmel SPI Controller"
 	depends on ARCH_AT91 || COMPILE_TEST
+	depends on OF
 	help
 	  This selects a driver for the Atmel SPI Controller, present on
 	  many AT91 ARM chips.
diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index 19600de40422..1ff5b20eabf7 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -1500,7 +1500,7 @@ static int atmel_spi_probe(struct platform_device *pdev)
 	master->bits_per_word_mask = SPI_BPW_RANGE_MASK(8, 16);
 	master->dev.of_node = pdev->dev.of_node;
 	master->bus_num = pdev->id;
-	master->num_chipselect = master->dev.of_node ? 0 : 4;
+	master->num_chipselect = 4;
 	master->setup = atmel_spi_setup;
 	master->flags = (SPI_MASTER_MUST_RX | SPI_MASTER_MUST_TX);
 	master->transfer_one_message = atmel_spi_transfer_one_message;
@@ -1528,16 +1528,6 @@ static int atmel_spi_probe(struct platform_device *pdev)
 
 	atmel_get_caps(as);
 
-	/*
-	 * If there are chip selects in the device tree, those will be
-	 * discovered by the SPI core when registering the SPI master
-	 * and assigned to each SPI device.
-	 */
-	if (atmel_spi_is_v2(as) &&
-	    pdev->dev.of_node &&
-	    !of_get_property(pdev->dev.of_node, "cs-gpios", NULL))
-		master->num_chipselect = 4;
-
 	as->use_dma = false;
 	as->use_pdc = false;
 	if (as->caps.has_dma_support) {
@@ -1745,20 +1735,18 @@ static const struct dev_pm_ops atmel_spi_pm_ops = {
 #define ATMEL_SPI_PM_OPS	NULL
 #endif
 
-#if defined(CONFIG_OF)
 static const struct of_device_id atmel_spi_dt_ids[] = {
 	{ .compatible = "atmel,at91rm9200-spi" },
 	{ /* sentinel */ }
 };
 
 MODULE_DEVICE_TABLE(of, atmel_spi_dt_ids);
-#endif
 
 static struct platform_driver atmel_spi_driver = {
 	.driver		= {
 		.name	= "atmel_spi",
 		.pm	= ATMEL_SPI_PM_OPS,
-		.of_match_table	= of_match_ptr(atmel_spi_dt_ids),
+		.of_match_table	= atmel_spi_dt_ids,
 	},
 	.probe		= atmel_spi_probe,
 	.remove		= atmel_spi_remove,
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
