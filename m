Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8EC0EDCD88
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:08:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=8ISrKr+Cas7pp/cJcyHmfbMhVqO7b7tlWQxM0foQGbc=; b=KRM
	A5LZdGOev6gUm3edGeCWJSvijHC9QWzIiR6DkUSvP+m8vEax+OIHNmbDyQCzLKy6ek9ZmqHr0y9/i
	0A0pbPaRDWiDiN+vgd+TPcLLYykqQ3GsDGCmFPJSaz0RFSNfnc82FSv6+2qndulmMUrZpPfhr5fwh
	176uYnVzjr4/uWkNIYPCEUEWmNEbKGIM2VCGyGWqXxIuyB3en+d+tT63OYHKeGckWzUPePgsyxdjG
	ic435FgcvX6BfbNT4LCLRmCp1T63Gio3+PnnhoQtr2I2U8SeYKNvAA7jdBuXzRHx84Hro7wHods9h
	4NlJinPbU+jvHPDroT2LganHBjVLlSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWgK-0000WQ-DT; Fri, 18 Oct 2019 18:08:56 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWed-0007hL-Pr
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=TJSOTBg5uxsGq0E3SQaQTNlPvSqo6dIF5AgA35J30g4=; b=hM1DJuTQokPQ
 i2+799Z//Rv9NMZ6HfIhzKDZURp+kzcuokqeciLIRjPe3Jnifg2g2gKUJjBhrR+7KeN4AcvBxxu1P
 2G51OlZcZOWB5iI8bRvGPgIvlNue6D/izFCbLjKFZh1aFdgzp15nCZXO9M67dqqmhgP/GIj6iyXed
 0rlKM=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iLWeb-0004H9-7v; Fri, 18 Oct 2019 18:07:09 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id AC1FD2743273; Fri, 18 Oct 2019 19:07:08 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Applied "spi: atmel: Configure GPIO per CS instead of by controller"
 to the spi tree
In-Reply-To: <20191017141846.7523-4-gregory.clement@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191018180708.AC1FD2743273@ypsilon.sirena.org.uk>
Date: Fri, 18 Oct 2019 19:07:08 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_110712_018875_59FBAEB9 
X-CRM114-Status: GOOD (  19.57  )
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

   spi: atmel: Configure GPIO per CS instead of by controller

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

From 585d18f7ebd1dba7400dcc7189a5f7223b821374 Mon Sep 17 00:00:00 2001
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Thu, 17 Oct 2019 16:18:42 +0200
Subject: [PATCH] spi: atmel: Configure GPIO per CS instead of by controller

Instead of setting up the GPIO configuration for the whole controller,
do it at CS level. It will allow to mix internal CS and GPIO CS, which
is not possible with the current implementation.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Link: https://lore.kernel.org/r/20191017141846.7523-4-gregory.clement@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-atmel.c | 32 ++++++++------------------------
 1 file changed, 8 insertions(+), 24 deletions(-)

diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index 6e08ae539bc0..b511df6a4846 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -275,7 +275,6 @@ struct atmel_spi {
 
 	bool			use_dma;
 	bool			use_pdc;
-	bool			use_cs_gpios;
 
 	bool			keep_cs;
 	bool			cs_active;
@@ -348,7 +347,7 @@ static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 		}
 
 		mr = spi_readl(as, MR);
-		if (as->use_cs_gpios)
+		if (asd->npcs_pin)
 			gpiod_set_value(asd->npcs_pin, 1);
 	} else {
 		u32 cpol = (spi->mode & SPI_CPOL) ? SPI_BIT(CPOL) : 0;
@@ -365,7 +364,7 @@ static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 
 		mr = spi_readl(as, MR);
 		mr = SPI_BFINS(PCS, ~(1 << spi->chip_select), mr);
-		if (as->use_cs_gpios && spi->chip_select != 0)
+		if (asd->npcs_pin && spi->chip_select != 0)
 			gpiod_set_value(asd->npcs_pin, 1);
 		spi_writel(as, MR, mr);
 	}
@@ -389,7 +388,7 @@ static void cs_deactivate(struct atmel_spi *as, struct spi_device *spi)
 
 	dev_dbg(&spi->dev, "DEactivate NPCS, mr %08x\n", mr);
 
-	if (!as->use_cs_gpios)
+	if (!asd->npcs_pin)
 		spi_writel(as, CR, SPI_BIT(LASTXFER));
 	else if (atmel_spi_is_v2(as) || spi->chip_select != 0)
 		gpiod_set_value(asd->npcs_pin, 0);
@@ -1176,7 +1175,7 @@ static int atmel_spi_setup(struct spi_device *spi)
 	as = spi_master_get_devdata(spi->master);
 
 	/* see notes above re chipselect */
-	if (!as->use_cs_gpios && (spi->mode & SPI_CS_HIGH)) {
+	if (!spi->cs_gpiod && (spi->mode & SPI_CS_HIGH)) {
 		dev_warn(&spi->dev, "setup: non GPIO CS can't be active-high\n");
 		return -EINVAL;
 	}
@@ -1186,9 +1185,9 @@ static int atmel_spi_setup(struct spi_device *spi)
 		csr |= SPI_BIT(CPOL);
 	if (!(spi->mode & SPI_CPHA))
 		csr |= SPI_BIT(NCPHA);
-	if (!as->use_cs_gpios)
-		csr |= SPI_BIT(CSAAT);
 
+	if (!spi->cs_gpiod)
+		csr |= SPI_BIT(CSAAT);
 	csr |= SPI_BF(DLYBS, 0);
 
 	word_delay_csr = atmel_word_delay_csr(spi, as);
@@ -1206,20 +1205,8 @@ static int atmel_spi_setup(struct spi_device *spi)
 		if (!asd)
 			return -ENOMEM;
 
-		/*
-		 * If use_cs_gpios is true this means that we have "cs-gpios"
-		 * defined in the device tree node so we should have
-		 * gotten the GPIO lines from the device tree inside the
-		 * SPI core. Warn if this is not the case but continue since
-		 * CS GPIOs are after all optional.
-		 */
-		if (as->use_cs_gpios) {
-			if (!spi->cs_gpiod) {
-				dev_err(&spi->dev,
-					"host claims to use CS GPIOs but no CS found in DT by the SPI core\n");
-			}
+		if (spi->cs_gpiod)
 			asd->npcs_pin = spi->cs_gpiod;
-		}
 
 		spi->controller_state = asd;
 	}
@@ -1551,13 +1538,10 @@ static int atmel_spi_probe(struct platform_device *pdev)
 	 * discovered by the SPI core when registering the SPI master
 	 * and assigned to each SPI device.
 	 */
-	as->use_cs_gpios = true;
 	if (atmel_spi_is_v2(as) &&
 	    pdev->dev.of_node &&
-	    !of_get_property(pdev->dev.of_node, "cs-gpios", NULL)) {
-		as->use_cs_gpios = false;
+	    !of_get_property(pdev->dev.of_node, "cs-gpios", NULL))
 		master->num_chipselect = 4;
-	}
 
 	as->use_dma = false;
 	as->use_pdc = false;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
