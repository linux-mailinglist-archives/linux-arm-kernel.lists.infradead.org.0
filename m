Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (unknown [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3EAF1416DD
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 Jan 2020 10:41:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zEugUJmbzCarac2gHeM1o7optX/P+4DP0UMwV8sSab4=; b=DShT8EHmB8MCQv
	FO+LUJFl8/kmMSCB1rXbti1U08Z9LGchdQcw3/KdvPluL29+fWaf7yJaVCiKDdN/Z50yL7LszQuEw
	sE0hq8X2Zjj90zpc75QUdbjRoQds72u/H3HGDb7oO6p1iymZz6KTGbhUHq575QsiFxBcbwZk1TOl4
	PHTbdBbp6NrHarfWw5jQBqsokNkR3kHEr2D+0pZpRYk7DdKVhaZzTDEWanyyvSM1MdC8N3ETTT4zd
	HQdc5g3wX8/i5OzXanHltAL0gy/8gZZn1xLWSOKSQsQvEpYwCA+id8Q307R3LikCT7aKOZ9AlpQQ6
	Fi4AOn+cue6bVWNO/CbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iskb2-0008CS-8y; Sat, 18 Jan 2020 09:40:48 +0000
Received: from [167.172.186.51] (helo=shell.v3.sk)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iskau-0008Bc-W7
 for linux-arm-kernel@lists.infradead.org; Sat, 18 Jan 2020 09:40:42 +0000
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 1798DDFD99;
 Sat, 18 Jan 2020 09:40:49 +0000 (UTC)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id XTvNAe8AP3fP; Sat, 18 Jan 2020 09:40:48 +0000 (UTC)
Received: from localhost (localhost.localdomain [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id 1EF81DFDB5;
 Sat, 18 Jan 2020 09:40:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id e3WFtxekdVfC; Sat, 18 Jan 2020 09:40:47 +0000 (UTC)
Received: from furthur.lan (unknown [109.183.109.54])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 9C108DFD99;
 Sat, 18 Jan 2020 09:40:47 +0000 (UTC)
From: Lubomir Rintel <lkundrak@v3.sk>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] spi: pxa2xx: Avoid touching SSCR0_SSE on MMP2
Date: Sat, 18 Jan 2020 10:40:31 +0100
Message-Id: <20200118094031.327373-1-lkundrak@v3.sk>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200118_014041_328365_FA61E2BA 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
 linux-spi@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 Daniel Mack <daniel@zonque.org>, Robert Jarzmik <robert.jarzmik@free.fr>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

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
---
 drivers/spi/spi-pxa2xx.c | 28 +++++++++++++++++-----------
 1 file changed, 17 insertions(+), 11 deletions(-)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 9071333ebdd86..df1b30b2c2745 100644
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
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
