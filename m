Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AA6E5D021
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 15:06:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=AUHfVE8xBPGRM/pBEaYpAG510omFJQBY7IEr/594lHE=; b=bBV
	mv8+YG3tfyWT5r9TmiJFpQXiD4ZqjiN7yNasczzY+k+ku2JNVneHkmeeDjIJPcCOTuwLbQY0YtXRx
	Ow+Z3URPIRHurkY+hTqPaGbnXDf1ioSzmiteLzxjOQOD4o8jFOGUKjQ6nXNrbD4RhlHU7LMaDqMNF
	X2VcH6ZNmPoQkcvqrSgKAfO3FooLzprWRa1PebZi6jA9sTEXGE4fbuqeQEibEzIuoCx/Ag3SDECJF
	UXx8AxNyIsk6SLQIDLt2PfIN+PygwW93D+OUzGYjzIkR3rdewUHNyhZKnmqrOtwPnrafOstxBI1qu
	KRA7TYtaSdZ/tNRTtEwyCLlbuG5MyUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiIUG-00059U-Gv; Tue, 02 Jul 2019 13:06:20 +0000
Received: from heliosphere.sirena.org.uk ([2a01:7e01::f03c:91ff:fed4:a3b6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiISw-00033n-Us
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 13:05:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=4tXMGhA9HB+xSbITfE6TXcIxJQpL64/y+Mh3Eq0Tq/g=; b=XIffDlh1p5vL
 4nxGkGeQpuB/DgBZ5GzhYwOwizqi7gzuvzg1xbnEHMzhPrQHAEDV6rR/IKAkMOjtY6qN8A/5g5YE0
 2hoANufXazBWI5hiMxjLdWQO3oDka+a5tUOyRa2biGZkg2S123i3AvNaboCKG10lvthR6VnEi06H/
 mnAR4=;
Received: from [2001:470:1f1d:6b5:7e7a:91ff:fede:4a45]
 (helo=finisterre.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <broonie@sirena.org.uk>)
 id 1hiISt-0002Og-Eb; Tue, 02 Jul 2019 13:04:55 +0000
Received: by finisterre.sirena.org.uk (Postfix, from userid 1000)
 id BCAC644004B; Tue,  2 Jul 2019 14:04:54 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Tudor Ambarus <tudor.ambarus@microchip.com>
Subject: Applied "spi: atmel-quadspi: void return type for atmel_qspi_init()"
 to the spi tree
In-Reply-To: <20190628153009.7571-2-tudor.ambarus@microchip.com>
X-Patchwork-Hint: ignore
Message-Id: <20190702130454.BCAC644004B@finisterre.sirena.org.uk>
Date: Tue,  2 Jul 2019 14:04:54 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_060459_134749_D91EF557 
X-CRM114-Status: GOOD (  14.75  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: alexandre.belloni@bootlin.com, Tudor.Ambarus@microchip.com,
 mdeneen@gmail.com, linux-spi@vger.kernel.org, Ludovic.Desroches@microchip.com,
 Mark Brown <broonie@kernel.org>, Claudiu.Beznea@microchip.com,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: atmel-quadspi: void return type for atmel_qspi_init()

has been applied to the spi tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.3

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

From 5b74e9a306267be3b371b309faef8626b18e6423 Mon Sep 17 00:00:00 2001
From: Tudor Ambarus <tudor.ambarus@microchip.com>
Date: Fri, 28 Jun 2019 15:30:32 +0000
Subject: [PATCH] spi: atmel-quadspi: void return type for atmel_qspi_init()

commit 2d30ac5ed633 ("mtd: spi-nor: atmel-quadspi: Use spi-mem interface for atmel-quadspi driver")
removed the error path from atmel_qspi_init(), but not changed the
function's return type. Set void return type for atmel_qspi_init().

Signed-off-by: Tudor Ambarus <tudor.ambarus@microchip.com>
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/atmel-quadspi.c | 11 ++++-------
 1 file changed, 4 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/atmel-quadspi.c b/drivers/spi/atmel-quadspi.c
index 9f24d5f0b431..32eb7447c31a 100644
--- a/drivers/spi/atmel-quadspi.c
+++ b/drivers/spi/atmel-quadspi.c
@@ -405,7 +405,7 @@ static int atmel_qspi_setup(struct spi_device *spi)
 	return 0;
 }
 
-static int atmel_qspi_init(struct atmel_qspi *aq)
+static void atmel_qspi_init(struct atmel_qspi *aq)
 {
 	/* Reset the QSPI controller */
 	writel_relaxed(QSPI_CR_SWRST, aq->regs + QSPI_CR);
@@ -416,8 +416,6 @@ static int atmel_qspi_init(struct atmel_qspi *aq)
 
 	/* Enable the QSPI controller */
 	writel_relaxed(QSPI_CR_QSPIEN, aq->regs + QSPI_CR);
-
-	return 0;
 }
 
 static irqreturn_t atmel_qspi_interrupt(int irq, void *dev_id)
@@ -536,9 +534,7 @@ static int atmel_qspi_probe(struct platform_device *pdev)
 	if (err)
 		goto disable_qspick;
 
-	err = atmel_qspi_init(aq);
-	if (err)
-		goto disable_qspick;
+	atmel_qspi_init(aq);
 
 	err = spi_register_controller(ctrl);
 	if (err)
@@ -587,7 +583,8 @@ static int __maybe_unused atmel_qspi_resume(struct device *dev)
 	clk_prepare_enable(aq->pclk);
 	clk_prepare_enable(aq->qspick);
 
-	return atmel_qspi_init(aq);
+	atmel_qspi_init(aq);
+	return 0;
 }
 
 static SIMPLE_DEV_PM_OPS(atmel_qspi_pm_ops, atmel_qspi_suspend,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
