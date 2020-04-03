Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 49DAA19D59D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 Apr 2020 13:15:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QYiPjQxbDr9bwtXgJZmOOk+kgyg81RRdRPNS2bp8T+4=; b=fHHDUlJJ+7/u8XcPmc56HluA9s
	COyxwbwIu110AEoc52s+d3Q53zjTNRJDUznwcNC/7UuSe36QFQza6GPab7J3tlmfZFLI2bOWn/063
	MikOeV1H8/kOUWj0qgpB3UdC/vzaijMBLM7P2YhCKo0GLQTpxJe8Irj7Ppr1lIii6qc+ogyVd640v
	tU9jhkJU6M7cuxmybD9nxH1B7Pwq5fkodmRAkLSoGs2LedxANnwdBwd8WJr9wFg+JtxgUvp81erbT
	ncQ/Gx306jXhb9JLIXI9sW/5y01XnGBt5ljAjobij0hB+5CM1mSmZy3a/iZOfWBLlZ0zFlBcyyg4P
	8OmgSOlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jKKIQ-0007YU-JT; Fri, 03 Apr 2020 11:15:34 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jKKII-0007Xv-Ea
 for linux-arm-kernel@lists.infradead.org; Fri, 03 Apr 2020 11:15:28 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200403111524epoutp020f01d32af90e45831cd9c5bd21708282~CSwnAqLsG1991019910epoutp027
 for <linux-arm-kernel@lists.infradead.org>;
 Fri,  3 Apr 2020 11:15:24 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200403111524epoutp020f01d32af90e45831cd9c5bd21708282~CSwnAqLsG1991019910epoutp027
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1585912524;
 bh=+HwuOrTDrWo3USbMq31Z3WkWNK7n5U0xuBsxRDCaxWI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HfuTtAOH+K9ScveQtMdcSEqH6iJIAkx6MHUfAAIfJssvUr2YPvNz0wopA9TwAiFir
 bVG9YMGZZBUyIdak4lxJ3hSl+6zEebnK50AtkjxNtmfntQTDFuCuEv12a58jRjzdw0
 3QgHBE+jnfsj0yk8b31YVDYyT6MXJblav3oWHFWE=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200403111523epcas2p36ebcee5290a07d11c260f089f1274d5d~CSwmad4fj2788927889epcas2p3E;
 Fri,  3 Apr 2020 11:15:23 +0000 (GMT)
