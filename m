Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 831101B1283
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 19:03:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=eTy8iqnreCErG+DSCahq7lI8QraAhTJdE+c71tUEa/o=; b=fDdz3uakde1+x4o8SLixrMl2QS
	JUy/0gs0aDztgabN2o8l3xLFkE0a5XDWrHYHPvrK2h2jKQoox7cp0eEH/THv2fU8K3bAZ1elS64L/
	3B4PegcNSxmbhSUxQJpTpIoQv0yp4NR0NgzdZJcuh8Z/ZOIg0xUjJNhEOBoDgNmRPleoXpPtv3IpW
	nKsoewXVBSo5hBUJRhPw1yqzacuHEv03QOGDwc3u52q0cJKPBaxc5exfRxRjtKm6p6f/FDCGttpmd
	dm6O9DG5cfLWw3tc2M8DKKsvSLaWK4pvwZ++eA2UHKlmt9qGPpWRfxAi/sSyPrtxtzZaHTUllq3OI
	8iwjwQOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQZoy-0007R1-U4; Mon, 20 Apr 2020 17:03:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQZoW-0007EU-Lb
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 17:02:34 +0000
Received: from localhost.localdomain (unknown [157.46.94.248])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 60C5D221F4;
 Mon, 20 Apr 2020 17:02:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1587402151;
 bh=plMzlobQNccyl97bdN7R33bGIDUnUZmwwqOwhihDlNY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=SQoDVIQpN/VZy7sDK1aZIiMW9C0CDN9KdUol7rsq1Ba1n7p0dX8xxuWNbXmLsRxwu
 huLrKf/jlWP46Vm1R0rOK539k1YpaL60iApYRnV8TgECCfppSF4vkCfNXZE0Fve6n6
 cXHum4o73j41QL2N0V73y4yGVM+3DqG6AqPsHBX8=
From: mani@kernel.org
To: gregkh@linuxfoundation.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 alexandre.torgue@st.com
Subject: [PATCH v3 2/2] tty: serial: Add modem control gpio support for STM32
 UART
Date: Mon, 20 Apr 2020 22:32:04 +0530
Message-Id: <20200420170204.24541-3-mani@kernel.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200420170204.24541-1-mani@kernel.org>
References: <20200420170204.24541-1-mani@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200420_100232_774107_2EE41C6F 
X-CRM114-Status: GOOD (  18.38  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Manivannan Sadhasivam <mani@kernel.org>,
 linux-kernel@vger.kernel.org, andy.shevchenko@gmail.com,
 linux-serial@vger.kernel.org, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Manivannan Sadhasivam <mani@kernel.org>

STM32 UART controllers have the built in modem control support using
dedicated gpios which can be enabled using 'st,hw-flow-ctrl' flag in DT.
But there might be cases where the board design need to use different
gpios for modem control.

For supporting such cases, this commit adds modem control gpio support
to STM32 UART controller using mctrl_gpio driver.

Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
Signed-off-by: Manivannan Sadhasivam <mani@kernel.org>
---
 drivers/tty/serial/Kconfig       |  1 +
 drivers/tty/serial/stm32-usart.c | 53 ++++++++++++++++++++++++++++++--
 drivers/tty/serial/stm32-usart.h |  1 +
 3 files changed, 53 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/Kconfig b/drivers/tty/serial/Kconfig
index 0aea76cd67ff..e7a6f2130684 100644
--- a/drivers/tty/serial/Kconfig
+++ b/drivers/tty/serial/Kconfig
@@ -1462,6 +1462,7 @@ config SERIAL_STM32
 	tristate "STMicroelectronics STM32 serial port support"
 	select SERIAL_CORE
 	depends on ARCH_STM32 || COMPILE_TEST
+	select SERIAL_MCTRL_GPIO if GPIOLIB
 	help
 	  This driver is for the on-chip Serial Controller on
 	  STMicroelectronics STM32 MCUs.
diff --git a/drivers/tty/serial/stm32-usart.c b/drivers/tty/serial/stm32-usart.c
index 5e93e8d40f59..17c2f3276888 100644
--- a/drivers/tty/serial/stm32-usart.c
+++ b/drivers/tty/serial/stm32-usart.c
@@ -31,6 +31,7 @@
 #include <linux/tty_flip.h>
 #include <linux/tty.h>
 
+#include "serial_mctrl_gpio.h"
 #include "stm32-usart.h"
 
 static void stm32_stop_tx(struct uart_port *port);
@@ -510,12 +511,29 @@ static void stm32_set_mctrl(struct uart_port *port, unsigned int mctrl)
 		stm32_set_bits(port, ofs->cr3, USART_CR3_RTSE);
 	else
 		stm32_clr_bits(port, ofs->cr3, USART_CR3_RTSE);
+
+	mctrl_gpio_set(stm32_port->gpios, mctrl);
 }
 
 static unsigned int stm32_get_mctrl(struct uart_port *port)
 {
+	struct stm32_port *stm32_port = to_stm32_port(port);
+	unsigned int ret;
+
 	/* This routine is used to get signals of: DCD, DSR, RI, and CTS */
-	return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
+	ret = TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
+
+	return mctrl_gpio_get(stm32_port->gpios, &ret);
+}
+
+static void stm32_enable_ms(struct uart_port *port)
+{
+	mctrl_gpio_enable_ms(to_stm32_port(port)->gpios);
+}
+
+static void stm32_disable_ms(struct uart_port *port)
+{
+	mctrl_gpio_disable_ms(to_stm32_port(port)->gpios);
 }
 
 /* Transmit stop */
