Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 470B1131C91
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 00:54:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=/bbPKRlBgZ1ee2qQuAcQzeffkAbw1Mz9BkaoeGQbrgI=; b=dF8
	Mks/Y1/017oBT3N/8UG8wyWFCZxstz0omS2UtMQsE98dEdkwsiXtWfURZYJJ+lou/rOXzS+Corqx1
	gd1rSxSLcz9XGO/KHXimpGDLQjD0+MiBUPGKhLVm4ySJJ3sPP+FavmUgVZGoJSMThRmf+7q2Avnmq
	33bq470R1PSPt1XEvpC41sWAPrp3d1ErcRVsNRL1TKlv4jyVM+Dua3lysg4peQYSC7GBmsfY3pxQo
	foL2iNzWfiIpgpYTpIUIEy2jr9M1OL7JUxLkJwysRkoNq4BNR6Y/k3pKhadrF7igBKhBwQwDyKNOm
	fN1TOtuOY+2EZfozyPFCc3Q4EsdfWNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iocC9-00007h-SH; Mon, 06 Jan 2020 23:54:01 +0000
Received: from mail.prewas.sk ([212.5.209.170])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iocC0-00006x-Nc; Mon, 06 Jan 2020 23:53:55 +0000
dkim-signature: v=1; a=rsa-sha256; d=3ksolutions.sk; s=mail.prewas.sk;
 c=relaxed/relaxed; q=dns/txt; h=From:Subject:Date:Message-ID:To:CC;
 bh=M/eBOS8Jjs955qjcv8N+fYgQg7V3zf0yVAbpJAfg4pU=;
 b=Jh49mNICcBuOfhwIKxBjMOmAyog220UbQOqz4Hp8yetRnFMitxj3TXYZPWxfb6FBEQwcg/EzTDikwqf2jSGfQ1meyWDXg9iJ6zkAkXMy0hAKPJR75iiRXh8SFuH4A6eKfZn2eup9Ud5NtfpGMexlK6hLWEd5q2qWHOEm7dEAk3sNS7k/IpwTFN7MQU+BxJuI66pj2tLEbgvRWQS8YedWho08w7V24JPGY4GC/HqEwpolk3E0pDFcd8u2pF
 wfN+r25OFNvTczZm057KJTLXQzzviptMY0pLPK7EqZiezEcT/p+QCOJ+0lAx3W1PoqXnSjb9pAZfCKBHxamPzgBmk2Pw==
Received: from localhost.localdomain (Unknown [10.0.1.41])
 by mail.prewas.sk with ESMTPSA
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128)
 ; Tue, 7 Jan 2020 00:53:20 +0100
From: Ivan Sistik <sistik@3ksolutions.sk>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] tty: serial: amba-pl011: added RS485 support
Date: Tue,  7 Jan 2020 00:52:03 +0100
Message-Id: <20200106235203.27256-1-sistik@3ksolutions.sk>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_155353_444627_0AB2FC9B 
X-CRM114-Status: GOOD (  26.30  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.5.209.170 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Stefan Wahren <stefan.wahren@i2se.com>,
 Florian Fainelli <f.fainelli@gmail.com>, Ivan Sistik <sistik@3ksolutions.sk>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Jiri Slaby <jslaby@suse.com>, linux-kernel@vger.kernel.org,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

AMBA PL011 do not have hardware support for RS485. This implementation is
for drive enable signal (DE), which switch direction of RS485 driver chip.
This signal si drived by RTS pin. Correct multiplexor settings have to be
provided to Device Tree. Usually it is 'ctsrts', which is used for enabling
of HW flow control, too.

DE signal is switched by starting transmition from serial core and data
transfer is initiated by first hrtimer if there is delay before send
enabled.

There is missing FIFO empty interrupt in PL011. It is replaced by second
hrtimer which is started if there are no more data in port transmit buffer.
Notice that port transmit buffer is not the same as HW TX FIFO. Time of
this timmer is set to char send time and it is running until fifo is empty.
This kind of implementation cause that there can be unwanted delay of one
timer tick before DE signal is switched. This is used to prevent data loss
during transmit. Second timer can start first if there is delay after send
enabled.

Signed-off-by: Ivan Sistik <sistik@3ksolutions.sk>
---
 arch/arm/configs/bcm2835_defconfig |   1 +
 drivers/tty/serial/Kconfig         |  12 +
 drivers/tty/serial/amba-pl011.c    | 470 ++++++++++++++++++++++++++++-
 3 files changed, 480 insertions(+), 3 deletions(-)

diff --git a/arch/arm/configs/bcm2835_defconfig b/arch/arm/configs/bcm2835_defconfig
index e9bc88937b1e..514888681913 100644
--- a/arch/arm/configs/bcm2835_defconfig
+++ b/arch/arm/configs/bcm2835_defconfig
@@ -78,6 +78,7 @@ CONFIG_SERIAL_8250_SHARE_IRQ=y
 CONFIG_SERIAL_8250_BCM2835AUX=y
 CONFIG_SERIAL_AMBA_PL011=y
 CONFIG_SERIAL_AMBA_PL011_CONSOLE=y
+CONFIG_SERIAL_AMBA_PL011_SOFT_RS485=y
 CONFIG_SERIAL_DEV_BUS=y
 CONFIG_TTY_PRINTK=y
 CONFIG_I2C_CHARDEV=y
diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index df8bd0c7b97d..3cecd8a75691 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -73,6 +73,18 @@ config SERIAL_AMBA_PL011_CONSOLE
 	  your boot loader (lilo or loadlin) about how to pass options to the
 	  kernel at boot time.)
 
