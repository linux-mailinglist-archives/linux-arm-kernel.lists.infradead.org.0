Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1423418EE20
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 03:54:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mr2Pu2BoigEPRHBAQ1yjIQW38eKObMNKt8aHe0sHBMA=; b=BzPUZfpg19PTCQ
	xXP4eqt8d4KNRBAksMcESEv9iUlJzPDxE3tptWLTBsthxFUJ5+EU8qRyHsiCKI7j16x6FVzxwM8oP
	M85g2bLVOJ9cDTAbLaIh7Cs2Vod74zdYuIHcXSmEw/slAY9K+KB8SGMW+wbx+Fb4PDTbiN5sEyYd3
	vkJTmPoeYdtLQ6j3F/segPDN+spae2G6llKCwzHlFIS9TukZrBPGzx3QYbffs/sLDQut6ZVbeI63p
	5Z6FYAD+8CPo49uveb59yNkqIcD8TIcXK9Z60EVg62Lb+OeCaM3WFyLBzlN5o0+AMgwa0R6Dyj2ke
	R8hkjvg1tvnme7io03Cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGDE2-0003Ay-CI; Mon, 23 Mar 2020 02:54:02 +0000
Received: from mail.baikalelectronics.com ([87.245.175.226]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGDDr-0003AJ-Lk
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 02:53:54 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id CB41180307CB;
 Mon, 23 Mar 2020 02:46:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UTjW9bYZDdnY; Mon, 23 Mar 2020 05:46:46 +0300 (MSK)
From: <Sergey.Semin@baikalelectronics.ru>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>
Subject: [PATCH v2] serial: 8250_dw: Fix common clocks usage race condition
Date: Mon, 23 Mar 2020 05:46:09 +0300
Message-ID: <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20200306130231.05BBC8030795@mail.baikalelectronics.ru>
References: 
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200322_195352_079752_4F707002 
X-CRM114-Status: GOOD (  18.53  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
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
Cc: Andrew Lunn <andrew@lunn.ch>, Kefeng Wang <wangkefeng.wang@huawei.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Serge Semin <fancer.lancer@gmail.com>, Will Deacon <will@kernel.org>,
 linux-clk@vger.kernel.org, Florian Fainelli <f.fainelli@gmail.com>,
 Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>,
 Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Russell King <linux@armlinux.org.uk>, Wei Xu <xuwei5@hisilicon.com>,
 Chen-Yu Tsai <wens@csie.org>,
 Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 Jason Cooper <jason@lakedaemon.net>, Ray Jui <rjui@broadcom.com>,
 Maxime Ripard <mripard@kernel.org>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 linux-serial@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Vadim Vlasov <V.Vlasov@baikalelectronics.ru>,
 Paul Burton <paulburton@kernel.org>, Scott Branden <sbranden@broadcom.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Jisheng Zhang <Jisheng.Zhang@synaptics.com>,
 Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Serge Semin <Sergey.Semin@baikalelectronics.ru>

There are races possible in the dw8250_set_termios() callback method
and while the device is in PM suspend state. A race condition may
happen if the baudrate clock source device is shared with some other
device (in our machine it's another DW UART port). In this case if that
device changes the clock rate while serial console is using it the
DW 8250 UART port might not only end up with an invalid uartclk value
saved, but may also experience a distorted output data since baud-clock
could have been changed. In order to fix this lets enable an exclusive
reference clock rate access in case if "baudclk" device is specified.

So if some other device also acquires the rate exclusivity during the
time of a DW UART 8250 port being opened, then DW UART 8250 driver
won't be able to alter the baud-clock. It shall just use the available
clock rate. Similarly another device also won't manage to change the
rate at that time. If nothing else have the exclusive rate access
acquired except DW UART 8250 driver, then the driver will be able to
alter the rate as much as it needs to in accordance with the currently
implemented logic.

Signed-off-by: Serge Semin <Sergey.Semin@baikalelectronics.ru>
Cc: Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>
Cc: Maxim Kaurkin <Maxim.Kaurkin@baikalelectronics.ru>
Cc: Pavel Parkhomenko <Pavel.Parkhomenko@baikalelectronics.ru>
Cc: Ramil Zaripov <Ramil.Zaripov@baikalelectronics.ru>
Cc: Ekaterina Skachko <Ekaterina.Skachko@baikalelectronics.ru>
Cc: Vadim Vlasov <V.Vlasov@baikalelectronics.ru>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Cc: Paul Burton <paulburton@kernel.org>
Cc: Ralf Baechle <ralf@linux-mips.org>
Cc: Maxime Ripard <mripard@kernel.org>
Cc: Chen-Yu Tsai <wens@csie.org>
CC: Ray Jui <rjui@broadcom.com>
Cc: Scott Branden <sbranden@broadcom.com>
Cc: Florian Fainelli <f.fainelli@gmail.com>
Cc: Wei Xu <xuwei5@hisilicon.com>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Andrew Lunn <andrew@lunn.ch>
Cc: Gregory Clement <gregory.clement@bootlin.com>
Cc: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: Jisheng Zhang <Jisheng.Zhang@synaptics.com>
Cc: Heiko Stuebner <heiko@sntech.de>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Russell King <linux@armlinux.org.uk>
Cc: linux-arm-kernel@lists.infradead.org
Cc: Michael Turquette <mturquette@baylibre.com>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: linux-clk@vger.kernel.org

---

Changelog v2:
- Move exclusive ref clock lock/unlock precudures to the 8250 port
  startup/shutdown methods.
- The changelog message has also been slightly modified due to the
  alteration.
- Remove Alexey' SoB tag.
- Cc someone from ARM who might be concerned regarding this change.
- Cc someone from Clocks Framework to get their comments on this patch.
---
 drivers/tty/serial/8250/8250_dw.c | 36 +++++++++++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
index aab3cccc6789..08f3f745ed54 100644
--- a/drivers/tty/serial/8250/8250_dw.c
+++ b/drivers/tty/serial/8250/8250_dw.c
@@ -319,6 +319,40 @@ static void dw8250_set_ldisc(struct uart_port *p, struct ktermios *termios)
 	serial8250_do_set_ldisc(p, termios);
 }
 
+static int dw8250_startup(struct uart_port *p)
+{
+	struct dw8250_data *d = to_dw8250_data(p->private_data);
+
+	/*
+	 * Some platforms may provide a reference clock shared between several
+	 * devices. In this case before using the serial port first we have to
+	 * make sure nothing will change the rate behind our back and second
+	 * the tty/serial subsystem knows the actual reference clock rate of
+	 * the port.
+	 */
+	if (clk_rate_exclusive_get(d->clk)) {
+		dev_warn(p->dev, "Couldn't lock the clock rate\n");
+	} else if (d->clk) {
+		p->uartclk = clk_get_rate(d->clk);
+		if (!p->uartclk) {
+			clk_rate_exclusive_put(d->clk);
+			dev_err(p->dev, "Clock rate not defined\n");
+			return -EINVAL;
+		}
+	}
+
+	return serial8250_do_startup(p);
+}
+
+static void dw8250_shutdown(struct uart_port *p)
+{
+	struct dw8250_data *d = to_dw8250_data(p->private_data);
+
+	serial8250_do_shutdown(p);
+
+	clk_rate_exclusive_put(d->clk);
+}
+
 /*
  * dw8250_fallback_dma_filter will prevent the UART from getting just any free
  * channel on platforms that have DMA engines, but don't have any channels
@@ -414,6 +448,8 @@ static int dw8250_probe(struct platform_device *pdev)
 	p->serial_out	= dw8250_serial_out;
 	p->set_ldisc	= dw8250_set_ldisc;
 	p->set_termios	= dw8250_set_termios;
+	p->startup	= dw8250_startup;
+	p->shutdown	= dw8250_shutdown;
 
 	p->membase = devm_ioremap(dev, regs->start, resource_size(regs));
 	if (!p->membase)
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
