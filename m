Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24C5C1A5216
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 11 Apr 2020 14:34:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=osbVhVFuFmmd4NBYfNP4Dh3hn3T50H+0PVhMlWyJt/U=; b=oSD
	x5ca19OJyIvysLr/BZxaKa6HM9z6XFx/ijnnbC61rYMysFZdhnbsSkRLL4awG/5ElI3cZZRtNZrZ2
	3H99xqMVq0MbxUp+9b+35uWo/1z2HLkZJAJw+8Fhjug1beW490t/rfGRKPyF8558DBhBNqEO38/qm
	Sdqnp8acb/UeY2Cf++N1xXftkLNBp/uMvW6LsCRmsT7OqkS+LU8cuCFuefmjLsnzBWEGm/x8n3GX8
	2x4HzJA+8Or20nuw2bR/WLo3MqAsVplucB8HgU53GoDDTXSKo4b2f8UvMe+wCEJmsMHKHAwQbCX9e
	gk40VxCJhBdZywm9x0OLxz/OVbFwMyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jNFKl-0001wT-R6; Sat, 11 Apr 2020 12:34:03 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNFKe-0001vx-Ol
 for linux-arm-kernel@lists.infradead.org; Sat, 11 Apr 2020 12:33:58 +0000
Received: by mail-pf1-x444.google.com with SMTP id k15so2253382pfh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 11 Apr 2020 05:33:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=gnw6hlk+JnnAj87CuNrSUZ8DpMu9l57IOqgjCT7NThc=;
 b=OlXurp1nngb6HV4qIscQm7g3d0p0GHvxpPFx5XmNz6FphwmcqtVOvbJBJaUTQHE1Lf
 aSAVsCp0taW7akeQXksXaqdHBo8w73aR4UboLqylyMevhhxVawvgdiZQrKaY1BoxcUeD
 93QgubJL/IMPalI3IM80fbK/kP9GyN5BSNtO1MhIQzusYDtkYeVj2o9+kAFMvIMWi3mP
 eUME8ICdRmwHesJo9jjaNpB8CosoVSRJeZSHo94RMzCjDmeO9o6YFEcnd3jjiDysWpiv
 GbvEoOA6G/2BZBkE4KXzpM1fngOgiVQK5Uwg5fP/7+e1FVwq/TFFJQpUc9QuZukSevpq
 22lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=gnw6hlk+JnnAj87CuNrSUZ8DpMu9l57IOqgjCT7NThc=;
 b=af/Biijgu6QSaDZCyQvGMGtJgXgJr5OMqjE3de9ajfbvKQjYhf1nMIT8S6++ffeM1F
 Gh+ZuKKV4++CEpAmcR262cFFmwK5/uYtSc9LGqberXnDRzmk7RWhOp10exNGokvQ9uCs
 iuFCOswSHtq7F+bqYFzPvL/PHoHELdi3PijICiJMhnawbosQe3VYgE2h3CK8BMlWDGkm
 kMC2HNzix9ahtgAEAUq8aXcyGBiDtw9Kipr4SDUXSqOUsSkRrNXLBvW1+AqIQGvAEqCs
 7L0HTiaqRBXg4RLECJfDB/YHqXfNu2DbyH1JsgNbdMd77nHHI9rVUJcfs+Ae6S7mQDSA
 bNwA==
X-Gm-Message-State: AGi0PuY3Vv9OEAjy4cYy+f/kjPkAwCzQZJHJz3ZcY+/dxIKEkUDAKnFp
 JHddvCU5wFZCbFsiOWOO/Zo=
X-Google-Smtp-Source: APiQypK2cswsg3hnhBKAvsRfSomdnFscjCEBqO7552MoYZ5KejiCel1V/HmXMy8r6dIYqIUL8aAtmQ==
X-Received: by 2002:a65:6449:: with SMTP id s9mr8439430pgv.97.1586608435226;
 Sat, 11 Apr 2020 05:33:55 -0700 (PDT)
Received: from localhost.localdomain ([211.243.117.64])
 by smtp.gmail.com with ESMTPSA id g2sm4117641pfh.193.2020.04.11.05.33.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 11 Apr 2020 05:33:54 -0700 (PDT)
From: Hyunki Koo <hyunki00.koo@gmail.com>
To: gregkh@linuxfoundation.org,
	robh+dt@kernel.org,
	krzk@kernel.org
Subject: [PATCH v7 2/2] Support 32-bit access for the TX/RX hold registers
 UTXH and URXH.
