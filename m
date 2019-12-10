Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 72739118B2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:38:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jZidcYWCbhf2/bRlw99dXZEr86h0k2J5J5KurO/3qZw=; b=SinUdSlWhdwSw8
	sWJRKWRtAZlVIAm6ggOXrCtBpwsu534VILkm4vocaRpa3GO606fa2NlcpmtbHL7vAnUHVFX4EmEod
	mQB7Q+WyA6tUa2vd+THk2JINV3OnqP80OZg8uuub2zUAYhpyXef4IPSXYW0PeqFRfcBEPp3iHZlkJ
	2xyuJ0cCYZprXs5EK7WjmxS5bMz3cnud64RZ/heCrqKn2T6b/If0rhf50DIv4vJj4Njb31QQFrYOT
	qa6aXBUr/pE1CpdhGX6UDr59wgGS1DdPHQXW5xvFd8Q89bSrVOR+/na476/FYEf6fG13VXZnoqA5z
	KVFecaT4P9LQobrSrRzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegek-0005CC-4x; Tue, 10 Dec 2019 14:38:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegdm-0004A5-Bm
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:37:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A87420637;
 Tue, 10 Dec 2019 14:37:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575988649;
 bh=Jj+kqL3oDpAOi3xZ9oFO5W6Gd+sw+qlOruuOifJ0chM=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=tIGN0/mdbwR7DhlORTEopy1cIB7Yf1k+QLNhgfHWLjjqA0JJRGuDwRXbQstYIQDi/
 ROhlY/yaEFiLm8BbJlg0dUB1Qjv24Xr/TK+vcwD43gTnhrBHpEqKVwZw32UIe3s/kv
 O7KAD9/QbQTM1yHFzIIDnPIhPQESZw7rKatnKucs=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-serial@vger.kernel.org
Subject: [PATCH 06/10] tty: serial: samsung_tty: drop unneded dbg() calls
Date: Tue, 10 Dec 2019 15:37:02 +0100
Message-Id: <20191210143706.3928480-6-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_063730_453830_10987819 
X-CRM114-Status: GOOD (  13.40  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the kernel has ftrace, any debugging calls that just do "made
it to this function!" and "leaving this function!" can be removed.

On the quest to move the samsung_tty driver over to use the standard
kernel debugging functions, drop these unneeded calls.

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hyunki Koo <kkoos00@naver.com>
Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
Cc: Shinbeom Choi <sbeom.choi@samsung.com>
Cc: Jiri Slaby <jslaby@suse.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/tty/serial/samsung_tty.c | 22 ----------------------
 1 file changed, 22 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 1a3bf5879344..37749f09066d 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -1136,9 +1136,6 @@ static int s3c24xx_serial_startup(struct uart_port *port)
 	struct s3c24xx_uart_port *ourport = to_ourport(port);
 	int ret;
 
-	dbg("s3c24xx_serial_startup: port=%p (%08llx,%p)\n",
-	    port, (unsigned long long)port->mapbase, port->membase);
-
 	rx_enabled(port) = 1;
 
 	ret = request_irq(ourport->rx_irq, s3c24xx_serial_rx_chars, 0,
@@ -1165,8 +1162,6 @@ static int s3c24xx_serial_startup(struct uart_port *port)
 
 	ourport->tx_claimed = 1;
 
-	dbg("s3c24xx_serial_startup ok\n");
-
 	/* the port reset code should have done the correct
 	 * register setup for the port controls */
 
@@ -1184,9 +1179,6 @@ static int s3c64xx_serial_startup(struct uart_port *port)
 	unsigned int ufcon;
 	int ret;
 
-	dbg("s3c64xx_serial_startup: port=%p (%08llx,%p)\n",
-	    port, (unsigned long long)port->mapbase, port->membase);
-
 	wr_regl(port, S3C64XX_UINTM, 0xf);
 	if (ourport->dma) {
 		ret = s3c24xx_serial_request_dma(ourport);
@@ -1224,7 +1216,6 @@ static int s3c64xx_serial_startup(struct uart_port *port)
 	/* Enable Rx Interrupt */
 	s3c24xx_clear_bit(port, S3C64XX_UINTM_RXD, S3C64XX_UINTM);
 
-	dbg("s3c64xx_serial_startup ok\n");
 	return ret;
 }
 
@@ -1870,8 +1861,6 @@ static int s3c24xx_serial_init_port(struct s3c24xx_uart_port *ourport,
 	struct resource *res;
 	int ret;
 
-	dbg("s3c24xx_serial_init_port: port=%p, platdev=%p\n", port, platdev);
-
 	if (platdev == NULL)
 		return -ENODEV;
 
@@ -2011,8 +2000,6 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
 			index = ret;
 	}
 
-	dbg("s3c24xx_serial_probe(%p) %d\n", pdev, index);
-
 	if (index >= ARRAY_SIZE(s3c24xx_serial_ports)) {
 		dev_err(&pdev->dev, "serial%d out of range\n", index);
 		return -EINVAL;
@@ -2273,10 +2260,6 @@ s3c24xx_serial_get_options(struct uart_port *port, int *baud,
 	ucon   = rd_regl(port, S3C2410_UCON);
 	ubrdiv = rd_regl(port, S3C2410_UBRDIV);
 
-	dbg("s3c24xx_serial_get_options: port=%p\n"
-	    "registers: ulcon=%08x, ucon=%08x, ubdriv=%08x\n",
-	    port, ulcon, ucon, ubrdiv);
-
 	if (s3c24xx_port_configured(ucon)) {
 		switch (ulcon & S3C2410_LCON_CSMASK) {
 		case S3C2410_LCON_CS5:
@@ -2334,9 +2317,6 @@ s3c24xx_serial_console_setup(struct console *co, char *options)
 	int parity = 'n';
 	int flow = 'n';
 
-	dbg("s3c24xx_serial_console_setup: co=%p (%d), %s\n",
-	    co, co->index, options);
-
 	/* is this a valid port */
 
 	if (co->index == -1 || co->index >= CONFIG_SERIAL_SAMSUNG_UARTS)
@@ -2351,8 +2331,6 @@ s3c24xx_serial_console_setup(struct console *co, char *options)
 
 	cons_uart = port;
 
-	dbg("s3c24xx_serial_console_setup: port=%p (%d)\n", port, co->index);
-
 	/*
 	 * Check whether an invalid uart number has been specified, and
 	 * if so, search for the first available port that does have
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
