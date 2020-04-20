Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 841521AFF8B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Apr 2020 03:33:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=LwDLN9a4GyqA8KGaZScCg/DeFYu6aSWrpJ82IeTnNsA=; b=h0
	DU02VkmA3gt+M0FmTXXipOBbL7WeabNmu6bxcXlv5DDla67NgNU9kQPLZC9SLKJEGOwn/rWY3K+Ak
	/DllsS0wGtjKakc8IpINcBZAc6YH9CEqgQZ2yBbD74WLrrtL2I18fJnUgI4bnOp79bJELeiNEEtCV
	TgD/m9PcehdQ/3t0kyLWaaeJZA5aKGcUmoCLf52HU3h334kzgZkmT3nxF7gIExvwhXjVv9YAgX8gP
	jN7RcAyuxTMwd5Ophopnu8y+TQQVCwsbmWYPvQRIsx3wGsjoist/dwa1veoIpZAJ3XsIh8mLtNuT5
	YwpwPgx5B5SGOprSeJv90/ckZOSNfOwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQLJf-0006rZ-87; Mon, 20 Apr 2020 01:33:43 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQLJV-0006qm-0W
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Apr 2020 01:33:36 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200420013326epoutp045ce68b1ff5d722a9e8ed2ca5edceab64~HYyWLd1Yv2841028410epoutp04J
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 Apr 2020 01:33:26 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200420013326epoutp045ce68b1ff5d722a9e8ed2ca5edceab64~HYyWLd1Yv2841028410epoutp04J
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1587346406;
 bh=QLGR/21hPBV9EKZby41Rww+EnJI3BX4xeSI7yPOB9P0=;
 h=From:To:Cc:Subject:Date:References:From;
 b=WuCzM+T5Pjy6P7weEIuLBIvJNcexLQp4ymNEycStiJlJqIEvPBTPImlXerj6ltsMh
 yvBZuTTCV2xtmBN2Q0+hwzm7QdIbdirG1fDrnrR865bz9JiatQyAc8P0Sv3/ZLy3+u
 /L25q1bagdmmxrzmd11WCOtnw6QWctx1tk+zSwOQ=
Received: from epsnrtp4.localdomain (unknown [182.195.42.165]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTP id
 20200420013326epcas2p278d404e3a8dad07cf31a15f1f0df97b8~HYyV02bTk1023610236epcas2p2S;
 Mon, 20 Apr 2020 01:33:26 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.187]) by
 epsnrtp4.localdomain (Postfix) with ESMTP id 4958NN3wdczMqYkh; Mon, 20 Apr
 2020 01:33:24 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 43.96.04598.2EBFC9E5; Mon, 20 Apr 2020 10:33:22 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651~HYySZc-we1982219822epcas2p2x;
 Mon, 20 Apr 2020 01:33:22 +0000 (GMT)
Received: from epsmgms1p2new.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200420013322epsmtrp125fe850a0e4607b08943b25610a5bbe0~HYySYe3mN3125131251epsmtrp1j;
 Mon, 20 Apr 2020 01:33:22 +0000 (GMT)
X-AuditID: b6c32a45-ea1ff700000011f6-a2-5e9cfbe20478
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 E6.D7.04158.2EBFC9E5; Mon, 20 Apr 2020 10:33:22 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200420013322epsmtip1ab47e7be5f94a2629f122af3ef079938~HYySLY4zV2241422414epsmtip1t;
 Mon, 20 Apr 2020 01:33:22 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v8 1/3] serial: samsung: Replace rd_regb/wr_regb with
 rd_reg/wr_reg