+config SERIAL_AMBA_PL011_SOFT_RS485
+	bool "RS485 software direction switching for ARM AMBA PL011 serial"
+	depends on SERIAL_AMBA_PL011=y
+	select SERIAL_CORE
+	help
+	  Enable RS485 software direction switching of driver enable (RTS pin)
+	  for ARM AMBA PL011 serial. AMBA PL011 does not have HW support for
+	  RS485. This driver use 2 hrtimers. One is used for rs485 delays.
+	  Secon one is used for polling of TX FIFO. There is not TX FIFO
+	  empty interrupt in PL011. Secondary timer is started by empty
+	  transmit buffer.
+
 config SERIAL_EARLYCON_ARM_SEMIHOST
 	bool "Early console using ARM semihosting"
 	depends on ARM64 || ARM
diff --git a/drivers/tty/serial/amba-pl011.c b/drivers/tty/serial/amba-pl011.c
index af21122dfade..0fe24d169730 100644
--- a/drivers/tty/serial/amba-pl011.c
+++ b/drivers/tty/serial/amba-pl011.c
@@ -14,6 +14,9 @@
  * not have an RI input, nor do they have DTR or RTS outputs.  If
  * required, these have to be supplied via some other means (eg, GPIO)
  * and hooked into this driver.
+ *
+ * Added software RS485 support, 05/jan/2020, Ivan Sistik
+ *     sistik@3ksolutions.sk
  */
 
 
@@ -46,6 +49,7 @@
 #include <linux/sizes.h>
 #include <linux/io.h>
 #include <linux/acpi.h>
+#include <linux/math64.h>
 
 #include "amba-pl011.h"
 
