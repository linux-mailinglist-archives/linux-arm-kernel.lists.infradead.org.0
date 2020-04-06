Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A7B71A016A
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 01:09:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Rk6zrBiq1vRVZsRz1XJtzrEg5Nc6JZ7CXZY3t8caalY=; b=QqTqzZk7XKU24qYcRZMpml6NZn
	U4nN3ea53czHzyXFCOANoj7xjxJOjAeHpxdIkt02Ith+dI4mRc75Hu+eaCbHRe7JXwPbP0nTRfusM
	oULjqpE7Nsd4SUhXcVGUbnT/i0JwfZptK/srG959JMje2b4QwUJdUmjtiB6+SrMD6d6V0YMRPLYSl
	h9Ac18+I5pLZLw+fzmcQ7l/GAgc4/qJ8oRZUsTsMXNQsxgrsdQ2jSDjI6TOouw6AkB16XO/uPYef3
	RAsR//Y/zLt3fi12wPTEGLV3OPIuSdOQhJU8d+db0y0zA9EeCPyiY1a9Jv+OOD1P1pCNJsfmNkxl6
	NWVpokyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLaro-00061s-8q; Mon, 06 Apr 2020 23:09:20 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLare-00060Q-0Y
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Apr 2020 23:09:13 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200406230906epoutp043a018e65a212ec18edb46a9edc095b11~DXbnG3c8_0821008210epoutp04f
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  6 Apr 2020 23:09:06 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200406230906epoutp043a018e65a212ec18edb46a9edc095b11~DXbnG3c8_0821008210epoutp04f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1586214546;
 bh=eP/Cm/BDeTjiEJ0eo6+xEuRBGp90pE4MGvFF+tLmf1w=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=urUqJGonvR54BWeiW41J1WLkInDI8PbQf8Dw7hmqtyTGzulJLEoSMTKpnlf7hW/2J
 5vuO+gu0JNJjTPC+dcmFyQynM74Zm3LKfXZ5LtJwzm3ngdzK78Yp9jLCGQGCp3fSqB
 LCP0mtyl7nt1oFsdMGdFOLavRkx0k2YIU9UhCUBc=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTP id
 20200406230905epcas2p4f6b8f4be0c9c249bdcbb488d84dc730d~DXbmadF8a2190921909epcas2p4X;
 Mon,  6 Apr 2020 23:09:05 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.185]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 48x5nq2DQdzMqYlt; Mon,  6 Apr
 2020 23:09:03 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 EB.81.04647.E86BB8E5; Tue,  7 Apr 2020 08:09:02 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b~DXbjPx5_41539715397epcas2p1g;
 Mon,  6 Apr 2020 23:09:02 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200406230902epsmtrp254d5cc20d78db33dde89a623c4673742~DXbjO17-A0348103481epsmtrp2V;
 Mon,  6 Apr 2020 23:09:02 +0000 (GMT)
X-AuditID: b6c32a48-8a5ff70000001227-e0-5e8bb68edee1
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 12.1E.04024.D86BB8E5; Tue,  7 Apr 2020 08:09:01 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200406230901epsmtip29caf846e7bca97dd8a2e9ea4bb780316~DXbi_ikJe2506725067epsmtip2J;
 Mon,  6 Apr 2020 23:09:01 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: gregkh@linuxfoundation.org, krzk@kernel.org
