Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 901D95666B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 12:16:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D2CgY3WwVvU9+PWP1KrZb6H5qGw7jq5cXbCo9F+OO6U=; b=qT52WkqvMv5ZZU
	GHyZADrdWWIuaIwPYln+4AZz+As2oLxUadm8LduFXWd/1fglIdyXQ6XjzU3fU2yFP31LFHnJfvb5x
	ojHWOPjdpjV56XxyBk/7dXsI6mEfReyzpYjDJdCAS5lb7hT0hMC9wc44sZNxpde9ioFaXJFMN+C9i
	KsvmZasQR22b+en0J8RMJIh4PLqG/MYf2V6GMnoi7cN80A7pFQ+FQS+/r0j5oB/9ujE7k3BJxbho2
	Ywu5pRDeT5YmwdIKuLxWLfWxRgvyrdOSEQgN6KcZdLZASVx2eZnwjZ4cT8B5esMibgiiBGQhQJGiJ
	kIPKQON8mCC5OLt7NyEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg4yK-0000pP-Vk; Wed, 26 Jun 2019 10:16:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg4yD-0000op-Vj
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 10:16:07 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hg4yC-00076f-5v; Wed, 26 Jun 2019 12:16:04 +0200
Received: from sha by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1hg4y7-0006s7-C9; Wed, 26 Jun 2019 12:15:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: linux-serial@vger.kernel.org
Subject: [PATCH 2/2] serial: imx: use UPF_AUTO_CTS
Date: Wed, 26 Jun 2019 12:15:57 +0200
Message-Id: <20190626101557.26299-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626101557.26299-1-s.hauer@pengutronix.de>
References: <20190626101557.26299-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::7
X-SA-Exim-Mail-From: sha@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_031606_024772_DBF922D3 
X-CRM114-Status: GOOD (  12.06  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX driver doesn't set the UPF_AUTO_CTS flag which means that
uart_handle_cts_change() will stop/start the receiver on CTS changes.
This is completely unnecessary as the hardware will handle CTS
changes automatically.

With UPF_AUTO_CTS enabled uart_handle_cts_change() boils down to
increasing the CTS statistic counter. For clarity inline increasing
the counter instead of calling uart_handle_cts_change().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/tty/serial/imx.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 0419a084c0ed..82f987dab066 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -703,13 +703,11 @@ static void imx_uart_start_tx(struct uart_port *port)
 static irqreturn_t imx_uart_rtsint(int irq, void *dev_id)
 {
 	struct imx_port *sport = dev_id;
-	u32 usr1;
 
 	spin_lock(&sport->port.lock);
 
 	imx_uart_writel(sport, USR1_RTSD, USR1);
-	usr1 = imx_uart_readl(sport, USR1) & USR1_RTSS;
-	uart_handle_cts_change(&sport->port, !!usr1);
+	sport->port.icount.cts++;
 	wake_up_interruptible(&sport->port.state->port.delta_msr_wait);
 
 	spin_unlock(&sport->port.lock);
@@ -1588,6 +1586,9 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 	} else if (termios->c_cflag & CRTSCTS) {
 		if (ucr2 & UCR2_CTS)
 			ucr2 |= UCR2_CTSC;
+		port->status |= UPSTAT_AUTOCTS;
+	} else {
+		port->status &= ~UPSTAT_AUTOCTS;
 	}
 
 	if (termios->c_cflag & CRTSCTS)
@@ -1706,6 +1707,9 @@ static void imx_uart_config_port(struct uart_port *port, int flags)
 
 	if (flags & UART_CONFIG_TYPE)
 		sport->port.type = PORT_IMX;
+
+	if (sport->have_rtscts)
+		sport->port.flags |= UPF_AUTO_CTS;
 }
 
 /*
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