@@ -626,6 +644,9 @@ static void stm32_shutdown(struct uart_port *port)
 	u32 val, isr;
 	int ret;
 
+	/* Disable modem control interrupts */
+	stm32_disable_ms(port);
+
 	val = USART_CR1_TXEIE | USART_CR1_TE;
 	val |= stm32_port->cr1_irq | USART_CR1_RE;
 	val |= BIT(cfg->uart_enable_bit);
@@ -764,6 +785,12 @@ static void stm32_set_termios(struct uart_port *port, struct ktermios *termios,
 		cr3 |= USART_CR3_CTSE | USART_CR3_RTSE;
 	}
 
+	/* Handle modem control interrupts */
+	if (UART_ENABLE_MS(port, termios->c_cflag))
+		stm32_enable_ms(port);
+	else
+		stm32_disable_ms(port);
+
 	usartdiv = DIV_ROUND_CLOSEST(port->uartclk, baud);
 
 	/*
@@ -898,6 +925,7 @@ static const struct uart_ops stm32_uart_ops = {
 	.throttle	= stm32_throttle,
 	.unthrottle	= stm32_unthrottle,
 	.stop_rx	= stm32_stop_rx,
+	.enable_ms	= stm32_enable_ms,
 	.break_ctl	= stm32_break_ctl,
 	.startup	= stm32_startup,
 	.shutdown	= stm32_shutdown,
@@ -960,10 +988,31 @@ static int stm32_init_port(struct stm32_port *stm32port,
 
 	stm32port->port.uartclk = clk_get_rate(stm32port->clk);
 	if (!stm32port->port.uartclk) {
-		clk_disable_unprepare(stm32port->clk);
 		ret = -EINVAL;
+		goto err_clk;
+	}
+
+	stm32port->gpios = mctrl_gpio_init(&stm32port->port, 0);
+	if (IS_ERR(stm32port->gpios)) {
+		ret = PTR_ERR(stm32port->gpios);
+		goto err_clk;
 	}
 
+	/* Both CTS/RTS gpios and "st,hw-flow-ctrl" should not be specified */
+	if (stm32port->hw_flow_control) {
+		if (mctrl_gpio_to_gpiod(stm32port->gpios, UART_GPIO_CTS) ||
+		    mctrl_gpio_to_gpiod(stm32port->gpios, UART_GPIO_RTS)) {
+			dev_err(&pdev->dev, "Conflicting RTS/CTS config\n");
+			ret = -EINVAL;
+			goto err_clk;
+		}
+	}
+
+	return ret;
+
+err_clk:
+	clk_disable_unprepare(stm32port->clk);
+
 	return ret;
 }
 
diff --git a/drivers/tty/serial/stm32-usart.h b/drivers/tty/serial/stm32-usart.h
index db8bf0d4982d..d4c916e78d40 100644
--- a/drivers/tty/serial/stm32-usart.h
+++ b/drivers/tty/serial/stm32-usart.h
@@ -274,6 +274,7 @@ struct stm32_port {
 	bool fifoen;
 	int wakeirq;
 	int rdr_mask;		/* receive data register mask */
+	struct mctrl_gpios *gpios; /* modem control gpios */
 };
 
 static struct stm32_port stm32_ports[STM32_MAX_PORTS];
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
