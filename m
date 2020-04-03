Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D47A19D4F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 12:21:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sJ2r4yIQ7fsAPp8AAYrFmQvvayKoFHs8DfIeLdSD7cM=; b=GIPWibuY4cwrhtsE6oaZ20cVsH
	0rgR3ulqz0BZQhfP9hKa4MOM91bE9wa6YdUdUvzyprbOhitHZT2OgY/NhHYD4CkjuobtSN0szQmZt
	vG1v+Pk1DeL+5WUBk/Gwpl1D4Z88MOAoa03ekp7TJ79Fs1SHbNEbh7RnD0vOBubTfgNJyzitwHTSR
	tmaX+yN/AoeLGLLjEbYN+G5pVipELO1dR31WseS1EfXrIWpXqiiGav8NLTCqeecBZ9O0nbGeKdUIX
	arRc5Eyfi+vEJ/JlYAG3S5UQ4BEMn+xlYeh0h6L/cFX8TUtjycV1dYhb4WidlZPLMivSdPfXk3aeH
	/n7TMFdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKJRg-0005VE-GW; Fri, 03 Apr 2020 10:21:04 +0000
Received: from mailout1.samsung.com ([203.254.224.24])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKJRX-0005Us-Vf
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 10:20:57 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout1.samsung.com (KnoxPortal) with ESMTP id
 20200403102053epoutp016641766f707f4075332c6e62c0da3f3d~CSBAw8XzS2654826548epoutp011
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 Apr 2020 10:20:53 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout1.samsung.com
 20200403102053epoutp016641766f707f4075332c6e62c0da3f3d~CSBAw8XzS2654826548epoutp011
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585909253;
 bh=gWnByIF2TF7BpHpZ8lBqenOh9TPRH1yh+ZUfFe4lVHE=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=YpfcSXCY4wUj9Z6R6RE4h5keD3/wPNZ4OfJAC7AJKBBkzjFSl7hjFjb4ypZtiDjFF
 MEt2/qhdlsa4p6tk3CP05sKQBE/rzGTNBt61ur6eDkr9n4jELmA5eYOoROo/aoFjfo
 WsoB/zFZ0wrD0a81X0FFI/AyMEmyMlR5Wn7g25YQ=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20200403102052epcas2p2d034bd7c83c272adb9857726af03bca0~CSBAVMU920630806308epcas2p2X;
 Fri,  3 Apr 2020 10:20:52 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.188]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 48twtp4XTjzMqYlr; Fri,  3 Apr
 2020 10:20:50 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 7F.56.04647.20E078E5; Fri,  3 Apr 2020 19:20:50 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTPA id
 20200403102049epcas2p1d1fe95160b7f37609a8b1710c196cdd8~CSA9zxZcW1184411844epcas2p1T;
 Fri,  3 Apr 2020 10:20:49 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200403102049epsmtrp1beb6d41bcd7ee8d7c122a030e641a55c~CSA9zDWhy1547015470epsmtrp1I;
 Fri,  3 Apr 2020 10:20:49 +0000 (GMT)
X-AuditID: b6c32a48-8a5ff70000001227-d1-5e870e02578b
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 F7.BB.04024.10E078E5; Fri,  3 Apr 2020 19:20:49 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200403102049epsmtip1a4910c78177bf84375a630447a9237cd~CSA9hZILc3182831828epsmtip14;
 Fri,  3 Apr 2020 10:20:49 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: gregkh@linuxfoundation.org, krzk@kernel.org