Date: Mon, 20 Apr 2020 10:32:56 +0900
Message-Id: <20200420013300.17249-1-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrDKsWRmVeSWpSXmKPExsWy7bCmue7j33PiDO4KWzQvXs9msWrpDWaL
 KRs+MFn0P37NbHH+/AZ2i02Pr7FaXN41h81ixvl9TBZnFveyO3B6bFrVyeaxf+4ado/NS+o9
 +rasYvRYv+Uqi8fnTXIBbFE5NhmpiSmpRQqpecn5KZl56bZK3sHxzvGmZgaGuoaWFuZKCnmJ
 uam2Si4+AbpumTlANykplCXmlAKFAhKLi5X07WyK8ktLUhUy8otLbJVSC1JyCgwNC/SKE3OL
 S/PS9ZLzc60MDQyMTIEqE3IylixYzVhwQ7Li+6wN7A2Mx0W7GDk5JARMJOa8+craxcjFISSw
 g1Fi2+ljbBDOJ0aJrmmXGCGcb4wSGza0scO0XL//mwUisZdR4syRfcwQzg9Gif6n35hAqtgE
 tCXefJ8JlhARWMIkMf38ExaQBLOAjMSP7ffAioQFQiV+nNkBNpZFQFWidelKZhCbV8BWYuP1
 O4wQ65QlLrxbAnahhMAMNokfD39A3eEi8WbGXqgiYYlXx7dAxaUkXvbD3Fovsa9tIjtEcw+j
 xM8PT1khEsYSs561AzVzAF2kKbF+lz6ICbLsyC2oO/kkOg7/ZYcI80p0tAlBNKpJrPv2ggnC
 lpFY83QX1CYPib/PL4JdIyQQK3Gj4QXzBEbZWQjzFzAyrmIUSy0ozk1PLTYqMESOpk2M4JSm
 5bqDccY5n0OMAhyMSjy8EXPnxAmxJpYVV+YeYpTgYFYS4T3oNjNOiDclsbIqtSg/vqg0J7X4
 EKMpMPAmMkuJJucD021eSbyhqZGZmYGlqYWpmZGFkjjvZu6bMUIC6YklqdmpqQWpRTB9TByc
 Ug2M0lMDxLq8+AMmerSVznBc6XYz8Fu2dsC7Xv+myP7k5+aHFH6+/LiXgduYvUF559YrqZf3
 Pys8WumqIbhaYZfTz9MnLBS/cGVm9nG/2l26ky26bfLJIlHNSrHJt/lf7NmSti8310Rdsv7F
 7zuHOX/pmwoIN885PoPP7POJHR7OMzaLxXpaKOcpsRRnJBpqMRcVJwIAiRZV8H8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprNLMWRmVeSWpSXmKPExsWy7bCSnO6j33PiDO79E7NoXryezWLV0hvM
 FlM2fGCy6H/8mtni/PkN7BabHl9jtbi8aw6bxYzz+5gszizuZXfg9Ni0qpPNY//cNewem5fU
 e/RtWcXosX7LVRaPz5vkAtiiuGxSUnMyy1KL9O0SuDKWLFjNWHBDsuL7rA3sDYzHRbsYOTkk
 BEwkrt//zdLFyMUhJLCbUeLq592sEAkZiQkvljBD2MIS91uOsEIUfWOUWDv9FTtIgk1AW+LN
 95nMIAkRgVVMEtcPLGECSTADdf/Yfg/MFhYIltjz6SbYJBYBVYnWpSvBbF4BW4mN1+8wQmxQ
 lrjwbgnrBEaeBYwMqxglUwuKc9Nziw0LjPJSy/WKE3OLS/PS9ZLzczcxgoNMS2sH44kT8YcY
 BTgYlXh4I+bOiRNiTSwrrsw9xCjBwawkwnvQbWacEG9KYmVValF+fFFpTmrxIUZpDhYlcV75
 /GORQgLpiSWp2ampBalFMFkmDk6pBkb/KCPHnwuKu6MvLdeS/ffD2XOPw8FVDEHbf7nGReVn
 r9YWlXwQ7LnNKep8T3Wd9uashJRDXgWJsfddNU/LXlaW+rvG9rNm390Drswa0XH6KZsq4/n2
 +yidvDdL9WGuY+LLh4znnCbPF/2gpPB7m57GnGPG+48cdNZ8JKKwtzRo+dqSN13nLZRYijMS
 DbWYi4oTAXS/GVIuAgAA
