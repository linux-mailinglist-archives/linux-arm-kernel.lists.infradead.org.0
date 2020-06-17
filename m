Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B17E11FD0FB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 17:29:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qmr5rj2Ak1YkM1gp9uuYpVHq28QwciFQj7/P4KzT4Bg=; b=EiJmTmXO6CkMWX
	g5djXuR/ngOb4b0+8OjwbPZBEjKvKsT7BKvygJ67M6SDGun2/+veis/lGADZhqYJhHeDcwGrV/6aq
	wMQAIKPT6xVYjrvW3mYrSG6FbR8LzUYVhyZQettJol+0S6I6vbPKjFAtY2deoo/vps2l295VrYW7n
	dTs/qIOsL4TWrK2tCx41a93Q5/xdyP+W7f2meZjHwq+z6uDHowG+Mt83z3j8VQnWhtOMEG9zXdrHJ
	GJrwVl+97WhQgonT+BUkUNlV0HnhVRN+kiuvjqq/sHy7y1t2xuoG61GMFkVYVdUGtTwZ9Rl9kaVhd
	YCqO2BXS4G9bCUwyfRuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZzy-0006Dy-Tw; Wed, 17 Jun 2020 15:29:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZzq-0006DB-GL
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 15:29:03 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7E7AE20897;
 Wed, 17 Jun 2020 15:29:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592407742;
 bh=SD+fejC18TjS7/DoA5KE5YrnoAqS1yLaxfx11ISwTbM=;
 h=From:To:Subject:Date:From;
 b=nF/JSFGNj+SedrGskz4bgXFzZUfgizp2OmgNo4HUP37JHEcCY9Ov9Wqps/KNaLklv
 KfoizibFHs7fTzlwFxrmfoL6igIyNTVeH5qaWhJCnQ6UcGaSLcnGGzEkrCkEOZukVy
 nSHRUgttSJF7pXr7+g8rKFIDbICS7nwgJ0RvAuFA=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] serial: samsung: Minor whitespace cleanups
Date: Wed, 17 Jun 2020 17:28:56 +0200
Message-Id: <20200617152856.18086-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_082902_580612_92F83240 
X-CRM114-Status: GOOD (  12.82  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Make the code slightly more readable by removing unneeded line breaks,
adding missing line breaks and white spaces.  This also fixes few strict
checkpatch suggestions:

	CHECK: spaces preferred around that '-' (ctx:VxV)
	CHECK: Unbalanced braces around else statement
	CHECK: Lines should not end with a '('

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 drivers/tty/serial/samsung_tty.c | 22 +++++++++-------------
 1 file changed, 9 insertions(+), 13 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index d913d9b2762a..7be9579216b8 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -327,7 +327,6 @@ static void s3c24xx_serial_tx_dma_complete(void *args)
 	unsigned long flags;
 	int count;
 
-
 	dmaengine_tx_status(dma->tx_chan, dma->tx_cookie, &state);
 	count = dma->tx_bytes_requested - state.residue;
 	async_tx_ack(dma->tx_desc);
@@ -409,7 +408,6 @@ static int s3c24xx_serial_start_tx_dma(struct s3c24xx_uart_port *ourport,
 	struct circ_buf *xmit = &port->state->xmit;
 	struct s3c24xx_uart_dma *dma = ourport->dma;
 
-
 	if (ourport->tx_mode != S3C24XX_TX_DMA)
 		enable_tx_dma(ourport);
 
@@ -816,7 +814,6 @@ static irqreturn_t s3c24xx_serial_rx_chars_pio(void *dev_id)
 	return IRQ_HANDLED;
 }
 
-
 static irqreturn_t s3c24xx_serial_rx_chars(int irq, void *dev_id)
 {
 	struct s3c24xx_uart_port *ourport = dev_id;
@@ -842,8 +839,8 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
 	    count >= ourport->min_dma_size) {
 		int align = dma_get_cache_alignment() -
 			(xmit->tail & (dma_get_cache_alignment() - 1));
-		if (count-align >= ourport->min_dma_size) {
-			dma_count = count-align;
+		if (count - align >= ourport->min_dma_size) {
+			dma_count = count - align;
 			count = align;
 		}
 	}
@@ -1589,7 +1586,6 @@ s3c24xx_serial_verify_port(struct uart_port *port, struct serial_struct *ser)
 	return 0;
 }
 
-
 #ifdef CONFIG_SERIAL_SAMSUNG_CONSOLE
 
 static struct console s3c24xx_serial_console;
@@ -1672,7 +1668,6 @@ s3c24xx_serial_ports[CONFIG_SERIAL_SAMSUNG_UARTS] = {
 		}
 	},
 #if CONFIG_SERIAL_SAMSUNG_UARTS > 2
