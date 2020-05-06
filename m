Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 795121C7DE4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 01:32:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eVkX7k4cn2jJOKPo+4wb3g5f/gRiPWJBjDD95Omm7kM=; b=h0UjqVcQgXgmuV
	E7ONYRr9P8Cemt6H8ziO03wvDEO9oqFhg7fLAK0o6ZthkmCqoFWA63Pmd/SEtRIvsQ/WrhH3K8WwG
	Gk1+oST5E9k0P8l8tsJWMZnXz2X/2EmGDx9oVhYhyTNnjcNGToy4LmqHFQArghRiRgditbToY1d1j
	0TDMWmyJk3Jf+p5twNEyIYLZ7lIu/LwUUquFEmRNm/omr+zZG6tQhAnt2a+9vcBC6W7N3ZQ/O6VBc
	2IWf28ks5q04+qVwpAzwdQdJCBbGfnr8dEMMJmKPWzDlEAW5gYRUDRZEZuDZABPgbkJc7i341V5kF
	T2gQGPqXMIfErunwZTCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWTWW-0002ID-2o; Wed, 06 May 2020 23:32:20 +0000
Received: from ns2.baikalelectronics.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWTW7-00025B-CB; Wed, 06 May 2020 23:31:57 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 2DBD4803087B;
 Wed,  6 May 2020 23:31:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wQ_eRoPPIA7H; Thu,  7 May 2020 02:31:52 +0300 (MSK)
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>
Subject: [PATCH v3 2/4] serial: 8250: Add 8250 port clock update method
Date: Thu, 7 May 2020 02:31:33 +0300
Message-ID: <20200506233136.11842-3-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20200506233136.11842-1-Sergey.Semin@baikalelectronics.ru>
References: <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
 <20200506233136.11842-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_163155_767469_1724E887 
X-CRM114-Status: GOOD (  13.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Vignesh Raghavendra <vigneshr@ti.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dmitry Safonov <0x7f454c46@gmail.com>,
 Yegor Yefremov <yegorslists@googlemail.com>,
 Serge Semin <fancer.lancer@gmail.com>, Stefan Roese <sr@denx.de>,
 Will Deacon <will@kernel.org>, Paul Burton <paulburton@kernel.org>,
 Russell King <linux@armlinux.org.uk>, Long Cheng <long.cheng@mediatek.com>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Maxime Ripard <mripard@kernel.org>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 linux-mediatek@lists.infradead.org, Thomas Gleixner <tglx@linutronix.de>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Allison Randal <allison@lohutok.net>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Lukas Wunner <lukas@wunner.de>
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
Cc: Paul Burton <paulburton@kernel.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Long Cheng <long.cheng@mediatek.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-mips@vger.kernel.org
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-mediatek@lists.infradead.org
---
 drivers/tty/serial/8250/8250_port.c | 38 +++++++++++++++++++++++++++++
 include/linux/serial_8250.h         |  2 ++
 2 files changed, 40 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_port.c b/drivers/tty/serial/8250/8250_port.c
index 4d83c85a7389..484ff9df1432 100644
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
+EXPORT_SYMBOL(serial8250_update_uartclk);
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
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
