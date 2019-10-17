Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54638DAFD3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:21:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P0z0K7YUaqSzk12qieWEJjRc0/tu9Dwm6qJR2V8soAY=; b=iy6cOhu462iMNm
	lmdfQBCPI7WcOPEmTlcDt9S0CUCcYsoeOLvj99ETWYz2xC+Mj5SmEctpYgVoiUWhaV0LNbNIZvnfI
	7KudFaldQxUPRywLUz7oLxkSA07LOVTs5wL/YSAZ4t51gQ1Ph2eeiOD3fnYIOdjbywVJJ4QUAEEkl
	CkXZcRC+4jQn+MOx2ikl98I3clf0kWv0ZwyBAcZ1sGbXdkU7MTYXmzuKbqvHjqM9u9uj+HL1qhRXN
	bIetpgNAwou/CrgywOLMYRQOrw16dt9mZcbG1fkHSaIUC1OrtVFGvSI/3ByPDj4wlhjFFTPuS0KXo
	Tg8jOocadXHEI6Xt10hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6en-0003Kn-7A; Thu, 17 Oct 2019 14:21:37 +0000
Received: from relay7-d.mail.gandi.net ([217.70.183.200])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6dj-0002Wr-JU
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:20:33 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay7-d.mail.gandi.net (Postfix) with ESMTPSA id 4201F20009;
 Thu, 17 Oct 2019 14:20:25 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 4/7] spi: atmel: Remove useless private field
Date: Thu, 17 Oct 2019 16:18:43 +0200
Message-Id: <20191017141846.7523-5-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191017141846.7523-1-gregory.clement@bootlin.com>
References: <20191017141846.7523-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072031_772175_BD084D31 
X-CRM114-Status: GOOD (  10.78  )
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

Since the conversion to GPIO descriptor, the GPIO used as chip select,
can be directly access from the spi_device struct. So there is no need
to keep the field npcs_pin.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
