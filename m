Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2614201BE9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 19 Jun 2020 22:03:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bFTnZpuAqfAtbbgNvZiHsB6FAyBR4p1ORV9HduIeKyI=; b=Lk6YDDSIWZoXxg
	tA4ZE3FXrQhWFGvwjpjTdv+4s+CySBVnTovfKDuBwE8GhKfgZYsrYVcma3Mc2lB3NuRH7y7j6CynJ
	+fTZ8iMfyH51A01NLzewtg7TFUFI+0cddUoT4f0VShoWgmQ7sHYw8f13amjQ+CF/8PM5wOACvRba8
	wphStcCc6h6URGRSDSKvWe042oLqL601QH2t19X+W9mZKdgiSDQZKqajoPOcTuuiCYD/FYHAttj+M
	nfMs5+BpM7l526ViXAvzma+jS8EbXxV8Qs+AIFK7ZvLmI0uNKg/Ef6daciMYUCJwKkm1x09VZIF3r
	uWdtdZJ6/vR+LrI8tOag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmNEj-0006Bh-LP; Fri, 19 Jun 2020 20:03:41 +0000
Received: from mx.baikalchip.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmNEI-00063C-W9
 for linux-arm-kernel@lists.infradead.org; Fri, 19 Jun 2020 20:03:16 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 1E8548040A6B;
 Fri, 19 Jun 2020 20:03:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id nzL3mHnictu1; Fri, 19 Jun 2020 23:03:09 +0300 (MSK)
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>
Subject: [PATCH v7 1/3] serial: 8250: Add 8250 port clock update method
Date: Fri, 19 Jun 2020 23:02:49 +0300
Message-ID: <20200619200251.9066-2-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20200619200251.9066-1-Sergey.Semin@baikalelectronics.ru>
References: <20200619200251.9066-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_130315_390619_4370620E 
X-CRM114-Status: GOOD (  12.27  )
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
 Serge Semin <fancer.lancer@gmail.com>, linux-serial@vger.kernel.org,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
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

Changelog v7:
- Wake the device up on the serial port divider update.
---
 drivers/tty/serial/8250/8250_port.c | 40 +++++++++++++++++++++++++++++
 include/linux/serial_8250.h         |  2 ++
 2 files changed, 42 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
index 4d83c85a7389..7bfa0f7d9d60 100644
--- a/drivers/tty/serial/8250/8250_port.c
+++ b/drivers/tty/serial/8250/8250_port.c
@@ -2628,6 +2628,46 @@ static unsigned int serial8250_get_baud_rate(struct uart_port *port,
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
+	serial8250_rpm_get(up);
+	spin_lock_irqsave(&port->lock, flags);
+
+	uart_update_timeout(port, termios->c_cflag, baud);
+
+	serial8250_set_divisor(port, baud, quot, frac);
+	serial_port_out(port, UART_LCR, up->lcr);
+	serial8250_out_MCR(up, UART_MCR_DTR | UART_MCR_RTS);
+
+	spin_unlock_irqrestore(&port->lock, flags);
+	serial8250_rpm_put(up);
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
