Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D8C2DCD93
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:10:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=VsPc0zlkiorN+wBuTQH+zolF0z4RaqzxbTHsJ9fkZU8=; b=OyT
	2wioYao+WSuOtILXIMk+HoMsBiHN2eSOc39xgIK9eK7+xxb+10hF4SV761Fnoo1RW7OUVvCf/XATb
	RW6HWfoYyIo4+9InZPfqG79SM1IGcrwhbeahWDJvn2yZ8owTMShHQZCjnSNkVyRBzE7xza+ZarydS
	XWmVgD1EpciooSlxF0d29EOiAIBsKHXiLALlBS2kfLoBymtEMPK/mLlHvcQlMV4MlAEe7IfnrxlIe
	QJBAaaJEkL/4qLC/mqUsbgGv5WtJjyOmcTiZyKuAGiOYGvGTPlLLLrjHHXRoJiKms4jDo+evY72LK
	xwn4tuy+k8S6udE+gLn462dlvZvXZTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWhG-0001Ro-Pg; Fri, 18 Oct 2019 18:09:54 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWef-0007jx-99
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:07:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=guA/i0Uq64Yo/U66ppqvJs5Wtp9eMPnLNdsvkfrKWEM=; b=NLE5qEEX8zc8
 lXwP9x3+uAYLk7OGLMXIVHDHE0bfj5FQHIa9vX5dzHn+5Kl4MWj11GOVawoon3YowcUOjvoUKI08I
 aJk7AkM+2WqOWbaSwmBPqokVj0s62wg0TUOIJIcED1NmInAiBgw2oP+BFyeTrYxyrmbX2TwTEiPYA
 h+ytY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iLWea-0004H0-Kz; Fri, 18 Oct 2019 18:07:08 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 2111C2741DEA; Fri, 18 Oct 2019 19:07:08 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Applied "spi: atmel: Remove platform data support" to the spi tree
In-Reply-To: <20191017141846.7523-6-gregory.clement@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191018180708.2111C2741DEA@ypsilon.sirena.org.uk>
Date: Fri, 18 Oct 2019 19:07:08 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_110713_343970_C3980B71 
X-CRM114-Status: GOOD (  17.91  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Mark Brown <broonie@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: atmel: Remove platform data support

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.5

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 1cb84b02bf130f34ee81f99bc7dee5bca2943ed7 Mon Sep 17 00:00:00 2001
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Thu, 17 Oct 2019 16:18:44 +0200
Subject: [PATCH] spi: atmel: Remove platform data support

This driver is now only used through the device tree. Simplify code
by explicitly depend on device tree.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Link: https://lore.kernel.org/r/20191017141846.7523-6-gregory.clement@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