X-CMS-MailID: 20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651
References: <CGME20200420013322epcas2p263e72997dd4ebdaf00b095a83a6b6651@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200419_183333_480496_F489B551 
X-CRM114-Status: GOOD (  15.64  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: hyunki00.koo@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch change the name of macro for general usage.

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
---
 drivers/tty/serial/samsung_tty.c | 18 +++++++++---------
 1 file changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 73f951d65b93..326b0164609c 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -154,10 +154,10 @@ struct s3c24xx_uart_port {
 #define portaddrl(port, reg) \
 	((unsigned long *)(unsigned long)((port)->membase + (reg)))
 
-#define rd_regb(port, reg) (readb_relaxed(portaddr(port, reg)))
+#define rd_reg(port, reg) (readb_relaxed(portaddr(port, reg)))
 #define rd_regl(port, reg) (readl_relaxed(portaddr(port, reg)))
 
-#define wr_regb(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
+#define wr_reg(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
 #define wr_regl(port, reg, val) writel_relaxed(val, portaddr(port, reg))
 
 /* Byte-order aware bit setting/clearing functions. */
@@ -714,7 +714,7 @@ static void s3c24xx_serial_rx_drain_fifo(struct s3c24xx_uart_port *ourport)
 		fifocnt--;
 
 		uerstat = rd_regl(port, S3C2410_UERSTAT);
-		ch = rd_regb(port, S3C2410_URXH);
+		ch = rd_reg(port, S3C2410_URXH);
 
 		if (port->flags & UPF_CONS_FLOW) {
 			int txe = s3c24xx_serial_txempty_nofifo(port);
@@ -826,7 +826,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
 	}
 
 	if (port->x_char) {
-		wr_regb(port, S3C2410_UTXH, port->x_char);
+		wr_reg(port, S3C2410_UTXH, port->x_char);
 		port->icount.tx++;
 		port->x_char = 0;
 		goto out;
@@ -852,7 +852,7 @@ static irqreturn_t s3c24xx_serial_tx_chars(int irq, void *id)
 		if (rd_regl(port, S3C2410_UFSTAT) & ourport->info->tx_fifofull)
 			break;
 
-		wr_regb(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
+		wr_reg(port, S3C2410_UTXH, xmit->buf[xmit->tail]);
 		xmit->tail = (xmit->tail + 1) & (UART_XMIT_SIZE - 1);
 		port->icount.tx++;
 		count--;
@@ -916,7 +916,7 @@ static unsigned int s3c24xx_serial_tx_empty(struct uart_port *port)
 /* no modem control lines */
 static unsigned int s3c24xx_serial_get_mctrl(struct uart_port *port)
 {
-	unsigned int umstat = rd_regb(port, S3C2410_UMSTAT);
+	unsigned int umstat = rd_reg(port, S3C2410_UMSTAT);
 
 	if (umstat & S3C2410_UMSTAT_CTS)
 		return TIOCM_CAR | TIOCM_DSR | TIOCM_CTS;
@@ -2185,7 +2185,7 @@ static int s3c24xx_serial_get_poll_char(struct uart_port *port)
 	if (s3c24xx_serial_rx_fifocnt(ourport, ufstat) == 0)
 		return NO_POLL_CHAR;
 
-	return rd_regb(port, S3C2410_URXH);
+	return rd_reg(port, S3C2410_URXH);
 }
 
 static void s3c24xx_serial_put_poll_char(struct uart_port *port,
@@ -2200,7 +2200,7 @@ static void s3c24xx_serial_put_poll_char(struct uart_port *port,
 
 	while (!s3c24xx_serial_console_txrdy(port, ufcon))
 		cpu_relax();
-	wr_regb(port, S3C2410_UTXH, c);
+	wr_reg(port, S3C2410_UTXH, c);
 }
 
 #endif /* CONFIG_CONSOLE_POLL */
@@ -2212,7 +2212,7 @@ s3c24xx_serial_console_putchar(struct uart_port *port, int ch)
 
 	while (!s3c24xx_serial_console_txrdy(port, ufcon))
 		cpu_relax();
-	wr_regb(port, S3C2410_UTXH, ch);
+	wr_reg(port, S3C2410_UTXH, ch);
 }
 
 static void
-- 
2.15.0.rc1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
