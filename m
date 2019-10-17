Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 703C4DAFD5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:22:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pMMjqi4QfaG5g0gf4nPXcS2hUVdOlG4hyXOZ9mD7LoQ=; b=MW39qiQC1DTP4P
	Y8+//+clzaC+RZMCi+90jQH5H9I59pOpQSiqT3VVe3K6PzagdGIs0VE50XFmv2NJ+myXopIea4Dxj
	jlg761QrnUeu2ZqUrRq4nSC46ZnKsE/J/7I4s+ldaOnenlUmY3+iWsZLs6NV7/Ljf04uSSJbSx4eN
	FNSzGaR9B6QaNiFanyOrliit2wv3EBY6Zo0IMJiBDjsE/zoPMn9czFXv3wFEMENbVJllsSBE5u7YF
	hTX9Il/yjgWMwHnkFrJF1087ljxyx8D8VDcYmmdmiL+r2Z9fpTiINm8+7+GXXaQpIyYCBAdetjmMB
	eU7dq1o/yPG9Iv67jLOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6fH-0003qh-Hn; Thu, 17 Oct 2019 14:22:07 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6dj-0002Y3-V5
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:20:35 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 2CC1FC000E;
 Thu, 17 Oct 2019 14:20:24 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 3/7] spi: atmel: Configure GPIO per CS instead of by controller
Date: Thu, 17 Oct 2019 16:18:42 +0200
Message-Id: <20191017141846.7523-4-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191017141846.7523-1-gregory.clement@bootlin.com>
References: <20191017141846.7523-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072032_268622_E7E7163A 
X-CRM114-Status: GOOD (  14.40  )
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

Instead of setting up the GPIO configuration for the whole controller,
do it at CS level. It will allow to mix internal CS and GPIO CS, which
is not possible with the current implementation.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
