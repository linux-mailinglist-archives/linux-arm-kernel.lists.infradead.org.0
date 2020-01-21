Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 570E3144337
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:29:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=2wqlQXSnbEc8zpYCNut9sP4Ef+ITrowN8AGM3bdupV0=; b=juC
	tnK/bHpOseM8ltv4YK6qHo6el6olOJxeHQtIbu2bbpjXmG6rq011pTMBI9Y1PxzQI+n0K0O2nIKbI
	ibYSAhnbFlrbWikRnDcbjQ8nhtOxl0PwmNO2O3Av4LHF8c4aJIf9ymSF9cWedjk4QTTFloGq5su0x
	a7qsHm5Nt/oezmaZ+U1o5IGW3FdknLWr3FMpG+NrgrPfJSeguOjtV/Z4CQUN9PO5xZARSYaVusk4C
	fyv/3ghkgXDn+FKWdUTa7YT4tbR0qfwREN8cV40BMXRteBDy6fx2yeZ3i8yUQfOLaPZ1WNI0xCMGW
	2JyQUFixGGBSjYkwaVyb+tluwjSAu3g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxLH-0006GC-EF; Tue, 21 Jan 2020 17:29:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxL3-0006Ew-7s
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:29:22 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A3A17328;
 Tue, 21 Jan 2020 09:29:16 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 20E3B3F6C4;
 Tue, 21 Jan 2020 09:29:15 -0800 (PST)
Date: Tue, 21 Jan 2020 17:29:14 +0000
From: Mark Brown <broonie@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Applied "spi: pxa2xx: Avoid touching SSCR0_SSE on MMP2" to the spi
 tree
In-Reply-To: <20200118094031.327373-1-lkundrak@v3.sk>
Message-Id: <applied-20200118094031.327373-1-lkundrak@v3.sk>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_092917_367763_38F2F3E9 
X-CRM114-Status: GOOD (  20.20  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-kernel@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   spi: pxa2xx: Avoid touching SSCR0_SSE on MMP2

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

From 29d7e05c5f75fc2ebf3608743b6809aa0ff56800 Mon Sep 17 00:00:00 2001
From: Lubomir Rintel <lkundrak@v3.sk>
Date: Sat, 18 Jan 2020 10:40:31 +0100
Subject: [PATCH] spi: pxa2xx: Avoid touching SSCR0_SSE on MMP2

A read from a Winbond W25Q32FV SPI NOR memory chip on my MMP2 returns
wrong data.

It seems like SSE doesn't do the right thing on MMP2 at all. After
enabling the SPI port back again, the FIFO reads return garbage. Things
can be brought back to order by telling the PMU to reset the block.

Here's a good transaction with said chip:

  # busybox devmem 0xd4035000 32 0x00001987 # SSCR0
  # echo 0 >/sys/class/gpio/gpio46/value    # (assert CS)
  # busybox devmem 0xd4035010 32 0x0000009f # SSDR (read ID command)
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010               # SSDR
  0x000000ff
  # busybox devmem 0xd4035010               # SSDR
  0x000000ef                                # Correct response
  # busybox devmem 0xd4035010               # SSDR
  0x00000040
  # busybox devmem 0xd4035010               # SSDR
  0x00000016
  # busybox devmem 0xd4035010               # SSDR
  0x00000000
  # busybox devmem 0xd4035010               # SSDR
  0x00000000
  # busybox devmem 0xd4035010               # SSDR
  0x00000000
  # echo 1 >/sys/class/gpio/gpio46/value # (deassert CS)
  #

Flipping off an on SSE, then running another transaction:

  # busybox devmem 0xd4035000 32 0x00001907 # SSCR0, SSE off
  # busybox devmem 0xd4035000 32 0x00001987 # SSCR0, SSE on
  # echo 0 >/sys/class/gpio/gpio46/value    # (assert CS)
  # busybox devmem 0xd4035010 32 0x0000009f # SSDR (read ID command)
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010 32 0x00000000 # SSDR
  # busybox devmem 0xd4035010               # SSDR
  0x000000ff
  # busybox devmem 0xd4035010               # SSDR
  0x000000ff                                # Garbage!
  # busybox devmem 0xd4035010               # SSDR
  0x000000ff                                # Oh no
  # busybox devmem 0xd4035010               # SSDR
  0x000000ff
  # busybox devmem 0xd4035010               # SSDR
  0x000000ff
  # busybox devmem 0xd4035010               # SSDR
  0x000000ff
  # busybox devmem 0xd4035010               # SSDR
  0x000000ff
  # echo 1 >/sys/class/gpio/gpio46/value # (deassert CS)
  #

Sometimes the response is not just ones, but something that looks like
bits of a response from a previous transaction.

I can't see a fix other than not touching the SSE altogether after the
device is first brought up.

Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
Link: https://lore.kernel.org/r/20200118094031.327373-1-lkundrak@v3.sk
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 drivers/spi/spi-pxa2xx.c | 28 +++++++++++++++++-----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 8114d3289fdc..0408782c7ed0 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -461,6 +461,16 @@ int pxa2xx_spi_flush(struct driver_data *drv_data)
 	return limit;
 }
 