Date: Sat, 11 Apr 2020 21:33:24 +0900
Message-Id: <20200411123325.30501-1-hyunki00.koo@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200411_053356_827629_01D29A17 
X-CRM114-Status: GOOD (  14.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [hyunki00.koo[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Hyunki Koo <hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Hyunki Koo <hyunki00.koo@samsung.com>

This is required for some newer SoCs.

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Tested on Odroid HC1 (Exynos5422):
Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
---
v2: 
line 954 : change rd_regl to rd_reg in for backward compatibility.
line 2031: Add init value for ourport->port.iotype  to UPIO_MEM 
v3:
line 2031: remove redundant init value  for ourport->port.iotype 
v4:
correct variable types and change misleading function name
v5:
add dt-binding and go as first patch in this series.
v6:
no change in this patch, only chaged in [PATCH v6 1/2]
v7:
add reviewed by and tested by
---
 drivers/tty/serial/samsung_tty.c | 76 +++++++++++++++++++++++++++-----
 1 file changed, 64 insertions(+), 12 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 73f951d65b93..bdf1d4d12cb1 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -154,12 +154,47 @@ struct s3c24xx_uart_port {
 #define portaddrl(port, reg) \
 	((unsigned long *)(unsigned long)((port)->membase + (reg)))
 
-#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
+static u32 rd_reg(struct uart_port *port, u32 reg)
+{
+	switch (port->iotype) {
+	case UPIO_MEM:
+		return readb_relaxed(portaddr(port, reg));
+	case UPIO_MEM32:
+		return readl_relaxed(portaddr(port, reg));
+	default:
+		return 0;
+	}
+	return 0;
+}
+
 #define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
 
-#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
+static void wr_reg(struct uart_port *port, u32 reg, u32 val)
+{
+	switch (port->iotype) {
+	case UPIO_MEM:
+		writeb_relaxed(val, portaddr(port, reg));
+		break;
+	case UPIO_MEM32:
+		writel_relaxed(val, portaddr(port, reg));
+		break;
+	}
+}
+
 #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
 
+static void wr_reg_barrier(struct uart_port *port, u32 reg, u32 val)
+{
+	switch (port->iotype) {
+	case UPIO_MEM:
+		writeb(val, portaddr(port, reg));
+		break;
+	case UPIO_MEM32:
+		writel(val, portaddr(port, reg));
+		break;
+	}
+}
+
 /* Byte-order aware bit setting/clearing functions. */
 
 static inline void s3c24xx_set_bit(struct uart_port *port, int idx,
@@ -714,7 +749,7 @@ static void s3c24xx_serial_rx_drain_fifo(struct s3c24xx_uart_port *ourport)
 		fifocnt--;
 
 		uerstat = rd_regl(port, S3C2410_UERSTAT);
-		ch = rd_regb(port, S3C2410_URXH);
+		ch = rd_reg(port, S3C2410_URXH);
 
 		if (port->flags & UPF_CONS_FLOW) {
 			int txe = s3c24xx_serial_txempty_nofifo(port);
@@ -826,7 +861,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
 	}
 
 	if (port->x_char) {
-		wr_regb(port, S3C2410_UTXH, port->x_char);
+		wr_reg(port, S3C2410_UTXH, port->x_char);
 		port->icount.tx++;
 		port->x_char = 0;
 		goto out;
@@ -852,7 +887,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
 		if (rd_regl(port, S3C2410_UFSTAT) & ourport->info->tx_fifofull)
 			break;
 
-		wr_regb(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
+		wr_reg(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
 		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
 		port->icount.tx++;
 		count--;
@@ -916,7 +951,7 @@ static unsigned int s3c24xx_serial_tx_empty(struct uart_port *port)
 /* no modem control lines */
 static unsigned int s3c24xx_serial_get_mctrl(struct uart_port *port)
 {
-	unsigned int umstat = rd_regb(port, S3C2410_UMSTAT);
+	unsigned int umstat = rd_reg(port, S3C2410_UMSTAT);
 
 	if (umstat & S3C2410_UMSTAT_CTS)
 		return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
@@ -1974,7 +2009,7 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct s3c24xx_uart_port *ourport;
 	int index = probe_index;
-	int ret;
+	int ret, prop = 0;
 
 	if (np) {
 		ret = of_alias_get_id(np, "serial");
@@ -2000,10 +2035,27 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
 			dev_get_platdata(&pdev->dev) :
 			ourport->drv_data->def_cfg;
 
-	if (np)
+	if (np) {
 		of_property_read_u32(np,
 			"samsung,uart-fifosize", &ourport->port.fifosize);
 
+		if (of_property_read_u32(np, "reg-io-width", &prop) == 0) {
+			switch (prop) {
+			case 1:
+				ourport->port.iotype = UPIO_MEM;
+				break;
+			case 4:
+				ourport->port.iotype = UPIO_MEM32;
+				break;
+			default:
+				dev_warn(&pdev->dev, "unsupported reg-io-width (%d)\n",
+						prop);
+				ret = -EINVAL;
+				break;
+			}
+		}
+	}
+
 	if (ourport->drv_data->fifosize[index])
 		ourport->port.fifosize = ourport->drv_data->fifosize[index];
 	else if (ourport->info->fifosize)
@@ -2185,7 +2237,7 @@ static int s3c24xx_serial_get_poll_char(struct uart_port *port)
 	if (s3c24xx_serial_rx_fifocnt(ourport, ufstat) == 0)
 		return NO_POLL_CHAR;
 
-	return rd_regb(port, S3C2410_URXH);
+	return rd_reg(port, S3C2410_URXH);
 }
 
 static void s3c24xx_serial_put_poll_char(struct uart_port *port,
@@ -2200,7 +2252,7 @@ static void s3c24xx_serial_put_poll_char(struct uart_port *port,
 
 	while (!s3c24xx_serial_console_txrdy(port, ufcon))
 		cpu_relax();
-	wr_regb(port, S3C2410_UTXH, c);
+	wr_reg(port, S3C2410_UTXH, c);
 }
 
 #endif /* CONFIG_CONSOLE_POLL */
@@ -2212,7 +2264,7 @@ s3c24xx_serial_console_putchar(struct uart_port *port, int ch)
 
 	while (!s3c24xx_serial_console_txrdy(port, ufcon))
 		cpu_relax();
-	wr_regb(port, S3C2410_UTXH, ch);
+	wr_reg(port, S3C2410_UTXH, ch);
 }
 
 static void
@@ -2612,7 +2664,7 @@ static void samsung_early_putc(struct uart_port *port, int c)
 	else
 		samsung_early_busyuart(port);
 
-	writeb(c, port->membase + S3C2410_UTXH);
+	wr_reg_barrier(port, S3C2410_UTXH, c);
 }
 
 static void samsung_early_write(struct console *con, const char *s,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
