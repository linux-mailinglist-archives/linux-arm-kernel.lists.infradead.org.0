Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E94E3118B2D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:38:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FBtlFrsWxww/Ecg9iwA/Ng6QCkJozx5/uMOaom0pvu0=; b=bnDELjaeapjXnW
	LnJ9tOANtpL3TZ9tsRgqJ1wrmBPkIbDgU/2mRizP9ew2oey/ccL01uBgF2aggH/EKQ58pLjghebCe
	CSf/F01EE5EK+8QO075FoyBio49hb4ZEyIGzNDVTbKmyXuHzG4tudLnZN7t+msoUiyyYtctmxs9lY
	ZmKFItbWGJmgEV/pEe7ia1VsHTanTW8J93AKMSO6mgxg6vSSYshldezkYshu2PXfS2BP4mbcwL3GA
	f5HFpqr6z+MrbXGSx383lsWGpkurE2Lv4bEHZJNMsIajgb0ScuKjQyKid3dcwLE7YYK0dp+FY3iJz
	WUNI4zCsSjzJLLUGvBag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegeW-0004xB-ED; Tue, 10 Dec 2019 14:38:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegdj-00046c-T1
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:37:30 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 159E420663;
 Tue, 10 Dec 2019 14:37:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575988647;
 bh=EB9ChD0hXmG5xdPjCrhg5MAtFSmavgKATxmIiH5oyrQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oaZIBfVhoxrb0bPGi+HmOCcQWvZuNi7S4YBDyn1sWgzZlHs4IudRF/17WuvrlPr8Y
 jGynrj3b3XkU866mQz0DUMgxuNs5vvGfNwT/QCc/mxzBOlNSrqGVH6WZhgjdiamREL
 q35DZMIHYUi75Bp+q2RcTNye2HqHTwNvj5E/yvOw=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-serial@vger.kernel.org
