Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0B421C7DF4
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 01:33:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hUaXva5xalnoV9W4+7/y8BS3NoZ/7V9k1ziNojHjdJI=; b=cnageyGRZ5ZHWI
	wfs/6pCEEwcdkUyVHx0ywQ2oUGzH6CSQPC6LovLp1q1Jlsx6nnwxG8gjfbsuXsoPo79Bgnnjzce7Q
	HEiEQDofURCLkSHpt1wagQcZr3/pWjWd+kXhMH/tNiHmyMo175EfyP2g2Kl3cAZeTPUB8+gtvnvqv
	BeRqrf9wkypAh21Ahn9CmOplbWXghdepHipYmw56/HpJXdYLs7FmCbjjSElVlwbcA1L1uWeVcw5bh
	wxzCDeiZV8vvkIQAEmeO7ay19tzLRhi2QfYWRD6TkjQNOdl9uAvMc68t0KZviN/XAMiYRx40ouXzC
	ovFiGedgQxW8fFm9nAuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWTXN-0003IZ-1Y; Wed, 06 May 2020 23:33:13 +0000
Received: from mx.baikalelectronics.com ([94.125.187.42]
 helo=mail.baikalelectronics.ru)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWTWB-000281-Bm; Wed, 06 May 2020 23:32:01 +0000
Received: from localhost (unknown [127.0.0.1])
 by mail.baikalelectronics.ru (Postfix) with ESMTP id 90CC580307C7;
 Wed,  6 May 2020 23:31:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at baikalelectronics.ru