Received: from epsmges2p4.samsung.com (unknown [182.195.40.185]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 48ty5j1t99zMqYkZ; Fri,  3 Apr
 2020 11:15:21 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p4.samsung.com (Symantec Messaging Gateway) with SMTP id
 22.75.04647.9CA178E5; Fri,  3 Apr 2020 20:15:21 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48~CSwjnDmPT1008610086epcas2p4u;
 Fri,  3 Apr 2020 11:15:20 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200403111520epsmtrp2d69dbd7543357b3c97773027ad0adbc0~CSwjmQY3D2960229602epsmtrp2J;
 Fri,  3 Apr 2020 11:15:20 +0000 (GMT)
X-AuditID: b6c32a48-8a5ff70000001227-45-5e871ac96a9a
Received: from epsmtip2.samsung.com ( [182.195.34.31]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 C5.6D.04158.8CA178E5; Fri,  3 Apr 2020 20:15:20 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip2.samsung.com (KnoxPortal) with ESMTPA id
 20200403111520epsmtip2fdd33442967d6181ffacb54018a77dc9~CSwjcZFRP1012410124epsmtip2s;
 Fri,  3 Apr 2020 11:15:20 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: gregkh@linuxfoundation.org, krzk@kernel.org
Subject: [PATCH v4] tty: samsung_tty: 32-bit access for TX/RX hold registers
Date: Fri,  3 Apr 2020 20:15:10 +0900
Message-Id: <20200403111511.10598-1-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
In-Reply-To: <20200401082721.19431-1-hyunki00.koo@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA01Sa0hTYRjuO2c7O7MWh5Plx5Cy0wWy1G22eYpmWWYH8odUEEloh+2wibux
 MyOjdSUtsbyQeKEbNYmW6FqaYmo1RbNC7V5CFq2LuTBLsqyEth2j/j3v+z3P+zy834uj5KRY
 judYHJzdwpooLEJ0vXOZJq5XXpilKPdJ6SMXGzDaXfscpU95xhC6xB9A6f5+j4T2+p+K6Uet
 pzG6qr8Doe9fPCFZJ2W87uMYc/NMnYS55jrAnGx0A6ah8YmIGffOz8AyTWuMHKvn7DGcRWfV
 51gMWmrz1uwN2WqNQhmnXEUnUTEW1sxpqdT0jLi0HFMwFBWzmzXlBVsZLM9TCclr7NY8Bxdj
 tPIOLcXZ9CabUmmL51kzn2cxxOus5tVKhUKlDjJ3mYy/P58Htscr9rwubsIOgt7FRUCKQ2Il
 HAlcRotABE4SLQD6RwuAUHwFsKHbjwnFBIBdrmbxX4nrZ6lIeGgHsP6GWyIUPwBsPuzBQiyM
 WA4/fa8ODsbxSCIBvm1iQhyU+ALgw3t1SIgzh0iHz0sCYSwilsCb7WNhBxmhhXWV51DBbREc
 GHWF+1IiGV6t7haHBkHCg8GnfYHpSKmw3N8pEvAcONLTKBGwHI6PtmMCPgA7CsokgrgYwMmx
 d9PiRFjzvhCEkqLEMtjQmhCCIeOuwfBIlJgNj3VOSYS2DB4rIAXhUlg/MYwIOBrWvWuddmVg
 5YUKRNhJGYAlHw8jpWB+zT+D8wC4wTzOxpsNHK+yrfz/y7wgfHaxTAu41ZfuAwQOqFkyRVRh
 Filmd/P5Zh+AOEpFylKqjmaRMj2bv5ezW7PteSaO9wF1cJNlqHyuzho8YosjW6lWaTSKVWpa
 rVHRVJTMO/PFTpIwsA4ul+NsnP2vDsGl8oNAVz6UfAXJX6h+4NzmihQRKvFLkLCl5o7xjSua
 GPJEvLiKxUY2tWV0PhsZGNS9mvLilHF446IUcLdrvdPANf0ie5JvX/iQeKlKUxRIWru9ueIs
 snaH3nujpm1G7UjKvrPQeXvTh+qjuZk/SWfK/uFD1+LStuXmVy9kqaRT3xZEUyLeyCpjUTvP
 /gFCpRv+jAMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrMLMWRmVeSWpSXmKPExsWy7bCSvO4JqfY4g+Z9ohbNi9ezWaxaeoPZ
 YsqGD0wW/Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PFmcW97A6cHptWdbJ57J+7ht1j85J6
 j74tqxg91m+5yuLxeZNcAFsUl01Kak5mWWqRvl0CV8af9wsYC67oVDzo2crWwHhSpYuRk0NC
 wERiya8JLF2MXBxCArsZJf5uW84MkZCRmPBiCZQtLHG/5QgrRNE3RomD1+8zgSTYBLQl3nyf
 CVYkImAo8eVOP9gkZoHvjBLLj89gAUkIC/hI3Oh/DdbAIqAqsX/vB1YQm1fAVmLN9PlQG5Ql
 LrxbAhbnFLCT2DjzGJgtBFTzcl078wRGvgWMDKsYJVMLinPTc4sNC4zyUsv1ihNzi0vz0vWS
 83M3MYKDUktrB+OJE/GHGAU4GJV4eA3E2+OEWBPLiitzDzFKcDArifA6zmiNE+JNSaysSi3K
 jy8qzUktPsQozcGiJM4rn38sUkggPbEkNTs1tSC1CCbLxMEp1cAYJP9NqYu36OIpqcXvfY+I
 5/ek8jPO1OlYUrhB8SffzNUm0QwHdmgsO3/2xn+Pg6kP9fN7w0qeC+XJak9bvGzL+0NaFqzR
 j1e6auVM/NK0dMo6j455K1c4OjnF1+xv/6f76S3PYf7pd+MeaXtEvQm5f0cnd1ZDwI3v7oWt
 +yN9N0kwPDWek3FTiaU4I9FQi7moOBEAibdrHUYCAAA=
X-CMS-MailID: 20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48
References: <20200401082721.19431-1-hyunki00.koo@samsung.com>
 <CGME20200403111520epcas2p42ef81138693ffaaa281499c7a24e0e48@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200403_041526_670908_4E25BB55 
X-CRM114-Status: GOOD (  17.97  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
v2: 
line 954 : change rd_regl to rd_reg in for backward compatibility.
line 2031: Add init value for ourport->port.iotype  to UPIO_MEM 
v3:
line 2031: remove redundant init value  for ourport->port.iotype 
v4:
correct variable types and change misleading function name
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
