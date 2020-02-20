Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D343F16658C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 18:55:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4SXDfwi4Z0M84LFFGfBNkQO7bnK6rsi2woig3ySZ3ok=; b=o8GJ2Fvp4/4l61
	mK02nCq3VNyIgDrEzIVlasvRbwAMmEmHOOnIkaSbAty27njJYSCRE5CLTpwOKQskC2rWQ/ngY9vVA
	nVbd4E3tEIJufFrjWALc2qWzKqFlYkQx7Fo6Ce2ZiF5GOJpe/nSzlLQiASfQBQ8Zf15EQDdkD6di1
	HxC2BDQN+9RsRjJmLjj2jTOA1OIs85cAoAVkP3B8Bz7J/r6eJMb7Fdc2UIpz1T/EGFiOf3k1Yk0oy
	wmR3KppXZHH+HO5l5oz6aApGYM3zoiCIlthkajGgomV0+98k7uLF15tzUmKAeYOS8hXvQoLA5REQ1
	XldMtzcbtkynZZtbH3Ag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4q2T-00069o-JQ; Thu, 20 Feb 2020 17:55:05 +0000
Received: from ssl.serverraum.org ([176.9.125.105])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4q19-0004sX-TL
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 17:53:46 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id 55A3D23E59;
 Thu, 20 Feb 2020 18:43:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582220634;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=YHLtwMRu0PRuLRywNXxx+73saKhgeS5z/r5jOFf8BV4=;
 b=vueBheQgHOiGjTI4A6UQrmPon7HdOaPeaKM9kB7c4+bVY+y0bNyy4z80PpDVDACIXHRidE
 L5lDNWwYsvqwZOi03CdGAish8L19WeYlFakhLZK3fgNYEWkfpsTPtTe4aMc+t1oPwwCfpR
 Upqx/X4AfRzUz+nrTd4tXcxulGxTulU=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 6/7] tty: serial: fsl_lpuart: add LS1028A earlycon support
Date: Thu, 20 Feb 2020 18:43:33 +0100
Message-Id: <20200220174334.23322-6-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200220174334.23322-1-michael@walle.cc>
References: <20200220174334.23322-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: 55A3D23E59
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.471]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[14]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_095344_261143_027C5E45 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [176.9.125.105 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Peng Fan <peng.fan@nxp.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Li Yang <leoyang.li@nxp.com>,
 Michael Walle <michael@walle.cc>, Rob Herring <robh+dt@kernel.org>,
 Yuan Yao <yao.yuan@nxp.com>, Vabhav Sharma <vabhav.sharma@nxp.com>,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add a early_console_setup() for the LS1028A SoC with 32bit, little
endian access. If the bootloader does a fixup of the clock-frequency
node the baudrate divisor register will automatically be set.

Signed-off-by: Michael Walle <michael@walle.cc>
---
 drivers/tty/serial/fsl_lpuart.c | 51 +++++++++++++++++++++++++++------
 1 file changed, 43 insertions(+), 8 deletions(-)

diff --git a/drivers/tty/serial/fsl_lpuart.c b/drivers/tty/serial/fsl_lpuart.c
index 6953eea166dc..4386ffdfe275 100644
--- a/drivers/tty/serial/fsl_lpuart.c
+++ b/drivers/tty/serial/fsl_lpuart.c
@@ -1834,11 +1834,12 @@ lpuart_set_termios(struct uart_port *port, struct ktermios *termios,
 	spin_unlock_irqrestore(&sport->port.lock, flags);
 }
 
-static void
-lpuart32_serial_setbrg(struct lpuart_port *sport, unsigned int baudrate)
+static void __lpuart32_serial_setbrg(struct uart_port *port,
+				     unsigned int baudrate, bool use_rx_dma,
+				     bool use_tx_dma)
 {
 	u32 sbr, osr, baud_diff, tmp_osr, tmp_sbr, tmp_diff, tmp;
-	u32 clk = sport->port.uartclk;
+	u32 clk = port->uartclk;
 
 	/*
 	 * The idea is to use the best OSR (over-sampling rate) possible.
@@ -1884,10 +1885,10 @@ lpuart32_serial_setbrg(struct lpuart_port *sport, unsigned int baudrate)
 
 	/* handle buadrate outside acceptable rate */
 	if (baud_diff > ((baudrate / 100) * 3))
-		dev_warn(sport->port.dev,
+		dev_warn(port->dev,
 			 "unacceptable baud rate difference of more than 3%%\n");
 
-	tmp = lpuart32_read(&sport->port, UARTBAUD);
+	tmp = lpuart32_read(port, UARTBAUD);
 
 	if ((osr > 3) && (osr < 8))
 		tmp |= UARTBAUD_BOTHEDGE;
@@ -1898,14 +1899,23 @@ lpuart32_serial_setbrg(struct lpuart_port *sport, unsigned int baudrate)
 	tmp &= ~UARTBAUD_SBR_MASK;
 	tmp |= sbr & UARTBAUD_SBR_MASK;
 
-	if (!sport->lpuart_dma_rx_use)
+	if (!use_rx_dma)
 		tmp &= ~UARTBAUD_RDMAE;
-	if (!sport->lpuart_dma_tx_use)
+	if (!use_tx_dma)
 		tmp &= ~UARTBAUD_TDMAE;
 
-	lpuart32_write(&sport->port, tmp, UARTBAUD);
+	lpuart32_write(port, tmp, UARTBAUD);
+}
+
+static void lpuart32_serial_setbrg(struct lpuart_port *sport,
+				   unsigned int baudrate)
+{
+	__lpuart32_serial_setbrg(&sport->port, baudrate,
+				 sport->lpuart_dma_rx_use,
+				 sport->lpuart_dma_tx_use);
 }
 
+
 static void
 lpuart32_set_termios(struct uart_port *port, struct ktermios *termios,
 		   struct ktermios *old)
@@ -2399,6 +2409,30 @@ static int __init lpuart32_early_console_setup(struct earlycon_device *device,
 	return 0;
 }
 
+static int __init ls1028a_early_console_setup(struct earlycon_device *device,
+					      const char *opt)
+{
+	u32 cr;
+
+	if (!device->port.membase)
+		return -ENODEV;
+
+	device->port.iotype = UPIO_MEM32;
+	device->con->write = lpuart32_early_write;
+
+	/* set the baudrate */
+	if (device->port.uartclk && device->baud)
+		__lpuart32_serial_setbrg(&device->port, device->baud,
+					 false, false);
+
+	/* enable transmitter */
+	cr = lpuart32_read(&device->port, UARTCTRL);
+	cr |= UARTCTRL_TE;
+	lpuart32_write(&device->port, cr, UARTCTRL);
+
+	return 0;
+}
+
 static int __init lpuart32_imx_early_console_setup(struct earlycon_device *device,
 						   const char *opt)
 {
@@ -2413,6 +2447,7 @@ static int __init lpuart32_imx_early_console_setup(struct earlycon_device *devic
 }
 OF_EARLYCON_DECLARE(lpuart, "fsl,vf610-lpuart", lpuart_early_console_setup);
 OF_EARLYCON_DECLARE(lpuart32, "fsl,ls1021a-lpuart", lpuart32_early_console_setup);
+OF_EARLYCON_DECLARE(lpuart32, "fsl,ls1028a-lpuart", ls1028a_early_console_setup);
 OF_EARLYCON_DECLARE(lpuart32, "fsl,imx7ulp-lpuart", lpuart32_imx_early_console_setup);
 EARLYCON_DECLARE(lpuart, lpuart_early_console_setup);
 EARLYCON_DECLARE(lpuart32, lpuart32_early_console_setup);
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