@@ -60,6 +64,18 @@
 #define UART_DR_ERROR		(UART011_DR_OE|UART011_DR_BE|UART011_DR_PE|UART011_DR_FE)
 #define UART_DUMMY_DR_RX	(1 << 16)
 
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+/*
+ * Enum with current status
+ */
+enum rs485_status {
+	rs485_receiving,
+	rs485_delay_before_send,
+	rs485_sending,
+	rs485_delay_after_send
+};
+#endif
+
 static u16 pl011_std_offsets[REG_ARRAY_SIZE] = {
 	[REG_DR] = UART01x_DR,
 	[REG_FR] = UART01x_FR,
@@ -270,6 +286,16 @@ struct uart_amba_port {
 	unsigned int		old_cr;		/* state during shutdown */
 	unsigned int		fixed_baud;	/* vendor-set fixed baud rate */
 	char			type[12];
+
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	enum rs485_status	rs485_current_status; /* status used for RTS */
+	enum rs485_status	rs485_next_status; /* this status after tick */
+	struct hrtimer		rs485_delay_timer;
+	struct hrtimer		rs485_tx_empty_poll_timer;
+	unsigned long		send_char_time;	/* send char (nanoseconds) */
+	bool			rs485_last_char_sending;
+#endif
+
 #ifdef CONFIG_DMA_ENGINE
 	/* DMA stuff */
 	bool			using_tx_dma;
@@ -280,6 +306,25 @@ struct uart_amba_port {
 #endif
 };
 
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+
+static void pl011_rs485_start_rts_delay(struct uart_amba_port *uap);
+
+#define RS485_SET_RTS_SIGNAL(pUAP, value)		\
+	do {						\
+		unsigned int rts_temp_cr;		\
+		rts_temp_cr = pl011_read(pUAP, REG_CR);	\
+		if (!(value))				\
+			rts_temp_cr |= UART011_CR_RTS;	\
+		else					\
+			rts_temp_cr &= ~UART011_CR_RTS;	\
+		pl011_write(rts_temp_cr, pUAP, REG_CR);	\
+	} while (0)
+
+#define RS485_TX_FIFO_EMPTY(pUAP)			\
+	(pl011_read(pUAP, REG_FR) & UART011_FR_TXFE)
+#endif
+
 static unsigned int pl011_reg_to_offset(const struct uart_amba_port *uap,
 	unsigned int reg)
 {
@@ -1298,6 +1343,11 @@ static void pl011_stop_tx(struct uart_port *port)
 	uap->im &= ~UART011_TXIM;
 	pl011_write(uap->im, uap, REG_IMSC);
 	pl011_dma_tx_stop(uap);
+
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	if (uap->port.rs485.flags & SER_RS485_ENABLED)
+		pl011_rs485_start_rts_delay(uap);
+#endif
 }
 
 static bool pl011_tx_chars(struct uart_amba_port *uap, bool from_irq);
@@ -1316,8 +1366,122 @@ static void pl011_start_tx(struct uart_port *port)
 	struct uart_amba_port *uap =
 	    container_of(port, struct uart_amba_port, port);
 
-	if (!pl011_dma_tx_start(uap))
-		pl011_start_tx_pio(uap);
+#define START_PL011_TX()				\
+	do {						\
+		if (!pl011_dma_tx_start(uap))		\
+			pl011_start_tx_pio(uap);	\
+	} while (0)
+
+#ifndef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	START_PL011_TX();
+#else
+
+#define CANCEL_RS485_TIMERS()						 \
+	do {								 \
+		hrtimer_try_to_cancel(&(uap->rs485_delay_timer));	 \
+		hrtimer_try_to_cancel(&(uap->rs485_tx_empty_poll_timer));\
+	} while (0)
+
+	if (uap->port.rs485.flags & SER_RS485_ENABLED) {
+		ktime_t ktime;
+
+		switch (uap->rs485_current_status) {
+		case rs485_delay_after_send:
+			/* stop old delay timer */
+			CANCEL_RS485_TIMERS();
+
+			/* check if timer expired */
+			if (uap->rs485_current_status
+					!= rs485_delay_after_send) {
+				/* Timer expired and RTS is in wrong state.*/
+				uap->rs485_current_status
+					= rs485_delay_before_send;
+				uap->rs485_next_status = rs485_sending;
+
+				/* Set RTS */
+				RS485_SET_RTS_SIGNAL(uap,
+					uap->port.rs485.flags
+						& SER_RS485_RTS_ON_SEND);
+
+				/* Start timer */
+				ktime = ktime_set(0,
+					  uap->port.rs485
+						.delay_rts_before_send
+					  * 1000000L);
+
+				hrtimer_start(
+					&(uap->rs485_delay_timer),
+					ktime,
+					HRTIMER_MODE_REL);
+				return;
+			}
+
+			/* timer was stopped and driver can continue sending */
+			uap->rs485_current_status = rs485_sending;
+			uap->rs485_next_status = rs485_sending;
+
+			/* driver is already in sending state */
+			START_PL011_TX();
+			break;
+
+		case rs485_sending:
+			/* stop old timer. There can be running timer	*/
+			/* which is checking TX FIFO empty flag		*/
+			CANCEL_RS485_TIMERS();
+
+			/* driver is already in sending state */
+			START_PL011_TX();
+			break;
+
+		case rs485_receiving:
+		default:
+			/* stop old timer. There can be running timer	*/
+			/* which is checking TX FIFO empty flag		*/
+			CANCEL_RS485_TIMERS();
+
+			/* Set RTS */
+			RS485_SET_RTS_SIGNAL(uap,
+				     uap->port.rs485.flags
+					     & SER_RS485_RTS_ON_SEND);
+
+			if (uap->port.rs485.delay_rts_before_send == 0) {
+				/* Change state */
+				uap->rs485_current_status
+					= rs485_sending;
+				uap->rs485_next_status
+					= rs485_sending;
+
+				/* driver is in sending state */
+				START_PL011_TX();
+				break;
+			}
+
+			/* Change state */
+			uap->rs485_current_status
+				= rs485_delay_before_send;
+			uap->rs485_next_status = rs485_sending;
+
+			/* Start timer */
+			ktime = ktime_set(0,
+				  uap->port.rs485.delay_rts_before_send
+				  * 1000000L);
+			hrtimer_start(&(uap->rs485_delay_timer),
+				ktime,
+				HRTIMER_MODE_REL);
+			break;
+
+		case rs485_delay_before_send:
+			/* do nothing because delay timer should be running */
+			break;
+		}
+	} else {
+		START_PL011_TX();
+	}
+#undef CANCEL_RS485_TIMERS
+
+#endif
+
+#undef START_PL011_TX
 }
 
 static void pl011_stop_rx(struct uart_port *port)
@@ -1473,6 +1637,167 @@ static void check_apply_cts_event_workaround(struct uart_amba_port *uap)
 	dummy_read = pl011_read(uap, REG_ICR);
 }
 
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+
+/*
+ * Change state according to pending delay
+ * Locking: port is locked in this function
+ */
+static enum hrtimer_restart
+pl011_rs485_tx_poll_timer(struct hrtimer *timer)
+{
+	unsigned long flags;
+	ktime_t ktime;
+
+	struct uart_amba_port *uap =
+		container_of(timer, struct uart_amba_port,
+			     rs485_tx_empty_poll_timer);
+
+	spin_lock_irqsave(&uap->port.lock, flags);
+
+	if (!(uart_circ_empty(&uap->port.state->xmit))) {
+		spin_unlock_irqrestore(&uap->port.lock, flags);
+		return HRTIMER_NORESTART;
+	}
+
+	if (!RS485_TX_FIFO_EMPTY(uap) || !uap->rs485_last_char_sending) {
+		/*
+		 * FIFO is empty but there can be last char in transmit shift
+		 * register so we need one more tick
+		 */
+		uap->rs485_last_char_sending = RS485_TX_FIFO_EMPTY(uap);
+
+		hrtimer_forward_now(timer, ktime_set(0, uap->send_char_time));
+
+		spin_unlock_irqrestore(&uap->port.lock, flags);
+		return HRTIMER_RESTART;
+	}
+
+	/* Check if delay after send is set*/
+	if (uap->port.rs485.delay_rts_after_send == 0) {
+		/* Change state */
+		uap->rs485_current_status = rs485_receiving;
+		uap->rs485_next_status = rs485_receiving;
+
+		/* if there is no delay after send change RTS value*/
+		RS485_SET_RTS_SIGNAL(uap,
+			     uap->port.rs485.flags
+				     & SER_RS485_RTS_AFTER_SEND);
+
+		spin_unlock_irqrestore(&uap->port.lock, flags);
+		return HRTIMER_NORESTART;
+	}
+
+	/* Change state */
+	uap->rs485_current_status = rs485_delay_after_send;
+	uap->rs485_next_status = rs485_receiving;
+
+	/* RTS will be set in timer handler */
+
+	/* Start delay timer */
+	ktime = ktime_set(0, (uap->port.rs485.delay_rts_after_send
+			* 1000000L));
+	hrtimer_start(&(uap->rs485_delay_timer), ktime, HRTIMER_MODE_REL);
+
+	spin_unlock_irqrestore(&uap->port.lock, flags);
+	return HRTIMER_NORESTART;
+}
+
+/*
+ * Change state according to pending delay
+ * Locking: port is locked in this function
+ */
+static enum hrtimer_restart
+pl011_rs485_timer(struct hrtimer *timer)
+{
+	unsigned long flags;
+
+	struct uart_amba_port *uap =
+		container_of(timer, struct uart_amba_port, rs485_delay_timer);
+
+	spin_lock_irqsave(&uap->port.lock, flags);
+
+	if (uap->rs485_current_status == uap->rs485_next_status) {
+		/* timer was canceled or handled */
+		spin_unlock_irqrestore(&uap->port.lock, flags);
+		return HRTIMER_NORESTART;
+	}
+
+	switch (uap->rs485_current_status) {
+	case rs485_delay_before_send:
+		uap->rs485_current_status = rs485_sending;
+		uap->rs485_next_status = rs485_sending;
+		if (!pl011_dma_tx_start(uap))
+			pl011_start_tx_pio(uap);
+		break;
+
+	case rs485_delay_after_send:
+		uap->rs485_current_status = rs485_receiving;
+		uap->rs485_next_status = rs485_receiving;
+		RS485_SET_RTS_SIGNAL(uap,
+			     uap->port.rs485.flags
+				     & SER_RS485_RTS_AFTER_SEND);
+		break;
+
+	default:
+		break;
+	}
+
+	spin_unlock_irqrestore(&uap->port.lock, flags);
+	return HRTIMER_NORESTART;
+}
+
+/*
+ * Evaluate transmit buffer status and start delay to off
+ * Locking: called with port lock held and IRQs disabled
+ */
+static void pl011_rs485_start_rts_delay(struct uart_amba_port *uap)
+{
+	ktime_t ktime;
+
+	if (uap->rs485_current_status == rs485_receiving)
+		return;
+
+	/* if there is timeout in progress cancel it and start new */
+	hrtimer_try_to_cancel(&(uap->rs485_delay_timer));
+	hrtimer_try_to_cancel(&(uap->rs485_tx_empty_poll_timer));
+
+
+	if (!RS485_TX_FIFO_EMPTY(uap)
+			|| uap->port.rs485.delay_rts_after_send == 0) {
+		/*
+		 * Schedule validation timer if there is data in TX FIFO
+		 * because there is not TX FIFO empty interrupt
+		 */
+
+		uap->rs485_current_status = rs485_sending;
+		uap->rs485_next_status = rs485_sending;
+
+		uap->rs485_last_char_sending = false;
+
+		ktime = ktime_set(0, uap->send_char_time);
+		hrtimer_start(&(uap->rs485_tx_empty_poll_timer),
+			ktime,
+			HRTIMER_MODE_REL);
+		return;
+	}
+
+	/* Change state */
+	uap->rs485_current_status = rs485_delay_after_send;
+	uap->rs485_next_status = rs485_receiving;
+
+	/* RTS will be set in timer handler */
+
+	/* Start timer */
+	ktime = ktime_set(0, (uap->port.rs485.delay_rts_after_send
+			* 1000000L));
+
+	hrtimer_start(&(uap->rs485_delay_timer),
+		ktime,
+		HRTIMER_MODE_REL);
+}
+#endif
+
 static irqreturn_t pl011_int(int irq, void *dev_id)
 {
 	struct uart_amba_port *uap = dev_id;
@@ -1615,6 +1940,11 @@ static void pl011_quiesce_irqs(struct uart_port *port)
 	 */
 	pl011_write(pl011_read(uap, REG_IMSC) & ~UART011_TXIM, uap,
 		    REG_IMSC);
+
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	if (uap->port.rs485.flags & SER_RS485_ENABLED)
+		pl011_rs485_start_rts_delay(uap);
+#endif
 }
 
 static int pl011_get_poll_char(struct uart_port *port)
