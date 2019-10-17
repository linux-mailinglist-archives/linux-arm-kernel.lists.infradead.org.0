Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 790ADDAFD1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 16:21:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ChGe/BJgjh9y0pJ04bhg5LrMxXuRanOuGDYRqFbpRkc=; b=HZTzKD6d27iDhz
	QhX88crp85CHGSk+JrRO+fJTsl+X9U40jwQRH/wQX8NnDQIHCK6AjBhylV4rJZ/0Jt2igXg5jrAAX
	K7jG0BpsWtp2B7Q0MDFKmD2qzu9cK0uMb/BCxN1BvuegHdgWOUNF8A+JVyKBB8JhfDZqmB3NnGLih
	GBq1d6NsjfwkEyRbFnAujxkuvC+M0Lq+UVMW2SGm7fst21+y0fvD6UkXtr1AdHDfOLmx+lNmixDwJ
	dBxzVVCLkN21rBv/O8qlr/jxy5NPUqtaGSsqE67t/D/8/NwjW9wurGt2B+qzZpP3vD5VEJCfpVMmI
	MPPTJ+vDSYH23zXy5Xyw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL6ec-00034f-Vc; Thu, 17 Oct 2019 14:21:27 +0000
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL6dj-0002XE-JJ
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 14:20:33 +0000
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: gregory.clement@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 905F2100008;
 Thu, 17 Oct 2019 14:20:21 +0000 (UTC)
From: Gregory CLEMENT <gregory.clement@bootlin.com>
To: Mark Brown <broonie@kernel.org>, linux-spi@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] spi: atmel: Remove and fix erroneous comments
Date: Thu, 17 Oct 2019 16:18:40 +0200
Message-Id: <20191017141846.7523-2-gregory.clement@bootlin.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191017141846.7523-1-gregory.clement@bootlin.com>
References: <20191017141846.7523-1-gregory.clement@bootlin.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_072031_774023_CC2A9B32 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
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

Since CSAAT functionality support has been added. Some comments become
wrong. Fix them to match the current driver behavior.

Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
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
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
