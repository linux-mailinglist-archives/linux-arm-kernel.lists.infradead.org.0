Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C23DDAFD0
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:21:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bNUWcUG1ce557dnkO6OC5DYDUiIuhcBxs0BBjICj9gE=; b=MN5EAWkDtCxXEc
	ULOQ+pGwmv9ZArgy3b6S6a/ck0XN2mAt3u5sDzkdZS8rjcuK9XRfyfcoWsLLJ4x4JOzGWiBVugMzM
	kTrzYKX9UTZOBZyrjqZgGLKGqFdhGQmndKbzzagFBIvOUCbT6AX1lY0v3l/j6ZJBjVXpDNFIOH6jz
	6+5ptdUHQXUYj3cuRnmQG5NIOjp+R1nQ4vGAHfRWZ9cWDTcPDGCSW6ahlmspxYZDaVIsh0/nIfh6G
	XBaIpAR1oGxUueER/X+SsmIOzaH+krJ3GMkHxhXdy3ocbkEWVPnDu8iOuRn0aPruYz0Xk9VjLVcMI
	IrlP2IhYqBTlPGm3nl2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6eD-0002ku-Io; Thu, 17 Oct 2019 14:21:01 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6dh-0002Xc-K0
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:20:31 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 8B5BF20016;
 Thu, 17 Oct 2019 14:20:27 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 6/7] spi: atmel: Improve and fix GPIO CS usage
Date: Thu, 17 Oct 2019 16:18:45 +0200
Message-Id: <20191017141846.7523-7-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191017141846.7523-1-gregory.clement@bootlin.com>
References: <20191017141846.7523-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072029_926747_C0A6E005 
X-CRM114-Status: GOOD (  18.41  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.200 listed in list.dnswl.org]
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

In the previous implementation of this driver, the index of the GPIO
used as CS was linked to the offset of the CS register used to
configure the transfer.

With this new implementation the first CS register not used by
internal CS is associated to all the GPIO CS. It allows to not be
anymore limited to have only 4 CS managed, now it is possible to have
in the same time until 3 internal CS and no more limit for the CS
GPIO.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/spi/spi-atmel.c | 74 ++++++++++++++++++++++++++++++++++++-----
 1 file changed, 66 insertions(+), 8 deletions(-)

diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index 1ff5b20eabf7..ac5e2ddf9e1b 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -280,6 +280,8 @@ struct atmel_spi {
 	bool			cs_active;
 
 	u32			fifo_size;
+	u8			native_cs_free;
+	u8			native_cs_for_gpio;
 };
 
 /* Controller-specific per-slave state */
