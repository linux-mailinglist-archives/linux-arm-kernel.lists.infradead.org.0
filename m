Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3975CDCD7D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:08:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=d9dEVmLpJD/W/z3FiUQJ/kYxohNbwcY3ZJD/JbERnTY=; b=LU+
	ZFIcVkdx46OiydlwA1OMvIgsACAn6HRCkHgkSizvQcTyFZ2kGkoxbLWUBfcD5cxR1mOCGtKYNSxUN
	Fc0uwglS0DGCRdai4h4X1Hj546Qn1RHpjqDtvwoS/DwG1H9UJfEnUc9q4FKg4Hi8WY0gOi334QFP8
	UAWakKHLZECzVHiSJ48TGEbwdgKnbIW2NMD++gkpg9PNOkyrbCchExsR7g3iAiez739pUuDuw1Zet
	zQT2IhoXeAzrEwgt/84WK55qHEg9akvHr20qi3EcuOgD65561Tg8wgu4a1h0FiWQdo4lmDx2RXBtO
	fyK4x9MMuQRReFSUOS+82HhHT1X+IhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWg5-0000HJ-3R; Fri, 18 Oct 2019 18:08:41 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWed-0007gf-83
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=6OLawQSqK81xzP4HuvY/4eKlvEfofNZTR3ny2vEIaSE=; b=R7V5aLOUCrwT
 iSzdAwE5I/Q1zcSDYocrvBhgoOUp0LB51unN2EIya735X7smxBIscTp+co/GgGwmqm1YJKqlddFxD
 OcjrJxAVxa+KxL5N9fEmEdp73t4uqyFgBuYQdz3cL1o9oFcOkDvzYLIB2CLhS9er5h9NtLiZDRbUP
 Lh+Cg=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iLWea-0004H3-QA; Fri, 18 Oct 2019 18:07:08 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 500EB2743259; Fri, 18 Oct 2019 19:07:08 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Applied "spi: atmel: Remove useless private field" to the spi tree
In-Reply-To: <20191017141846.7523-5-gregory.clement@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191018180708.500EB2743259@ypsilon.sirena.org.uk>
Date: Fri, 18 Oct 2019 19:07:08 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_110711_416007_15469002 
X-CRM114-Status: GOOD (  15.51  )
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

   spi: atmel: Remove useless private field

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

From 60086e23e64f7b3b60d957471cfd10948e25648e Mon Sep 17 00:00:00 2001
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Thu, 17 Oct 2019 16:18:43 +0200
Subject: [PATCH] spi: atmel: Remove useless private field

Since the conversion to GPIO descriptor, the GPIO used as chip select,
can be directly access from the spi_device struct. So there is no need
to keep the field npcs_pin.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Link: https://lore.kernel.org/r/20191017141846.7523-5-gregory.clement@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-atmel.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index b511df6a4846..19600de40422 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -284,7 +284,6 @@ struct atmel_spi {
 
 /* Controller-specific per-slave state */
 struct atmel_spi_device {
-	struct gpio_desc	*npcs_pin;
 	u32			csr;
 };
 
@@ -347,8 +346,8 @@ static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 		}
 
 		mr = spi_readl(as, MR);
-		if (asd->npcs_pin)
-			gpiod_set_value(asd->npcs_pin, 1);
+		if (spi->cs_gpiod)
+			gpiod_set_value(spi->cs_gpiod, 1);
 	} else {
 		u32 cpol = (spi->mode & SPI_CPOL) ? SPI_BIT(CPOL) : 0;
 		int i;
@@ -364,8 +363,8 @@ static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 
 		mr = spi_readl(as, MR);
 		mr = SPI_BFINS(PCS, ~(1 << spi->chip_select), mr);
-		if (asd->npcs_pin && spi->chip_select != 0)
-			gpiod_set_value(asd->npcs_pin, 1);
+		if (spi->cs_gpiod && spi->chip_select != 0)
+			gpiod_set_value(spi->cs_gpiod, 1);
 		spi_writel(as, MR, mr);
 	}
 
@@ -374,7 +373,6 @@ static void cs_activate(struct atmel_spi *as, struct spi_device *spi)
 
 static void cs_deactivate(struct atmel_spi *as, struct spi_device *spi)
 {
-	struct atmel_spi_device *asd = spi->controller_state;
 	u32 mr;
 
 	/* only deactivate *this* device; sometimes transfers to
@@ -388,10 +386,10 @@ static void cs_deactivate(struct atmel_spi *as, struct spi_device *spi)
 
 	dev_dbg(&spi->dev, "DEactivate NPCS, mr %08x\n", mr);
 
-	if (!asd->npcs_pin)
+	if (!spi->cs_gpiod)
 		spi_writel(as, CR, SPI_BIT(LASTXFER));
 	else if (atmel_spi_is_v2(as) || spi->chip_select != 0)
-		gpiod_set_value(asd->npcs_pin, 0);
+		gpiod_set_value(spi->cs_gpiod, 0);
 }
 
 static void atmel_spi_lock(struct atmel_spi *as) __acquires(&as->lock)
@@ -1205,9 +1203,6 @@ static int atmel_spi_setup(struct spi_device *spi)
 		if (!asd)
 			return -ENOMEM;
 
-		if (spi->cs_gpiod)
-			asd->npcs_pin = spi->cs_gpiod;
-
 		spi->controller_state = asd;
 	}
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