Subject: [PATCH v6 2/2] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Date: Tue,  7 Apr 2020 08:08:49 +0900
Message-Id: <20200406230855.13772-1-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
In-Reply-To: <20200401082721.19431-1-hyunki00.koo@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA01SeUgUcRTmt7M7M2ttDJvWY4mQCSMNc3dr17HUoqyGMrISOgjXwZ1caS92
 djuk0ApNK7PtzqMCj8pC3c2kBE1sOzEVoqjoMEuxyw7LLjp2HKP++37vfd/v+3jvkZh6O64h
 s+xu3mXnrDQeIm+8EmmM3tu4O01b3kAzJwIdCmZHRR3O1FTdx5iD9e9lTPHz1xjT2VlPMP7n
 9xTMnaYynDna2SJj2iuKCCavOUDMGcX6awpx9nL5OYI9X5nD7m2oQWxdw105O+ifmIKvscZb
 eM7Mu8J5e4bDnGXPTKAXrzDNMxmMWl20Lo6JpcPtnI1PoJOSU6IXZFmD8ejwDZzVEyylcIJA
 xyTGuxweNx9ucQjuBJp3mq1Onc45TeBsgseeOS3DYZup02r1hiAz3WrJL/YhZ3v0pn3FB4lc
 VB2xCylJoGZA6eNO+S4UQqqpiwiOftymEBtq6iOC+vsqqTGEwDdYi/4qTuX2YVKjGcHN7zdH
 Hl8RtB++joksnJoKb74cC2KSDKVi4MUFVuRglE8GfVfLCJEzlloOL4d+4SKWUxGwv+rsMFZR
 CRAovYVJbpOga6ByOJKSSgTfsWsK8SOgWnE4nndaIZGS4PWv6pF4Y+HV9QZCwhoYHGjGJZwD
 LfleQhLvQfDtfe+IeDqU9O1EYlKMioS6phgRisaBh3KRgVFjoODKT0Iqq6AgXy0JJ0PtUL9M
 whPgXG/TiCsLl77UyqSZeBF0533H96GJJf8MTiJUg8bxTsGWyQt654z/N+ZHw/cXxV5ErR3J
 bYgiET1atUq5O02t4DYIm21tCEiMDlVpigrT1CoztzmbdzlMLo+VF9qQIThJL6YJy3AEr9nu
 NukMeqNRG2dgDEY9Q49X+Uc9WKumMjk3v57nnbzrr05GKjW5qCU1p6Wiu7Rn3ZLSWEv2U+W2
 2x3VG7EPhQNbA10/fEWRD8Yn2uZrvNuX3Qg5U2AKWzrF/uiAvk2zcPB3bJznxyH1C29E6oHF
 rbHxMOvdp8Cl1RknUm0wV3eK6d9iGv1s9knFgp5HQ2F9R84EkhYNrDQ36qeEdj1pQtm/v2rS
 n6a//UzLBQuni8JcAvcH1uMaq5UDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrLLMWRmVeSWpSXmKPExsWy7bCSvG7vtu44g6cdlhbzj5xjtWhevJ7N
 YtXSG8wWUzZ8YLLof/ya2eL8+Q3sFpseX2O1uLxrDpvFjPP7mCzOLO5lt2jde4Tdgdtj06pO
 No/9c9ewe2xeUu/Rt2UVo8f6LVdZPD5vkgtgi+KySUnNySxLLdK3S+DKaOvfyFhwRrdiQv8U
 9gbGZapdjJwcEgImEssbnjF3MXJxCAnsZpQ4/+8iC0RCRmLCiyXMELawxP2WI6wQRd8YJd40
 9oEVsQloS7z5PhOsSETAUOLLnX4WkCJmgZ1MEscevwMrEhYIkNi3Yx8riM0ioCoxaelqNhCb
 V8BW4sjsU1AblCUuvFsCVsMpYCexceYxMFsIqOblunbmCYx8CxgZVjFKphYU56bnFhsWGOal
 lusVJ+YWl+al6yXn525iBAeqluYOxstL4g8xCnAwKvHwMrB3xwmxJpYVV+YeYpTgYFYS4ZXq
 7YwT4k1JrKxKLcqPLyrNSS0+xCjNwaIkzvs071ikkEB6YklqdmpqQWoRTJaJg1OqgVHdMUiz
 c9naIDctjsM3K1iPdd1tXbc4zV6h0uDIIkP7q9Ff9e4tCzzcz7UteprJhZmpdzY8KBHL4D6y
 MDT/2sN1crqzZoRuFdTeoVHXziB58fu8mpSwaUKxwrlak2JrDnP+WnxMbkHegqzfW/N3u8/P
 e3nssODHws5UQY4qi0R9/57vOwMvzVJiKc5INNRiLipOBAB49rdoUAIAAA==
X-CMS-MailID: 20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200406230902epcas2p19a8df6805dac59968d664efb9bc9419b@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_160910_314039_C1C19F8B 
X-CRM114-Status: GOOD (  18.55  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 Hyunki Koo <hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support 32-bit access for the TX/RX hold registers UTXH and URXH.

This is required for some newer SoCs.

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
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
---
 drivers/tty/serial/samsung_tty.c | 76 +++++++++++++++++++++++++++++++++-------
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
2.15.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