@@ -1687,6 +2017,27 @@ static int pl011_hwinit(struct uart_port *port)
 		if (plat->init)
 			plat->init();
 	}
+
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	/*
+	 * Initialize timers used for RS485
+	 */
+	hrtimer_init(&(uap->rs485_delay_timer),
+		CLOCK_MONOTONIC,
+		HRTIMER_MODE_REL);
+
+	uap->rs485_delay_timer.function = &pl011_rs485_timer;
+
+	hrtimer_init(&(uap->rs485_tx_empty_poll_timer),
+		CLOCK_MONOTONIC,
+		HRTIMER_MODE_REL);
+
+	uap->rs485_tx_empty_poll_timer.function = &pl011_rs485_tx_poll_timer;
+
+	uap->rs485_current_status = rs485_receiving;
+	RS485_SET_RTS_SIGNAL(uap, false);
+#endif
+
 	return 0;
 }
 
@@ -1870,6 +2221,16 @@ static void pl011_shutdown(struct uart_port *port)
 	struct uart_amba_port *uap =
 		container_of(port, struct uart_amba_port, port);
 
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	if (uap->port.rs485.flags & SER_RS485_ENABLED) {
+		hrtimer_try_to_cancel(&(uap->rs485_delay_timer));
+		hrtimer_try_to_cancel(&(uap->rs485_tx_empty_poll_timer));
+
+		uap->rs485_current_status = rs485_receiving;
+		RS485_SET_RTS_SIGNAL(uap, true);
+	}
+#endif
+
 	pl011_disable_interrupts(uap);
 
 	pl011_dma_shutdown(uap);
