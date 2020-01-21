Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D95DB14431E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:24:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=KmrMW6qQOdEAFZGOZNi7ZHmJI8Sdut+IRhkJ6Pj6jEo=; b=pUQhHvG4e+1Zpz
	Fox3tkG+FNmPy/pt7bhuC4xjA9lw6pfhBv8HhAV2kN59SFdqfyI2DSaeWIcOc68NA1Y1wKkuZjAfi
	nmuCoaSzjbx32ORPseKRWX2KwMHJZmnQWegAtQoMuokVZrb/eLkAOpDjA1PCLHR3VXOT/C5QsJimv
	wlKHm85xwJeXI5TwYQWVjMYOJRshRGd/Qv235zgVQxlshl5RMkZVASYtW1TgUUKECGstomvkCE3nu
	C2mJLcrJtWVcUGhGfqG8PyxTCJBKfnT7weD3UELx81ln4+lDWhokH+PNTXKTmqsycmJYp9tTaGjjw
	tp/K6Mj/XOksYKeq1SVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxG6-0003zS-V5; Tue, 21 Jan 2020 17:24:10 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxFr-0003wN-55
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Jan 2020 17:23:59 +0000
Received: by mail-wr1-x441.google.com with SMTP id q6so4131760wro.9
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Jan 2020 09:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=qulnROX80EQfKAAAdi+58//mX5ebVC1xGhbdWeXljF8=;
 b=eG+XPRzqZ6F4FmKkHJAHP7CO4l7BZ/6BzcAqbm2s8SSy6AGDVp+wczEGbXiWb1iJrF
 Qel8TreGnPjZz8PUCYkTC4w3bpZrvq14Te2kY9eKJjYdYs9OKTlRsPOaYb8aVn3OFn2m
 8i/m6y6AhASt6vHlvmwxUINw4oLnuf9zpJ25d0aMoMs/1BiDVPVBaUcmDTy6tHSSpuqN
 I+/L6N5zkTNiF5VxEIju3XoRsRyhOKys1YQrLc/gedSp9HHhZSrJ+79xczPT9EcTosSD
 QdD2EsKS16F8ivI0zBotGeSgd5Z+xtBoOU6Uh7Ogew341LgTJs5I/MBo3Dh3lyqwhGLi
 ILdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version;
 bh=qulnROX80EQfKAAAdi+58//mX5ebVC1xGhbdWeXljF8=;
 b=ourb1U2po6NlKQi6yyLZEE4XXR7FKaiF7NSyxANs5A+IMhvvOnkvgE6PcZ9a8j8w4x
 Kq2EvVLpMUZISbSoemlPGG0wJSG7AsCjTbiXwmjCSTvg4hRFebPTDJGcUVyRCmYICJZW
 twvTN52CUwzp6gM3fr2WsRg+GPnr776E1I606HUcFYHd1gAai+n5y+MabBWlVs1A4JPo
 97lcvMCUtVVShKeOvUy2GiT87vY/ctuYkvx7M+C1nAb4n7ZhAAL+FJgSyjEY8Q9bgKHv
 /utcbnV3CbzroAeVtKjpy9OMbNMdtPzreCFl589HUyzybOZX3C0rMqCTFL3dWpbdI5I6
 2GKA==
X-Gm-Message-State: APjAAAV5SDtPA6UdjplPDhsb1QHcgVmV18yzeV9cYaEpveWFt5xAP3Lh
 xClfM0XfIgINFuu80XFe03Q5/Q==
X-Google-Smtp-Source: APXvYqwUr3/YtOFR0+Q8ydmqs0w6X6w2Ly6cdHXfv3xa7K7S7JB/WxuwUXO9y+ENpSp33UCBQnBQfQ==
X-Received: by 2002:a5d:5273:: with SMTP id l19mr6609447wrc.175.1579627433651; 
 Tue, 21 Jan 2020 09:23:53 -0800 (PST)