Subject: [PATCH v3] tty: samsung_tty: 32-bit access for TX/RX hold registers
Date: Fri,  3 Apr 2020 19:20:41 +0900
Message-Id: <20200403102041.22015-1-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
In-Reply-To: <20200401082721.19431-1-hyunki00.koo@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRj229nlaE1O0+xDQsYJo6XTTZ0dRSVL41QWUhASpp304KRdDjub
 qQWurGlimd3QlZiVJEOarVliVOq0e5lWUuGfqOxKaDXXzWjHs6h/z/u8z/M9L+/3oojMJ4pE
 Sw1m2mSgdLg4RHjJo9AoBaE1Baq9VyOI6jNOMeFof4oQR7smBUTDyw8IMTzcJSFcL8dExKPe
 k2KiafiagLh35oBkeTDpcuwXk9dbOiXkxbNV5EG3A5BO9xMh+cUVlSverEvT0lQxbZLThiJj
 camhJB1fu7FwZaEmWaVWqlOIZbjcQOnpdDwrJ1e5qlTnHwqXl1E6i5/KpVgWj89IMxktZlqu
 NbLmdJxminWMWs3EsZSetRhK4oqM+lS1SpWg8Su36rQPbDcBY4spn25fYAWti+pAMAqxJHjb
 eklYB0JQGdYDYL+7N1B8BnCgzSvhi2kAu/uc4K+luu2WgG9cBXCi7b6IL74B2NN0HOFUYiwG
 fvQ1+zGKhmPx8FU3yWkQbArA0budAk4ThuVAp29CwmEhFg0fH7s/65Vi6fDkuFXMpy2CDz+d
 FXE4GMuAF5pvzIZBzC2GM1e8El6UBa2nugQ8DoPvb7oDfCR812AL4Cp4zdYo4c31AH6ffC3i
 G4nQPlEDuEkRTAGdvfEc5IIHnws5BYKFwlrPjISnpbDWJuONi+H56beB1IWw83VvQELC0XNJ
 /EoaATzs2I0cAlH2f++fAsABImiG1ZfQbAKT9P+HucDs0S0le0Dfg5wBgKEAnysN6t9XIBNR
 ZWyFfgBAFMHDpZlNfkpaTFVU0iZjocmio9kBoPEvshGJnF9k9J+wwVyo1iQkJ6tSNIQmOYHA
 F0hdc57ly7ASykxvp2mGNv31CdDgSCuojI0OmnoRu+mI9u3FoYzywZ8pno4WdH1NuaVZnl35
 +8e9r8rBuDEzA2B00khUtiDVm3ejdiRHkb/j8nzPiXG7XRHka/+Vt43KzxQtyVss7J7ni1Ou
 CbU0Z+4cYkOojhUdiaub1il31e8x57/ZUGtXtEZ4vbjuNOu5s4VOZFS4kNVS6qWIiaX+ANMj
 40aKAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrELMWRmVeSWpSXmKPExsWy7bCSnC4jX3ucwamrRhbNi9ezWaxaeoPZ
 YsqGD0wW/Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PFmcW97A6cHptWdbJ57J+7ht1j85J6
 j74tqxg91m+5yuLxeZNcAFsUl01Kak5mWWqRvl0CV8a5tuOMBW3aFd+WijcwzlfuYuTkkBAw
 kWheeIKpi5GLQ0hgN6PE5OZ9jBAJGYkJL5YwQ9jCEvdbjrBCFH1jlHizZT0TSIJNQFvizfeZ
 YEUiAoYSX+70s4AUMQt8Z5RYfnwGC0hCWMBHYv33Z+wgNouAqsSVqWfBGngFbCXm3Glgg9ig
 LHHh3RJWEJtTwE5i48xjYLYQUM3Lde3MExj5FjAyrGKUTC0ozk3PLTYsMMxLLdcrTswtLs1L
 10vOz93ECA5JLc0djJeXxB9iFOBgVOLhZTjYGifEmlhWXJl7iFGCg1lJhNdxBlCINyWxsiq1
 KD++qDQntfgQozQHi5I479O8Y5FCAumJJanZqakFqUUwWSYOTqkGRpX+mifXi/usDmyyidt8
 dMK+69v5Zsy65hj+4eyq+Wdye99drg4tvWaYsfvWecUffEqa5hs8TK8x/XrFN3FTuOkOkfmc
 RqbK7YJzRPe7zn5sP72xO+n5jyZLv6kCLsyhO2by+NxaG7vtw4FQoc3Pkx83ZeqcXGK8x+up
 /851fnuPJ/0R3Hsw+YoSS3FGoqEWc1FxIgCR8LJhRQIAAA==
X-CMS-MailID: 20200403102049epcas2p1d1fe95160b7f37609a8b1710c196cdd8
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200403102049epcas2p1d1fe95160b7f37609a8b1710c196cdd8
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403102049epcas2p1d1fe95160b7f37609a8b1710c196cdd8@epcas2p1.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_032056_368695_0FC03ED2 
X-CRM114-Status: GOOD (  20.11  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.24 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.24 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
 Kukjin Kim <kgene@kernel.org>, Hyunki Koo <hyunki00.koo@samsung.com>,
 linux-serial@vger.kernel.org, Jiri Slaby <jslaby@suse.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support 32-bit access for the TX/RX hold registers UTXH and URXH.

This is required for some newer SoCs.

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
---
v3: change rd_regl to rd_reg in line 954 for backward compatibility.
---

 drivers/tty/serial/samsung_tty.c | 76 +++++++++++++++++++++++++++++++++-------
 1 file changed, 64 insertions(+), 12 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 73f951d65b93..a674a80163ed 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -154,12 +154,47 @@ struct s3c24xx_uart_port {
 #define portaddrl(port, reg) \
 	((unsigned long *)(unsigned long)((port)->membase + (reg)))
 
-#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
+static unsigned int rd_reg(struct uart_port *port, int reg)
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
+static void wr_reg(struct uart_port *port, int reg, int val)
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
 
+static void write_buf(struct uart_port *port, int reg, int val)
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
+	write_buf(port, S3C2410_UTXH, c);
 }
 
 static void samsung_early_write(struct console *con, const char *s,
-- 
2.15.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