@@ -1952,6 +2313,24 @@ pl011_set_termios(struct uart_port *port, struct ktermios *termios,
 	unsigned long flags;
 	unsigned int baud, quot, clkdiv;
 
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	unsigned int transfer_bit_count;
+	unsigned long char_transfer_time;
+
+	/*
+	 * Calculate bit count which will be send
+	 * by UART. It is used for calculation of
+	 * time required to start timer until TX FIFO (HW) is empty
+	 * There is not interrupt for FIFO empty in PL011.
+	 * There is only FIFO empty flag in REG_FR.
+	 */
+	transfer_bit_count = 0;
+
+#define	ADD_DATA_BITS(bits)	(transfer_bit_count += bits)
+#else
+#define	ADD_DATA_BITS(bits)
+#endif
+
 	if (uap->vendor->oversampling)
 		clkdiv = 8;
 	else
@@ -1978,29 +2357,53 @@ pl011_set_termios(struct uart_port *port, struct ktermios *termios,
 	switch (termios->c_cflag & CSIZE) {
 	case CS5:
 		lcr_h = UART01x_LCRH_WLEN_5;
+		ADD_DATA_BITS(7);
 		break;
 	case CS6:
 		lcr_h = UART01x_LCRH_WLEN_6;
+		ADD_DATA_BITS(8);
 		break;
 	case CS7:
 		lcr_h = UART01x_LCRH_WLEN_7;
+		ADD_DATA_BITS(9);
 		break;
 	default: // CS8
 		lcr_h = UART01x_LCRH_WLEN_8;
+		ADD_DATA_BITS(10);
 		break;
 	}
-	if (termios->c_cflag & CSTOPB)
+
+	if (termios->c_cflag & CSTOPB) {
 		lcr_h |= UART01x_LCRH_STP2;
+		ADD_DATA_BITS(1);
+	}
+
 	if (termios->c_cflag & PARENB) {
 		lcr_h |= UART01x_LCRH_PEN;
+		ADD_DATA_BITS(1);
+
 		if (!(termios->c_cflag & PARODD))
 			lcr_h |= UART01x_LCRH_EPS;
+
 		if (termios->c_cflag & CMSPAR)
 			lcr_h |= UART011_LCRH_SPS;
 	}
+
+#undef ADD_DATA_BITS
+
 	if (uap->fifosize > 1)
 		lcr_h |= UART01x_LCRH_FEN;
 
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	/* Calculate time required to send one char (nanoseconds) */
+	char_transfer_time =
+		(unsigned long) div_u64(
+				mul_u32_u32(
+					(u32)transfer_bit_count,
+					(u32)NSEC_PER_SEC),
+				(u32)baud);
+#endif
+
 	spin_lock_irqsave(&port->lock, flags);
 
 	/*
@@ -2008,6 +2411,7 @@ pl011_set_termios(struct uart_port *port, struct ktermios *termios,
 	 */
 	uart_update_timeout(port, termios->c_cflag, baud);
 
+
 	pl011_setup_status_masks(port, termios);
 
 	if (UART_ENABLE_MS(port, termios->c_cflag))
@@ -2017,6 +2421,11 @@ pl011_set_termios(struct uart_port *port, struct ktermios *termios,
 	old_cr = pl011_read(uap, REG_CR);
 	pl011_write(0, uap, REG_CR);
 
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	/* Update send_char_time in locked context */
+	uap->send_char_time = char_transfer_time;
+#endif
+
 	if (termios->c_cflag & CRTSCTS) {
 		if (old_cr & UART011_CR_RTS)
 			old_cr |= UART011_CR_RTSEN;
@@ -2088,6 +2497,7 @@ static const char *pl011_type(struct uart_port *port)
 {
 	struct uart_amba_port *uap =
 	    container_of(port, struct uart_amba_port, port);
+
 	return uap->port.type == PORT_AMBA ? uap->type : NULL;
 }
 
@@ -2119,6 +2529,44 @@ static void pl011_config_port(struct uart_port *port, int flags)
 	}
 }
 
+/*
+ * Configure RS485
+ * Locking: called with port lock held and IRQs disabled
+ */
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+static int pl011_config_rs485(struct uart_port *port,
+			      struct serial_rs485 *rs485)
+{
+	struct uart_amba_port *uap =
+			container_of(port, struct uart_amba_port, port);
+
+	port->rs485.flags = rs485->flags;
+	port->rs485.delay_rts_after_send = rs485->delay_rts_after_send;
+	port->rs485.delay_rts_before_send = rs485->delay_rts_before_send;
+
+	if (port->rs485.flags & SER_RS485_ENABLED) {
+		unsigned int cr;
+
+		hrtimer_try_to_cancel(&(uap->rs485_delay_timer));
+		hrtimer_try_to_cancel(&(uap->rs485_tx_empty_poll_timer));
+
+		/* If RS485 is enabled, disable auto RTS */
+		cr = pl011_read(uap, REG_CR);
+		cr &= ~UART011_CR_RTSEN;
+		pl011_write(cr, uap, REG_CR);
+
+		uap->rs485_current_status = rs485_receiving;
+		RS485_SET_RTS_SIGNAL(uap,
+			     port->rs485.flags
+				     & SER_RS485_RTS_AFTER_SEND);
+	} else {
+		RS485_SET_RTS_SIGNAL(uap, true);
+	}
+
+	return 0;
+}
+#endif
+
 /*
  * verify the new serial_struct (for TIOCSSERIAL).
  */
@@ -2641,6 +3089,12 @@ static int pl011_probe(struct amba_device *dev, const struct amba_id *id)
 	uap->port.irq = dev->irq[0];
 	uap->port.ops = &amba_pl011_pops;
 
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+	uap->port.rs485_config = &pl011_config_rs485;
+	uap->port.rs485.flags = 0;	/* RS485 is not enabled by default */
+	dev_info(&dev->dev, "Software switching for RS485 enabled\n");
+#endif
+
 	snprintf(uap->type, sizeof(uap->type), "PL011 rev%u", amba_rev(dev));
 
 	ret = pl011_setup_port(&dev->dev, uap, &dev->res, portnr);
@@ -2816,10 +3270,15 @@ static struct amba_driver pl011_driver = {
 
 static int __init pl011_init(void)
 {
+#ifndef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
 	printk(KERN_INFO "Serial: AMBA PL011 UART driver\n");
+#else
+	printk(KERN_INFO "Serial: AMBA PL011 UART driver with soft RS485 support\n");
+#endif
 
 	if (platform_driver_register(&arm_sbsa_uart_platform_driver))
 		pr_warn("could not register SBSA UART platform driver\n");
+
 	return amba_driver_register(&pl011_driver);
 }
 
@@ -2829,6 +3288,11 @@ static void __exit pl011_exit(void)
 	amba_driver_unregister(&pl011_driver);
 }
 
+#ifdef CONFIG_SERIAL_AMBA_PL011_SOFT_RS485
+#undef RS485_SET_RTS_SIGNAL
+#undef RS485_TX_FIFO_EMPTY
+#endif
+
 /*
  * While this can be a module, if builtin it's most likely the console
  * So let's leave module_exit but move module_init to an earlier place
-- 
2.17.1



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