Received: from localhost (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id v14sm52906783wrm.28.2020.01.21.09.23.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jan 2020 09:23:52 -0800 (PST)
From: Julien Masson <jmasson@baylibre.com>
To: Kevin Hilman <khilman@baylibre.com>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>
Subject: [PATCH v3] tty: serial: meson_uart: Add support for kernel debugger
Date: Tue, 21 Jan 2020 18:22:52 +0100
Message-ID: <867e1klo48.fsf@julienm-fedora-R90NQGV9.i-did-not-set--mail-host-address--so-tickle-me>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_092355_230372_CBACA652 
X-CRM114-Status: GOOD (  14.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Masson <jmasson@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-amlogic@lists.infradead.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The kgdb invokes the poll_put_char and poll_get_char when communicating
with the host. This patch implement the serial polling hooks for the
meson_uart to be used for KGDB debugging over serial line.

Signed-off-by: Julien Masson <jmasson@baylibre.com>
---

Changes since v2 [1]:
* Increase UART timeout to 10 ms
  -> For some reasons the previous value (1ms) is now too low with recent kernel.
     It made KGDB hang when printing long string for example.
     By setting this timeout to 10 ms, we avoid this kind of issue.

Changes since v1 [0]:
* Use readl_poll_timeout_atomic instead of looping with read + cpu_relax
  -> read every 5 usecs during 1 msec
* add some comments


* Test environment:
Board: "Le Potato"
https://libre.computer/products/boards/aml-s905x-cc/

Kernel Tree:
https://git.kernel.org/pub/scm/linux/kernel/git/khilman/linux-amlogic.git

Kernel command line arguments:
kgdboc=ttyAML0,115200 kgdbretry=4 nokaslr kgdbcon

Kernel modules:
CONFIG_DEBUG_INFO=y
CONFIG_DEBUG_KERNEL=y
CONFIG_FRAME_POINTER=y
CONFIG_KGDB=y
CONFIG_KGDB_SERIAL_CONSOLE=y

WARNING: for single step instruction I had to adapt/apply this patch:
https://lore.kernel.org/patchwork/patch/562423/


[0]: https://patchwork.kernel.org/patch/10792397/
[1]: https://patchwork.kernel.org/patch/10801583/

 drivers/tty/serial/meson_uart.c | 65 +++++++++++++++++++++++++++++++++
 1 file changed, 65 insertions(+)

diff --git a/drivers/tty/serial/meson_uart.c b/drivers/tty/serial/meson_uart.c
index fbc5bc022a39..b79c6d64bfb2 100644
--- a/drivers/tty/serial/meson_uart.c
+++ b/drivers/tty/serial/meson_uart.c
@@ -14,6 +14,7 @@
 #include <linux/delay.h>
 #include <linux/init.h>
 #include <linux/io.h>
+#include <linux/iopoll.h>
 #include <linux/module.h>
 #include <linux/kernel.h>
 #include <linux/of.h>
@@ -76,6 +77,8 @@
 #define AML_UART_PORT_OFFSET		6
 #define AML_UART_DEV_NAME		"ttyAML"
 
+#define AML_UART_POLL_USEC		5
+#define AML_UART_TIMEOUT_USEC		10000
 
 static struct uart_driver meson_uart_driver;
 
@@ -427,6 +430,64 @@ static void meson_uart_config_port(struct uart_port *port, int flags)
 	}
 }
 
+#ifdef CONFIG_CONSOLE_POLL
+/*
+ * Console polling routines for writing and reading from the uart while
+ * in an interrupt or debug context (i.e. kgdb).
+ */
+
+static int meson_uart_poll_get_char(struct uart_port *port)
+{
+	u32 c;
+	unsigned long flags;
+
+	spin_lock_irqsave(&port->lock, flags);
+
+	if (readl(port->membase + AML_UART_STATUS) & AML_UART_RX_EMPTY)
+		c = NO_POLL_CHAR;
+	else
+		c = readl(port->membase + AML_UART_RFIFO);
+
+	spin_unlock_irqrestore(&port->lock, flags);
+
+	return c;
+}
+
+static void meson_uart_poll_put_char(struct uart_port *port, unsigned char c)
+{
+	unsigned long flags;
+	u32 reg;
+	int ret;
+
+	spin_lock_irqsave(&port->lock, flags);
+
+	/* Wait until FIFO is empty or timeout */
+	ret = readl_poll_timeout_atomic(port->membase + AML_UART_STATUS, reg,
+					reg & AML_UART_TX_EMPTY,
+					AML_UART_POLL_USEC,
+					AML_UART_TIMEOUT_USEC);
+	if (ret == -ETIMEDOUT) {
+		dev_err(port->dev, "Timeout waiting for UART TX EMPTY\n");
+		goto out;
+	}
+
+	/* Write the character */
+	writel(c, port->membase + AML_UART_WFIFO);
+
+	/* Wait until FIFO is empty or timeout */
+	ret = readl_poll_timeout_atomic(port->membase + AML_UART_STATUS, reg,
+					reg & AML_UART_TX_EMPTY,
+					AML_UART_POLL_USEC,
+					AML_UART_TIMEOUT_USEC);
+	if (ret == -ETIMEDOUT)
+		dev_err(port->dev, "Timeout waiting for UART TX EMPTY\n");
+
+out:
+	spin_unlock_irqrestore(&port->lock, flags);
+}
+
+#endif /* CONFIG_CONSOLE_POLL */
+
 static const struct uart_ops meson_uart_ops = {
 	.set_mctrl      = meson_uart_set_mctrl,
 	.get_mctrl      = meson_uart_get_mctrl,
@@ -442,6 +503,10 @@ static const struct uart_ops meson_uart_ops = {
 	.request_port	= meson_uart_request_port,
 	.release_port	= meson_uart_release_port,
 	.verify_port	= meson_uart_verify_port,
+#ifdef CONFIG_CONSOLE_POLL
+	.poll_get_char	= meson_uart_poll_get_char,
+	.poll_put_char	= meson_uart_poll_put_char,
+#endif
 };
 
 #ifdef CONFIG_SERIAL_MESON_CONSOLE
-- 
2.21.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