+static void pxa2xx_spi_off(struct driver_data *drv_data)
+{
+	/* On MMP, disabling SSE seems to corrupt the rx fifo */
+	if (drv_data->ssp_type == MMP2_SSP)
+		return;
+
+	pxa2xx_spi_write(drv_data, SSCR0,
+			 pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);
+}
+
 static int null_writer(struct driver_data *drv_data)
 {
 	u8 n_bytes = drv_data->n_bytes;
@@ -587,8 +597,7 @@ static void int_error_stop(struct driver_data *drv_data, const char* msg)
 	if (!pxa25x_ssp_comp(drv_data))
 		pxa2xx_spi_write(drv_data, SSTO, 0);
 	pxa2xx_spi_flush(drv_data);
-	pxa2xx_spi_write(drv_data, SSCR0,
-			 pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);
+	pxa2xx_spi_off(drv_data);
 
 	dev_err(&drv_data->pdev->dev, "%s\n", msg);
 
@@ -686,8 +695,7 @@ static irqreturn_t interrupt_transfer(struct driver_data *drv_data)
 
 static void handle_bad_msg(struct driver_data *drv_data)
 {
-	pxa2xx_spi_write(drv_data, SSCR0,
-			 pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);
+	pxa2xx_spi_off(drv_data);
 	pxa2xx_spi_write(drv_data, SSCR1,
 			 pxa2xx_spi_read(drv_data, SSCR1) & ~drv_data->int_cr1);
 	if (!pxa25x_ssp_comp(drv_data))
@@ -1062,7 +1070,8 @@ static int pxa2xx_spi_transfer_one(struct spi_controller *controller,
 	    || (pxa2xx_spi_read(drv_data, SSCR1) & change_mask)
 	    != (cr1 & change_mask)) {
 		/* stop the SSP, and update the other bits */
-		pxa2xx_spi_write(drv_data, SSCR0, cr0 & ~SSCR0_SSE);
+		if (drv_data->ssp_type != MMP2_SSP)
+			pxa2xx_spi_write(drv_data, SSCR0, cr0 & ~SSCR0_SSE);
 		if (!pxa25x_ssp_comp(drv_data))
 			pxa2xx_spi_write(drv_data, SSTO, chip->timeout);
 		/* first set CR1 without interrupt and service enables */
@@ -1118,8 +1127,7 @@ static int pxa2xx_spi_slave_abort(struct spi_controller *controller)
 	if (!pxa25x_ssp_comp(drv_data))
 		pxa2xx_spi_write(drv_data, SSTO, 0);
 	pxa2xx_spi_flush(drv_data);
-	pxa2xx_spi_write(drv_data, SSCR0,
-			 pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);
+	pxa2xx_spi_off(drv_data);
 
 	dev_dbg(&drv_data->pdev->dev, "transfer aborted\n");
 
@@ -1135,8 +1143,7 @@ static void pxa2xx_spi_handle_err(struct spi_controller *controller,
 	struct driver_data *drv_data = spi_controller_get_devdata(controller);
 
 	/* Disable the SSP */
-	pxa2xx_spi_write(drv_data, SSCR0,
-			 pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);
+	pxa2xx_spi_off(drv_data);
 	/* Clear and disable interrupts and service requests */
 	write_SSSR_CS(drv_data, drv_data->clear_sr);
 	pxa2xx_spi_write(drv_data, SSCR1,
@@ -1161,8 +1168,7 @@ static int pxa2xx_spi_unprepare_transfer(struct spi_controller *controller)
 	struct driver_data *drv_data = spi_controller_get_devdata(controller);
 
 	/* Disable the SSP now */
-	pxa2xx_spi_write(drv_data, SSCR0,
-			 pxa2xx_spi_read(drv_data, SSCR0) & ~SSCR0_SSE);
+	pxa2xx_spi_off(drv_data);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