Subject: [PATCH 05/10] tty: serial: samsung_tty: delete samsung.h
Date: Tue, 10 Dec 2019 15:37:01 +0100
Message-Id: <20191210143706.3928480-5-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_063727_992932_269B3CA1 
X-CRM114-Status: GOOD (  13.92  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need for a .h file for a single .c file, so just move all of
the content of samsung.h into samsung_tty.c

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hyunki Koo <kkoos00@naver.com>
Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
Cc: Shinbeom Choi <sbeom.choi@samsung.com>
Cc: Jiri Slaby <jslaby@suse.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/tty/serial/samsung.h     | 144 -------------------------------
 drivers/tty/serial/samsung_tty.c | 133 +++++++++++++++++++++++++++-
 2 files changed, 130 insertions(+), 147 deletions(-)
 delete mode 100644 drivers/tty/serial/samsung.h

diff --git a/drivers/tty/serial/samsung.h b/drivers/tty/serial/samsung.h
deleted file mode 100644
index 7255ef287857..000000000000
--- a/drivers/tty/serial/samsung.h
+++ /dev/null
@@ -1,144 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0 */
-#ifndef __SAMSUNG_H
-#define __SAMSUNG_H
-
-/*
- * Driver for Samsung SoC onboard UARTs.
- *
- * Ben Dooks, Copyright (c) 2003-2008 Simtec Electronics
- *	http://armlinux.simtec.co.uk/
- */
-
-#include <linux/dmaengine.h>
-
-struct s3c24xx_uart_info {
-	char			*name;
-	unsigned int		type;
-	unsigned int		fifosize;
-	unsigned long		rx_fifomask;
-	unsigned long		rx_fifoshift;
-	unsigned long		rx_fifofull;
-	unsigned long		tx_fifomask;
-	unsigned long		tx_fifoshift;
-	unsigned long		tx_fifofull;
-	unsigned int		def_clk_sel;
-	unsigned long		num_clks;
-	unsigned long		clksel_mask;
-	unsigned long		clksel_shift;
-
-	/* uart port features */
-
-	unsigned int		has_divslot:1;
-};
-
-struct s3c24xx_serial_drv_data {
-	struct s3c24xx_uart_info	*info;
-	struct s3c2410_uartcfg		*def_cfg;
-	unsigned int			fifosize[CONFIG_SERIAL_SAMSUNG_UARTS];
-};
-
-struct s3c24xx_uart_dma {
-	unsigned int			rx_chan_id;
-	unsigned int			tx_chan_id;
-
-	struct dma_slave_config		rx_conf;
-	struct dma_slave_config		tx_conf;
-
-	struct dma_chan			*rx_chan;
-	struct dma_chan			*tx_chan;
-
-	dma_addr_t			rx_addr;
-	dma_addr_t			tx_addr;
-
-	dma_cookie_t			rx_cookie;
-	dma_cookie_t			tx_cookie;
-
-	char				*rx_buf;
-
-	dma_addr_t			tx_transfer_addr;
-
-	size_t				rx_size;
-	size_t				tx_size;
-
-	struct dma_async_tx_descriptor	*tx_desc;
-	struct dma_async_tx_descriptor	*rx_desc;
-
-	int				tx_bytes_requested;
-	int				rx_bytes_requested;
-};
-
-struct s3c24xx_uart_port {
-	unsigned char			rx_claimed;
-	unsigned char			tx_claimed;
-	unsigned int			pm_level;
-	unsigned long			baudclk_rate;
-	unsigned int			min_dma_size;
-
-	unsigned int			rx_irq;
-	unsigned int			tx_irq;
-
-	unsigned int			tx_in_progress;
-	unsigned int			tx_mode;
-	unsigned int			rx_mode;
-
-	struct s3c24xx_uart_info	*info;
-	struct clk			*clk;
-	struct clk			*baudclk;
-	struct uart_port		port;
-	struct s3c24xx_serial_drv_data	*drv_data;
-
-	/* reference to platform data */
-	struct s3c2410_uartcfg		*cfg;
-
-	struct s3c24xx_uart_dma		*dma;
-
-#ifdef CONFIG_ARM_S3C24XX_CPUFREQ
-	struct notifier_block		freq_transition;
-#endif
-};
-
-/* conversion functions */
-
-#define s3c24xx_dev_to_port(__dev) dev_get_drvdata(__dev)
-
-/* register access controls */
-
-#define portaddr(port, reg) ((port)->membase + (reg))
-#define portaddrl(port, reg) \
-	((unsigned long *)(unsigned long)((port)->membase + (reg)))
-
-#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
-#define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
-
-#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
-#define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
-
-/* Byte-order aware bit setting/clearing functions. */
-
-static inline void s3c24xx_set_bit(struct uart_port *port, int idx,
-				   unsigned int reg)
-{
-	unsigned long flags;
-	u32 val;
-
-	local_irq_save(flags);
-	val = rd_regl(port, reg);
-	val |= (1 << idx);
-	wr_regl(port, reg, val);
-	local_irq_restore(flags);
-}
-
-static inline void s3c24xx_clear_bit(struct uart_port *port, int idx,
-				     unsigned int reg)
-{
-	unsigned long flags;
-	u32 val;
-
-	local_irq_save(flags);
-	val = rd_regl(port, reg);
-	val &= ~(1 << idx);
-	wr_regl(port, reg, val);
-	local_irq_restore(flags);
-}
-
-#endif
diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 67c5a84d0a26..1a3bf5879344 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -44,11 +44,8 @@
 #include <linux/clk.h>
 #include <linux/cpufreq.h>
 #include <linux/of.h>
-
 #include <asm/irq.h>
 
-#include "samsung.h"
-
 #if	defined(CONFIG_SERIAL_SAMSUNG_DEBUG) &&	\
 	!defined(MODULE)
 
@@ -89,6 +86,136 @@ static void dbg(const char *fmt, ...)
 /* flag to ignore all characters coming in */
 #define RXSTAT_DUMMY_READ (0x10000000)
 
+struct s3c24xx_uart_info {
+	char			*name;
+	unsigned int		type;
+	unsigned int		fifosize;
+	unsigned long		rx_fifomask;
+	unsigned long		rx_fifoshift;
+	unsigned long		rx_fifofull;
+	unsigned long		tx_fifomask;
+	unsigned long		tx_fifoshift;
+	unsigned long		tx_fifofull;
+	unsigned int		def_clk_sel;
+	unsigned long		num_clks;
+	unsigned long		clksel_mask;
+	unsigned long		clksel_shift;
+
+	/* uart port features */
+
+	unsigned int		has_divslot:1;
+};
+
+struct s3c24xx_serial_drv_data {
+	struct s3c24xx_uart_info	*info;
+	struct s3c2410_uartcfg		*def_cfg;
+	unsigned int			fifosize[CONFIG_SERIAL_SAMSUNG_UARTS];
+};
+
+struct s3c24xx_uart_dma {
+	unsigned int			rx_chan_id;
+	unsigned int			tx_chan_id;
+
+	struct dma_slave_config		rx_conf;
+	struct dma_slave_config		tx_conf;
+
+	struct dma_chan			*rx_chan;
+	struct dma_chan			*tx_chan;
+
+	dma_addr_t			rx_addr;
+	dma_addr_t			tx_addr;
+
+	dma_cookie_t			rx_cookie;
+	dma_cookie_t			tx_cookie;
+
+	char				*rx_buf;
+
+	dma_addr_t			tx_transfer_addr;
+
+	size_t				rx_size;
+	size_t				tx_size;
+
+	struct dma_async_tx_descriptor	*tx_desc;
+	struct dma_async_tx_descriptor	*rx_desc;
+
+	int				tx_bytes_requested;
+	int				rx_bytes_requested;
+};
+
+struct s3c24xx_uart_port {
+	unsigned char			rx_claimed;
+	unsigned char			tx_claimed;
+	unsigned int			pm_level;
+	unsigned long			baudclk_rate;
+	unsigned int			min_dma_size;
+
+	unsigned int			rx_irq;
+	unsigned int			tx_irq;
+
+	unsigned int			tx_in_progress;
+	unsigned int			tx_mode;
+	unsigned int			rx_mode;
+
+	struct s3c24xx_uart_info	*info;
+	struct clk			*clk;
+	struct clk			*baudclk;
+	struct uart_port		port;
+	struct s3c24xx_serial_drv_data	*drv_data;
+
+	/* reference to platform data */
+	struct s3c2410_uartcfg		*cfg;
+
+	struct s3c24xx_uart_dma		*dma;
+
+#ifdef CONFIG_ARM_S3C24XX_CPUFREQ
+	struct notifier_block		freq_transition;
+#endif
+};
+
+/* conversion functions */
+
+#define s3c24xx_dev_to_port(__dev) dev_get_drvdata(__dev)
+
+/* register access controls */
+
+#define portaddr(port, reg) ((port)->membase + (reg))
+#define portaddrl(port, reg) \
+	((unsigned long *)(unsigned long)((port)->membase + (reg)))
+
+#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
+#define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
+
+#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
+#define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
+
+/* Byte-order aware bit setting/clearing functions. */
+
+static inline void s3c24xx_set_bit(struct uart_port *port, int idx,
+				   unsigned int reg)
+{
+	unsigned long flags;
+	u32 val;
+
+	local_irq_save(flags);
+	val = rd_regl(port, reg);
+	val |= (1 << idx);
+	wr_regl(port, reg, val);
+	local_irq_restore(flags);
+}
+
+static inline void s3c24xx_clear_bit(struct uart_port *port, int idx,
+				     unsigned int reg)
+{
+	unsigned long flags;
+	u32 val;
+
+	local_irq_save(flags);
+	val = rd_regl(port, reg);
+	val &= ~(1 << idx);
+	wr_regl(port, reg, val);
+	local_irq_restore(flags);
+}
+
 static inline struct s3c24xx_uart_port *to_ourport(struct uart_port *port)
 {
 	return container_of(port, struct s3c24xx_uart_port, port);
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