@@ -324,23 +326,29 @@ static bool atmel_spi_is_v2(struct atmel_spi *as)
 static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 {
 	struct atmel_spi_device *asd = spi->controller_state;
+	int chip_select;
 	u32 mr;
 
+	if (spi->cs_gpiod)
+		chip_select = as->native_cs_for_gpio;
+	else
+		chip_select = spi->chip_select;
+
 	if (atmel_spi_is_v2(as)) {
-		spi_writel(as, CSR0 + 4 * spi->chip_select, asd->csr);
+		spi_writel(as, CSR0 + 4 * chip_select, asd->csr);
 		/* For the low SPI version, there is a issue that PDC transfer
 		 * on CS1,2,3 needs SPI_CSR0.BITS config as SPI_CSR1,2,3.BITS
 		 */
 		spi_writel(as, CSR0, asd->csr);
 		if (as->caps.has_wdrbt) {
 			spi_writel(as, MR,
-					SPI_BF(PCS, ~(0x01 << spi->chip_select))
+					SPI_BF(PCS, ~(0x01 << chip_select))
 					| SPI_BIT(WDRBT)
 					| SPI_BIT(MODFDIS)
 					| SPI_BIT(MSTR));
 		} else {
 			spi_writel(as, MR,
-					SPI_BF(PCS, ~(0x01 << spi->chip_select))
+					SPI_BF(PCS, ~(0x01 << chip_select))
 					| SPI_BIT(MODFDIS)
 					| SPI_BIT(MSTR));
 		}
@@ -362,7 +370,7 @@ static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 		}
 
 		mr = spi_readl(as, MR);
-		mr = SPI_BFINS(PCS, ~(1 << spi->chip_select), mr);
+		mr = SPI_BFINS(PCS, ~(1 << chip_select), mr);
 		if (spi->cs_gpiod && spi->chip_select != 0)
 			gpiod_set_value(spi->cs_gpiod, 1);
 		spi_writel(as, MR, mr);
@@ -373,13 +381,19 @@ static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 
 static void cs_deactivate(struct atmel_spi *as, struct spi_device *spi)
 {
+	int chip_select;
 	u32 mr;
 
+	if (spi->cs_gpiod)
+		chip_select = as->native_cs_for_gpio;
+	else
+		chip_select = spi->chip_select;
+
 	/* only deactivate *this* device; sometimes transfers to
 	 * another device may be active when this routine is called.
 	 */
 	mr = spi_readl(as, MR);
-	if (~SPI_BFEXT(PCS, mr) & (1 << spi->chip_select)) {
+	if (~SPI_BFEXT(PCS, mr) & (1 << chip_select)) {
 		mr = SPI_BFINS(PCS, 0xf, mr);
 		spi_writel(as, MR, mr);
 	}
@@ -815,6 +829,12 @@ static int atmel_spi_set_xfer_speed(struct atmel_spi *as,
 {
 	u32			scbr, csr;
 	unsigned long		bus_hz;
+	int chip_select;
+
+	if (spi->cs_gpiod)
+		chip_select = as->native_cs_for_gpio;
+	else
+		chip_select = spi->chip_select;
 
 	/* v1 chips start out at half the peripheral bus speed. */
 	bus_hz = as->spi_clk;
@@ -843,9 +863,9 @@ static int atmel_spi_set_xfer_speed(struct atmel_spi *as,
 			xfer->speed_hz, scbr, bus_hz);
 		return -EINVAL;
 	}
-	csr = spi_readl(as, CSR0 + 4 * spi->chip_select);
+	csr = spi_readl(as, CSR0 + 4 * chip_select);
 	csr = SPI_BFINS(SCBR, scbr, csr);
-	spi_writel(as, CSR0 + 4 * spi->chip_select, csr);
+	spi_writel(as, CSR0 + 4 * chip_select, csr);
 
 	return 0;
 }
@@ -1162,12 +1182,32 @@ static int atmel_word_delay_csr(struct spi_device *spi, struct atmel_spi *as)
 	return (as->spi_clk / 1000000 * value) >> 5;
 }
 
+static void initialize_native_cs_for_gpio(struct atmel_spi *as)
+{
+	int i;
+	struct spi_master *master = platform_get_drvdata(as->pdev);
+
+	if (!as->native_cs_free)
+		return; /* already initialized */
+
+	if (!master->cs_gpiods)
+		return; /* No CS GPIO */
+
+	for (i = 0; i < 4; i++)
+		if (master->cs_gpiods[i])
+			as->native_cs_free |= BIT(i);
+
+	if (as->native_cs_free)
+		as->native_cs_for_gpio = ffs(as->native_cs_free);
+}
+
 static int atmel_spi_setup(struct spi_device *spi)
 {
 	struct atmel_spi	*as;
 	struct atmel_spi_device	*asd;
 	u32			csr;
 	unsigned int		bits = spi->bits_per_word;
+	int chip_select;
 	int			word_delay_csr;
 
 	as = spi_master_get_devdata(spi->master);
@@ -1178,6 +1218,24 @@ static int atmel_spi_setup(struct spi_device *spi)
 		return -EINVAL;
 	}
 
+	/* Setup() is called during spi_register_controller(aka
+	 * spi_register_master) but after all membmers of the cs_gpiod
+	 * array have been filled, so we can looked for which native
+	 * CS will be free for using with GPIO
+	 */
+	initialize_native_cs_for_gpio(as);
+
+	if (spi->cs_gpiod && as->native_cs_free) {
+		dev_err(&spi->dev,
+			"No native CS available to support this GPIO CS\n");
+		return -EBUSY;
+	}
+
+	if (spi->cs_gpiod)
+		chip_select = as->native_cs_for_gpio;
+	else
+		chip_select = spi->chip_select;
+
 	csr = SPI_BF(BITS, bits - 8);
 	if (spi->mode & SPI_CPOL)
 		csr |= SPI_BIT(CPOL);
@@ -1213,7 +1271,7 @@ static int atmel_spi_setup(struct spi_device *spi)
 		bits, spi->mode, spi->chip_select, csr);
 
 	if (!atmel_spi_is_v2(as))
-		spi_writel(as, CSR0 + 4 * spi->chip_select, csr);
+		spi_writel(as, CSR0 + 4 * chip_select, csr);
 
 	return 0;
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
