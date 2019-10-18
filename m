Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8AEC9DCD8B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:09:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=scE+yri36yiEfK1Ne4SXoRsYXJoIDIvHIfDJR07f/DY=; b=c31
	O/j1DgqwNwBenP1wtluqfKiDo/bOKhYpk0O7f/CDXgopX8tpwrqZ6Y0V4ViHnX1pm4fHcBqAXusIW
	tACJ00wox8wy89LjTPmCb/a522iAgzpn4DWxP2fEMoZQWEtU85ebz2vHxFGUpvZGl+jfhutP8euAb
	SKV62eslNHmYsk10DncSj67CBWlX/9xMPKLZS0HwhVlZahTQ5mQFLYQ7RZ+Cgj5780JbmfItFzAFR
	JC9rnxQIn2GZwTmIFSBpA152ID00Cs74XTYTaCudINLV37eFkWnpCWopu378vZf6Sc15Y1TadF4p2
	n8sAoCkAHCECCk88csPjry6ybqLps9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWgb-0000ki-Um; Fri, 18 Oct 2019 18:09:13 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWed-0007gs-80
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=GVxUp0/KUCi90XoeEPGKQInOGTJewG5QS+RykxGcVFI=; b=KOTpvf6yYH+u
 NmqVnVuCl8jsSJZ2jkdcrM0tVR/aVvf561LVnAujM9ykg0oqH0a5SUajYDYU+Cz8Kqe0lenHiuazZ
 8f/+pHokg4eUKvk3zzAfRw0oun6m2NjbkzeIFpPrvjg9mYtMsfcB9D8plsu77PQdaSGPYx9iJGNyE
 oBLAY=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iLWea-0004Gx-FL; Fri, 18 Oct 2019 18:07:08 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id E63F92743273; Fri, 18 Oct 2019 19:07:07 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Applied "spi: atmel: Improve and fix GPIO CS usage" to the spi tree
In-Reply-To: <20191017141846.7523-7-gregory.clement@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191018180707.E63F92743273@ypsilon.sirena.org.uk>
Date: Fri, 18 Oct 2019 19:07:07 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_110711_577422_2EF4DE0F 
X-CRM114-Status: GOOD (  23.00  )
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

   spi: atmel: Improve and fix GPIO CS usage

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

From 57e3137710443a3227a54c425b9c606425678c8f Mon Sep 17 00:00:00 2001
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Thu, 17 Oct 2019 16:18:45 +0200
Subject: [PATCH] spi: atmel: Improve and fix GPIO CS usage

In the previous implementation of this driver, the index of the GPIO
used as CS was linked to the offset of the CS register used to
configure the transfer.

With this new implementation the first CS register not used by
internal CS is associated to all the GPIO CS. It allows to not be
anymore limited to have only 4 CS managed, now it is possible to have
in the same time until 3 internal CS and no more limit for the CS
GPIO.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Link: https://lore.kernel.org/r/20191017141846.7523-7-gregory.clement@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
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
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
