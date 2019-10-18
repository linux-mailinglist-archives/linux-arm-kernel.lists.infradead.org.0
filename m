Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A9ABDCD94
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 20:10:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=CblIgZZs0t743XTycrSPYTtdWnlL9bsXihdVGQbfb+E=; b=AhH
	/h3PPubHVKjKFeuCuyJsu5ty0XWBBp8lt2wmhlVU0xfDTuhwRhYHge++BS7Z3Ildvy90yiJkVjqoc
	Z6khfSEZ07MhbNFj3+YV4zAF+bqQK6+iF0iVOUfeAmnT5pYzMaYaTQDVD0beZof91Oj4wP7SaERxX
	HAkqq3MwqxBtXB9IuzlgNN/R7pKwhV7f4SCVl3pDCL+AuvHzcQcAi/EOuxw4s3YW03UZLS9u87tuJ
	J3Vcd/UvmPK61R34oy2xitjM2HpilP9Ov+X+Vtp9Fjws0hc18E9cFDBxXTEkjVC7ex5UKy0yTzeBL
	wS2pWKU9T6B5+LLF6Sw0nnd4RxdYNrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLWhg-0001fz-1w; Fri, 18 Oct 2019 18:10:20 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLWed-0007hO-QT
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 18:07:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=+ZlHeGfrpTjU6PQ+KNMsRurvdye1OzjdR9gSL9BV4SI=; b=H3r14kUnkG0l
 U1iBqWReaeJqBm21j0q+n2hHSJ0LuU3dI1tGjzx190rpeKfL1bJdIqtNpF6062wW5H11AjyBc+Pmc
 m2lOlH5B62G6ZdF2IxA6bDcvmikWRbw6WshgxPR8LjFpIWYFbeUUlmcSPFq1T+LpPWVTMDbWunVGs
 VBtdo=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iLWeb-0004HK-Ig; Fri, 18 Oct 2019 18:07:09 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 17FD42743259; Fri, 18 Oct 2019 19:07:09 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Gregory CLEMENT <gregory.clement@bootlin.com>
Subject: Applied "spi: atmel: Remove and fix erroneous comments" to the spi
 tree
In-Reply-To: <20191017141846.7523-2-gregory.clement@bootlin.com>
X-Patchwork-Hint: ignore
Message-Id: <20191018180709.17FD42743259@ypsilon.sirena.org.uk>
Date: Fri, 18 Oct 2019 19:07:09 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_110712_006984_43C34AB4 
X-CRM114-Status: GOOD (  15.34  )
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

   spi: atmel: Remove and fix erroneous comments

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

From 4d8672d17450b457c0dbbcfe9868438036b4647c Mon Sep 17 00:00:00 2001
From: Gregory CLEMENT <gregory.clement@bootlin.com>
Date: Thu, 17 Oct 2019 16:18:40 +0200
Subject: [PATCH] spi: atmel: Remove and fix erroneous comments

Since CSAAT functionality support has been added. Some comments become
wrong. Fix them to match the current driver behavior.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Link: https://lore.kernel.org/r/20191017141846.7523-2-gregory.clement@bootlin.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-atmel.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/spi/spi-atmel.c b/drivers/spi/spi-atmel.c
index e34ab587b980..7a17c3e2a8ee 100644
--- a/drivers/spi/spi-atmel.c
+++ b/drivers/spi/spi-atmel.c
@@ -312,11 +312,9 @@ static bool atmel_spi_is_v2(struct atmel_spi *as)
  * transmitted")  Not so!  Workaround uses nCSx pins as GPIOs; or newer
  * controllers have CSAAT and friends.
  *
- * Since the CSAAT functionality is a bit weird on newer controllers as
- * well, we use GPIO to control nCSx pins on all controllers, updating
- * MR.PCS to avoid confusing the controller.  Using GPIOs also lets us
- * support active-high chipselects despite the controller's belief that
- * only active-low devices/systems exists.
+ * Even controller newer than ar91rm9200, using GPIOs can make sens as
+ * it lets us support active-high chipselects despite the controller's
+ * belief that only active-low devices/systems exists.
  *
  * However, at91rm9200 has a second erratum whereby nCS0 doesn't work
  * right when driven with GPIO.  ("Mode Fault does not allow more than one
@@ -1193,8 +1191,6 @@ static int atmel_spi_setup(struct spi_device *spi)
 	if (!as->use_cs_gpios)
 		csr |= SPI_BIT(CSAAT);
 
-	/* DLYBS is mostly irrelevant since we manage chipselect using GPIOs.
-	 */
 	csr |= SPI_BF(DLYBS, 0);
 
 	word_delay_csr = atmel_word_delay_csr(spi, as);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