-
 	[2] = {
 		.port = {
 			.lock		= __PORT_LOCK_UNLOCKED(2),
@@ -1728,7 +1723,6 @@ static void s3c24xx_serial_resetport(struct uart_port *port,
 	udelay(1);
 }
 
-
 #ifdef CONFIG_ARM_S3C24XX_CPUFREQ
 
 static int s3c24xx_serial_cpufreq_transition(struct notifier_block *nb,
@@ -1903,9 +1897,9 @@ static int s3c24xx_serial_init_port(struct s3c24xx_uart_port *ourport,
 
 	port->mapbase = res->start;
 	ret = platform_get_irq(platdev, 0);
-	if (ret < 0)
+	if (ret < 0) {
 		port->irq = 0;
-	else {
+	} else {
 		port->irq = ret;
 		ourport->rx_irq = ret;
 		ourport->tx_irq = ret + 1;
@@ -1977,8 +1971,8 @@ static const struct of_device_id s3c24xx_uart_dt_match[];
 
 static int probe_index;
 
-static inline struct s3c24xx_serial_drv_data *s3c24xx_get_driver_data(
-			struct platform_device *pdev)
+static inline struct s3c24xx_serial_drv_data *
+s3c24xx_get_driver_data(struct platform_device *pdev)
 {
 #ifdef CONFIG_OF
 	if (pdev->dev.of_node) {
@@ -2329,7 +2323,6 @@ s3c24xx_serial_get_options(struct uart_port *port, int *baud,
 		*baud = rate / (16 * (ubrdiv + 1));
 		dev_dbg(port->dev, "calculated baud %d\n", *baud);
 	}
-
 }
 
 static int __init
@@ -2696,6 +2689,7 @@ static int __init s3c2410_early_console_setup(struct earlycon_device *device,
 	device->port.private_data = &s3c2410_early_console_data;
 	return samsung_early_console_setup(device, opt);
 }
+
 OF_EARLYCON_DECLARE(s3c2410, "samsung,s3c2410-uart",
 			s3c2410_early_console_setup);
 
@@ -2710,6 +2704,7 @@ static int __init s3c2440_early_console_setup(struct earlycon_device *device,
 	device->port.private_data = &s3c2440_early_console_data;
 	return samsung_early_console_setup(device, opt);
 }
+
 OF_EARLYCON_DECLARE(s3c2412, "samsung,s3c2412-uart",
 			s3c2440_early_console_setup);
 OF_EARLYCON_DECLARE(s3c2440, "samsung,s3c2440-uart",
@@ -2728,6 +2723,7 @@ static int __init s5pv210_early_console_setup(struct earlycon_device *device,
 	device->port.private_data = &s5pv210_early_console_data;
 	return samsung_early_console_setup(device, opt);
 }
+
 OF_EARLYCON_DECLARE(s5pv210, "samsung,s5pv210-uart",
 			s5pv210_early_console_setup);
 OF_EARLYCON_DECLARE(exynos4210, "samsung,exynos4210-uart",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
