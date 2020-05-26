Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21DFB1E2662
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 18:04:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOOqFliCjP8kBhuAvitFx9PFamUcJZmjk/MmQsOJm6A=; b=NWu2h4JAtdFk8P
	adk4AjyBdVpm9ECLURZ7EQ3MDuwAo7L2p1F5mHTcWrnTc+DIEd7rChqM9hI6995219hxUEXt4uQsT
	53LufIxdxgVvHFVwRQgQs9e+VpErTalcqkgY923fXYe/hu+XXSrAoil6nzQfkReXHx/p73EoYZ/fr
	wfI20zToPn2z8fR9mtofo7obdnHeYE3SJfr/AU202uZyaxEYVfcsWtwu2sx9KRjEp7UoE3nkJSEuy
	AgDOlwOdSME5WuLYypYlifjs91KOp9vMRj+xDEr6eYM2zZft3NlDyqk9vKXx9GZY5A5xfvVZBVi24
	EWCrXwVaGwZAaCrWR55A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdc3m-0005dq-G2; Tue, 26 May 2020 16:04:10 +0000
Received: from mail.baikalelectronics.com ([87.245.175.226]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdc3K-0005R4-Pi
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 16:03:44 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 859CB803086D;
 Tue, 26 May 2020 16:03:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hKunuLm8sZ5L; Tue, 26 May 2020 19:03:23 +0300 (MSK)
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>
Subject: [PATCH v4 1/3] serial: 8250: Add 8250 port clock update method
Date: Tue, 26 May 2020 19:03:14 +0300
Message-ID: <20200526160316.26136-2-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20200526160316.26136-1-Sergey.Semin@baikalelectronics.ru>
References: <20200526160316.26136-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_090343_196441_B215C9B3 
X-CRM114-Status: GOOD (  11.96  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 linux-mips@vger.kernel.org, Russell King <linux@armlinux.org.uk>,
 Maxime Ripard <mripard@kernel.org>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Serge Semin <fancer.lancer@gmail.com>, linux-serial@vger.kernel.org, Andy
 Shevchenko <andriy.shevchenko@linux.intel.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some platforms can be designed in a way so the UART port reference clock
might be asynchronously changed at some point. In Baikal-T1 SoC this may
happen due to the reference clock being shared between two UART ports, on
the Allwinner SoC the reference clock is derived from the CPU clock, so
any CPU frequency change should get to be known/reflected by/in the UART
controller as well. But it's not enough to just update the
uart_port->uartclk field of the corresponding UART port, the 8250
controller reference clock divisor should be altered so to preserve
current baud rate setting. All of these things is done in a coherent
way by calling the serial8250_update_uartclk() method provided in this
patch. Though note that it isn't supposed to be called from within the
UART port callbacks because the locks using to the protect the UART port
data are already taken in there.

Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Will Deacon <will@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org

---

Changelog v4:
- Export serial8250_update_uartclk() symbol for GPL modules only.
---
 drivers/tty/serial/8250/8250_port.c | 38 +++++++++++++++++++++++++++++
 include/linux/serial_8250.h         |  2 ++
 2 files changed, 40 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
index 4d83c85a7389..5596868c8832 100644
--- a/drivers/tty/serial/8250/8250_port.c
+++ b/drivers/tty/serial/8250/8250_port.c
@@ -2628,6 +2628,44 @@ static unsigned int serial8250_get_baud_rate(struct uart_port *port,
 				  (port->uartclk + tolerance) / 16);
 }
 
+/*
+ * Note in order to avoid the tty port mutex deadlock don't use the next method
+ * within the uart port callbacks. Primarily it's supposed to be utilized to
+ * handle a sudden reference clock rate change.
+ */
+void serial8250_update_uartclk(struct uart_port *port, unsigned int uartclk)
+{
+	struct uart_8250_port *up = up_to_u8250p(port);
+	unsigned int baud, quot, frac = 0;
+	struct ktermios *termios;
+	unsigned long flags;
+
+	mutex_lock(&port->state->port.mutex);
+
+	if (port->uartclk == uartclk)
+		goto out_lock;
+
+	port->uartclk = uartclk;
+	termios = &port->state->port.tty->termios;
+
+	baud = serial8250_get_baud_rate(port, termios, NULL);
+	quot = serial8250_get_divisor(port, baud, &frac);
+
+	spin_lock_irqsave(&port->lock, flags);
+
+	uart_update_timeout(port, termios->c_cflag, baud);
+
+	serial8250_set_divisor(port, baud, quot, frac);
+	serial_port_out(port, UART_LCR, up->lcr);
+	serial8250_out_MCR(up, UART_MCR_DTR | UART_MCR_RTS);
+
+	spin_unlock_irqrestore(&port->lock, flags);
+
+out_lock:
+	mutex_unlock(&port->state->port.mutex);
+}
+EXPORT_SYMBOL_GPL(serial8250_update_uartclk);
+
 void
 serial8250_do_set_termios(struct uart_port *port, struct ktermios *termios,
 			  struct ktermios *old)
diff --git a/include/linux/serial_8250.h b/include/linux/serial_8250.h
index 6545f8cfc8fa..2b70f736b091 100644
--- a/include/linux/serial_8250.h
+++ b/include/linux/serial_8250.h
@@ -155,6 +155,8 @@ extern int early_serial_setup(struct uart_port *port);
 
 extern int early_serial8250_setup(struct earlycon_device *device,
 					 const char *options);
+extern void serial8250_update_uartclk(struct uart_port *port,
+				      unsigned int uartclk);
 extern void serial8250_do_set_termios(struct uart_port *port,
 		struct ktermios *termios, struct ktermios *old);
 extern void serial8250_do_set_ldisc(struct uart_port *port,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