Received: from mail.baikalelectronics.ru ([127.0.0.1])
 by localhost (mail.baikalelectronics.ru [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id wKfdVf1ADvRI; Thu,  7 May 2020 02:31:57 +0300 (MSK)
From: Serge Semin <Sergey.Semin@baikalelectronics.ru>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Jiri Slaby <jslaby@suse.com>, Andy Shevchenko
 <andriy.shevchenko@linux.intel.com>
Subject: [PATCH v3 4/4] serial: 8250_dw: Fix common clocks usage race condition
Date: Thu, 7 May 2020 02:31:35 +0300
Message-ID: <20200506233136.11842-5-Sergey.Semin@baikalelectronics.ru>
In-Reply-To: <20200506233136.11842-1-Sergey.Semin@baikalelectronics.ru>
References: <20200323024611.16039-1-Sergey.Semin@baikalelectronics.ru>
 <20200506233136.11842-1-Sergey.Semin@baikalelectronics.ru>
MIME-Version: 1.0
X-ClientProxiedBy: MAIL.baikal.int (192.168.51.25) To mail (192.168.51.25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_163159_796576_D6C65E28 
X-CRM114-Status: GOOD (  24.31  )
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
Cc: Maxime Ripard <mripard@kernel.org>,
 Kefeng Wang <wangkefeng.wang@huawei.com>,
 Heikki Krogerus <heikki.krogerus@linux.intel.com>,
 linux-kernel@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Arnd Bergmann <arnd@arndb.de>, Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Ralf Baechle <ralf@linux-mips.org>,
 Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
 Serge Semin <Sergey.Semin@baikalelectronics.ru>,
 Long Cheng <long.cheng@mediatek.com>, linux-mediatek@lists.infradead.org,
 Serge Semin <fancer.lancer@gmail.com>, linux-serial@vger.kernel.org,
 linux-mips@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The race condition may happen if the UART reference clock is shared with
some other device (on Baikal-T1 SoC it's another DW UART port). In this
case if that device changes the clock rate while serial console is using
it the DW 8250 UART port might not only end up with an invalid uartclk
value saved, but may also experience a distorted output data since
baud-clock could have been changed. In order to fix this lets at least
try to adjust the 8250 port setting like UART clock rate in case if the
reference clock rate change is discovered. The driver will call the new
method to update 8250 UART port clock rate settings. It's done by means of
the clock event notifier registered at the port startup and unregistered
in the shutdown callback method.

Note 1. In order to avoid deadlocks we had to execute the UART port update
method in a dedicated deferred work. This is due to (in my opinion
redundant) the clock update implemented in the dw8250_set_termios()
method.
Note 2. Before the ref clock is manually changed by the custom
set_termios() function we swap the port uartclk value with new rate
adjusted to be suitable for the requested baud. It is necessary in
order to effectively disable a functionality of the ref clock events
handler for the current UART port, since uartclk update will be done
a bit further in the generic serial8250_do_set_termios() function.

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

Changelog v2:
- Move exclusive ref clock lock/unlock precudures to the 8250 port
  startup/shutdown methods.
- The changelog message has also been slightly modified due to the
  alteration.
- Remove Alexey' SoB tag.
- Cc someone from ARM who might be concerned regarding this change.
- Cc someone from Clocks Framework to get their comments on this patch.

Changelog v3:
- Refactor the original patch to adjust the UART port divisor instead of
  requesting an exclusive ref clock utilization.
---
 drivers/tty/serial/8250/8250_dw.c | 114 +++++++++++++++++++++++++++++-
 1 file changed, 111 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/8250/8250_dw.c b/drivers/tty/serial/8250/8250_dw.c
index 12866083731d..cf4de510ab1b 100644
--- a/drivers/tty/serial/8250/8250_dw.c
+++ b/drivers/tty/serial/8250/8250_dw.c
@@ -19,6 +19,8 @@
 #include <linux/of_irq.h>
 #include <linux/of_platform.h>
 #include <linux/platform_device.h>
+#include <linux/workqueue.h>
+#include <linux/notifier.h>
 #include <linux/slab.h>
 #include <linux/acpi.h>
 #include <linux/clk.h>
@@ -43,6 +45,8 @@ struct dw8250_data {
 	int			msr_mask_off;
 	struct clk		*clk;
 	struct clk		*pclk;
+	struct notifier_block	clk_notifier;
+	struct work_struct	clk_work;
 	struct reset_control	*rst;
 
 	unsigned int		skip_autocfg:1;
@@ -54,6 +58,16 @@ static inline struct dw8250_data *to_dw8250_data(struct dw8250_port_data *data)
 	return container_of(data, struct dw8250_data, data);
 }
 
+static inline struct dw8250_data *clk_to_dw8250_data(struct notifier_block *nb)
+{
+	return container_of(nb, struct dw8250_data, clk_notifier);
+}
+
+static inline struct dw8250_data *work_to_dw8250_data(struct work_struct *work)
+{
+	return container_of(work, struct dw8250_data, clk_work);
+}
+
 static inline int dw8250_modify_msr(struct uart_port *p, int offset, int value)
 {
 	struct dw8250_data *d = to_dw8250_data(p->private_data);
@@ -260,6 +274,45 @@ static int dw8250_handle_irq(struct uart_port *p)
 	return 0;
 }
 
+static void dw8250_clk_work_cb(struct work_struct *work)
+{
+	struct dw8250_data *d = work_to_dw8250_data(work);
+	struct uart_8250_port *up;
+	unsigned long rate;
+
+	rate = clk_get_rate(d->clk);
+	if (rate) {
+		up = serial8250_get_port(d->data.line);
+
+		serial8250_update_uartclk(&up->port, rate);
+	}
+}
+
+static int dw8250_clk_notifier_cb(struct notifier_block *nb,
+				  unsigned long event, void *data)
+{
+	struct dw8250_data *d = clk_to_dw8250_data(nb);
+
+	/*
+	 * We have no choice but to defer the uartclk update due to two
+	 * deadlocks. First one is caused by a recursive mutex lock which
+	 * happens when clk_set_rate() is called from dw8250_set_termios().
+	 * Second deadlock is more tricky and is caused by an inverted order of
+	 * the clk and tty-port mutexes lock. It happens if clock rate change
+	 * is requested asynchronously while set_termios() is executed between
+	 * tty-port mutex lock and clk_set_rate() function invocation and
+	 * vise-versa. Anyway if we didn't have the reference clock alteration
+	 * in the dw8250_set_termios() method we wouldn't have needed this
+	 * deferred event handling complication.
+	 */
+	if (event == POST_RATE_CHANGE) {
+		queue_work(system_unbound_wq, &d->clk_work);
+		return NOTIFY_OK;
+	}
+
+	return NOTIFY_DONE;
+}
+
 static void
 dw8250_do_pm(struct uart_port *port, unsigned int state, unsigned int old)
 {
@@ -283,9 +336,16 @@ static void dw8250_set_termios(struct uart_port *p, struct ktermios *termios,
 	clk_disable_unprepare(d->clk);
 	rate = clk_round_rate(d->clk, baud * 16);
 	if (rate > 0) {
-		ret = clk_set_rate(d->clk, rate);
-		if (!ret)
-			p->uartclk = rate;
+		/*
+		 * Premilinary set the uartclk to the new clock rate so the
+		 * clock update event handler caused by the clk_set_rate()
+		 * calling wouldn't actually update the UART divisor since
+		 * we about to do this anyway.
+		 */
+		swap(p->uartclk, rate);
+		ret = clk_set_rate(d->clk, p->uartclk);
+		if (ret)
+			swap(p->uartclk, rate);
 	}
 	clk_prepare_enable(d->clk);
 
@@ -312,6 +372,49 @@ static void dw8250_set_ldisc(struct uart_port *p, struct ktermios *termios)
 	serial8250_do_set_ldisc(p, termios);
 }
 
+static int dw8250_startup(struct uart_port *p)
+{
+	struct dw8250_data *d = to_dw8250_data(p->private_data);
+	int ret;
+
+	/*
+	 * Some platforms may provide a reference clock shared between several
+	 * devices. In this case before using the serial port first we have to
+	 * make sure that any clock state change is known to the UART port at
+	 * least post factum.
+	 */
+	if (d->clk) {
+		ret = clk_notifier_register(d->clk, &d->clk_notifier);
+		if (ret)
+			dev_warn(p->dev, "Failed to set the clock notifier\n");
+
+		/*
+		 * Get current reference clock rate to make sure the UART port
+		 * is equipped with an up-to-date value before it's started up.
+		 */
+		p->uartclk = clk_get_rate(d->clk);
+		if (!p->uartclk) {
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
+	if (d->clk) {
+		clk_notifier_unregister(d->clk, &d->clk_notifier);
+
+		flush_work(&d->clk_work);
+	}
+}
+
 /*
  * dw8250_fallback_dma_filter will prevent the UART from getting just any free
  * channel on platforms that have DMA engines, but don't have any channels
@@ -407,6 +510,8 @@ static int dw8250_probe(struct platform_device *pdev)
 	p->serial_out	= dw8250_serial_out;
 	p->set_ldisc	= dw8250_set_ldisc;
 	p->set_termios	= dw8250_set_termios;
+	p->startup	= dw8250_startup;
+	p->shutdown	= dw8250_shutdown;
 
 	p->membase = devm_ioremap(dev, regs->start, resource_size(regs));
 	if (!p->membase)
@@ -468,6 +573,9 @@ static int dw8250_probe(struct platform_device *pdev)
 	if (IS_ERR(data->clk))
 		return PTR_ERR(data->clk);
 
+	INIT_WORK(&data->clk_work, dw8250_clk_work_cb);
+	data->clk_notifier.notifier_call = dw8250_clk_notifier_cb;
+
 	err = clk_prepare_enable(data->clk);
 	if (err)
 		dev_warn(dev, "could not enable optional baudclk: %d\n", err);
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
