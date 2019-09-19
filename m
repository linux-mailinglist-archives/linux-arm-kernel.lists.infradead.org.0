Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB373B7E67
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 17:41:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=nvutGW2jcFNCI2M+wgjJ6kvNQW/OfPuAQnGNolHZRzM=; b=rmcOJFCVemi70L
	y2zpJH266sE61vTSGxuvLa5cj8z5kTc9zIjog1XaAFtCvqwUcMKkwVEJgRfCOJ2ZiP6qq0yELEXq9
	ha2n6YqJ6i4MUnYIFeKFbH/5iU8i+1qh3PrTCc0swOxdnuRfuou8iiLumP7Xs9p73O9IVzjXJ0zUZ
	Z2HiaEIfNL7k3DuUX9GgyEd/rDDj30JWimsY0bc4gTudXsMxNeSh082RlrrndQiv5/NKpUYxri54y
	zqQNjVzw+W924Jz7j7wHojB5j+P11kdxXAwMFigEI0CuNyEMHAamYKsB3RLvjp/vFJaH9FQkK/nqo
	s6RMTZeyRDvJBwMhlh9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAyYG-0002WQ-Tm; Thu, 19 Sep 2019 15:41:02 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAyY2-0002U0-H9
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 15:40:48 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id E80E8C0002;
 Thu, 19 Sep 2019 15:40:41 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org, Nicolas Ferre <nicolas.ferre@microchip.com>
Subject: [PATCH] spi: atmel: Remove AVR32 leftover
Date: Thu, 19 Sep 2019 17:40:34 +0200
Message-Id: <20190919154034.7489-1-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_084046_749765_2954FC47 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
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
Cc: Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org,
 Gregory CLEMENT <gregory.clement@bootlin.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AV32 support has been from the kernel a few release ago, but there was
still some specific macro for this architecture in this driver. Lets
remove it.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
---
 drivers/spi/spi-atmel.c | 24 ------------------------
 1 file changed, 24 deletions(-)

diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index bb94f5927819..de1e1861a70c 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -222,37 +222,13 @@
 	  | SPI_BF(name, value))
 
 /* Register access macros */
-#ifdef CONFIG_AVR32
-#define spi_readl(port, reg) \
-	__raw_readl((port)->regs + SPI_##reg)
-#define spi_writel(port, reg, value) \
-	__raw_writel((value), (port)->regs + SPI_##reg)
-
-#define spi_readw(port, reg) \
-	__raw_readw((port)->regs + SPI_##reg)
-#define spi_writew(port, reg, value) \
-	__raw_writew((value), (port)->regs + SPI_##reg)
-
-#define spi_readb(port, reg) \
-	__raw_readb((port)->regs + SPI_##reg)
-#define spi_writeb(port, reg, value) \
-	__raw_writeb((value), (port)->regs + SPI_##reg)
-#else
 #define spi_readl(port, reg) \
 	readl_relaxed((port)->regs + SPI_##reg)
 #define spi_writel(port, reg, value) \
 	writel_relaxed((value), (port)->regs + SPI_##reg)
-
-#define spi_readw(port, reg) \
-	readw_relaxed((port)->regs + SPI_##reg)
 #define spi_writew(port, reg, value) \
 	writew_relaxed((value), (port)->regs + SPI_##reg)
 
-#define spi_readb(port, reg) \
-	readb_relaxed((port)->regs + SPI_##reg)
-#define spi_writeb(port, reg, value) \
-	writeb_relaxed((value), (port)->regs + SPI_##reg)
-#endif
 /* use PIO for small transfers, avoiding DMA setup/teardown overhead and
  * cache operations; better heuristics consider wordsize and bitrate.
  */
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
