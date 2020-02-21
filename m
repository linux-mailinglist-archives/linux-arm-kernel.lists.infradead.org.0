Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0798F168594
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 18:51:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yvd0ONFGOerGh9zE+zF561qdRIdgwQRJ/gemtlH89Jg=; b=IoFK4ASspXEix+
	Jp3maEdJcoHaJDFIKaxrick9zGtZAPCFcFwKag7zJZK+TIcP+IoOUq3vTJ+TW21C/SFWmEx96Xjrd
	RiHdU+IO1EdEMhzghWU9+jtdnmfcuH7z0KD60ymcWi2et2VSmS2wTZVQAXKfE4sh/73nfRZ9m2dLl
	mGASb2JKnc4krgPWz+N/eDe4R/LLGt6ZMuCrsKrhtOTKjcLHaAh1dJvo/B5T1jTBz235B3RJIwasL
	Il49cebHvAgOK6ruj3qlWvARZG1spMxgg9AP16Vay6cMKiKYa66rxkuYsSXfASsOHVzd0GBDn6NU1
	23c5ycMKd0y6NcfPWlkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5CS6-0003Se-B0; Fri, 21 Feb 2020 17:51:02 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CPk-0008Qk-2N
 for linux-arm-kernel@bombadil.infradead.org; Fri, 21 Feb 2020 17:48:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
 Content-Type:Content-ID:Content-Description;
 bh=zwfhoROdjBSTF6IWwTv6hSpPF+gjYKWiLJQMYXqgx2s=; b=WIUUXo4vcFrBGjwZYlPNGfMEpU
 gCvaCo7L05SsaAacat3knyIJCBNSVTG6a8Ei5elA7LJS/PRDVCObq5emHgG3nlmmlnZW3sYZlvzp0
 A7AXjzb1QUCuPH2ByFzV8QyWXgWcN9joT265ej2cqC4kdUrLi7gidK8T+cKZ8jxvQwg7Sk3ZM6fQ9
 82RzBW9e7kQECQv0iaorgkrhJd9VvdfsuVcBbCyUqGY/N23BCThJ/PjiickxFyLHEpikXKd4ui902
 DqJx0LpDnU3Ku2zyhxa+pJsj98lZ0/wVxlS73/0pBQs9EKWCIel8qkICiyKrftmp9iIn6QuO3pArU
 l7GJIGHg==;
Received: from ssl.serverraum.org ([2a01:4f8:151:8464::1:2])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5CPe-0005QD-Uj
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 17:48:34 +0000
Received: from mwalle01.sab.local. (unknown [213.135.10.150])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
 key-exchange ECDHE (P-384) server-signature RSA-PSS (2048 bits) server-digest
 SHA256) (No client certificate requested)
 by ssl.serverraum.org (Postfix) with ESMTPSA id BB1B623E61;
 Fri, 21 Feb 2020 18:48:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=walle.cc;
 s=mail2016061301; t=1582307294;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=zwfhoROdjBSTF6IWwTv6hSpPF+gjYKWiLJQMYXqgx2s=;
 b=LO7HgpaKPV4EW/wQ6bAuzyEYUhWjwaOj7E9Alkf+nmnV+PjA1bBrp0qcsFUnpyF34MkWmG
 s7ySCQf0ssdop9YpE+RmRdWyrpIUYiUhJDMVCcSAkXGL9I/mGJi+jys8BQYqg8GBZS/sd9
 UU2/0vbhKFM3TuJxqezlurCc3kFi7r4=
From: Michael Walle <michael@walle.cc>
To: linux-serial@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 7/9] tty: serial: fsl_lpuart: add LS1028A earlycon support
Date: Fri, 21 Feb 2020 18:47:52 +0100
Message-Id: <20200221174754.5295-8-michael@walle.cc>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200221174754.5295-1-michael@walle.cc>
References: <20200221174754.5295-1-michael@walle.cc>
MIME-Version: 1.0
X-Spamd-Bar: ++++++
X-Spam-Level: ******
X-Rspamd-Server: web
X-Spam-Status: Yes, score=6.40
X-Spam-Score: 6.40
X-Rspamd-Queue-Id: BB1B623E61
X-Spamd-Result: default: False [6.40 / 15.00]; FROM_HAS_DN(0.00)[];
 TO_DN_SOME(0.00)[]; R_MISSING_CHARSET(2.50)[];
 TO_MATCH_ENVRCPT_ALL(0.00)[]; TAGGED_RCPT(0.00)[dt];
 MIME_GOOD(-0.10)[text/plain]; BROKEN_CONTENT_TYPE(1.50)[];
 NEURAL_SPAM(0.00)[0.757]; DKIM_SIGNED(0.00)[];
 RCPT_COUNT_TWELVE(0.00)[13]; MID_CONTAINS_FROM(1.00)[];
 RCVD_COUNT_ZERO(0.00)[0]; FROM_EQ_ENVFROM(0.00)[];
 MIME_TRACE(0.00)[0:+];
 ASN(0.00)[asn:12941, ipnet:213.135.0.0/19, country:DE];
 SUSPICIOUS_RECIPS(1.50)[]
X-Spam: Yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_174831_174044_A6F4165C 
X-CRM114-Status: GOOD (  17.58  )
X-Spam-Score: -4.4 (----)
X-Spam-Report: SpamAssassin version 3.4.3 on casper.infradead.org summary:
 Content analysis details:   (-4.4 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a01:4f8:151:8464:0:0:1:2 listed in]
 [list.dnswl.org]
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
 [score: 0.0000]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Vabhav Sharma <vabhav.sharma@nxp.com>, Jiri Slaby <jslaby@suse.com>,
 Shawn Guo <shawnguo@kernel.org>
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
index d5a67e02f06a..e8e5c60e5b71 100644
--- a/drivers/tty/serial/fsl_lpuart.c
+++ b/drivers/tty/serial/fsl_lpuart.c
@@ -1841,11 +1841,12 @@ lpuart_set_termios(struct uart_port *port, struct ktermios *termios,
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
@@ -1891,10 +1892,10 @@ lpuart32_serial_setbrg(struct lpuart_port *sport, unsigned int baudrate)
 
 	/* handle buadrate outside acceptable rate */
 	if (baud_diff > ((baudrate / 100) * 3))
-		dev_warn(sport->port.dev,
+		dev_warn(port->dev,
 			 "unacceptable baud rate difference of more than 3%%\n");
 
-	tmp = lpuart32_read(&sport->port, UARTBAUD);
+	tmp = lpuart32_read(port, UARTBAUD);
 
 	if ((osr > 3) && (osr < 8))
 		tmp |= UARTBAUD_BOTHEDGE;
@@ -1905,14 +1906,23 @@ lpuart32_serial_setbrg(struct lpuart_port *sport, unsigned int baudrate)
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
@@ -2406,6 +2416,30 @@ static int __init lpuart32_early_console_setup(struct earlycon_device *device,
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
@@ -2420,6 +2454,7 @@ static int __init lpuart32_imx_early_console_setup(struct earlycon_device *devic
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
