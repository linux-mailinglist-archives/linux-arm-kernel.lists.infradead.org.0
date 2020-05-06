Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 100551C6999
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:00:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=LwDLN9a4GyqA8KGaZScCg/DeFYu6aSWrpJ82IeTnNsA=; b=p4
	twwIY2b25vwl2J3KJ/Sl2UOqRvovialHHhq5gihX6euRYsFeY7Uly5z630RPHyYH6wjxASUJdPWem
	m1SfB5mbHrXBKYxPBRYeVI/FACtK5hgIpIbB5WJrW3zO16A7WvaD0nX74IaWAr7TCubB8E8N+8Dlg
	Y4hHY37E+inFuSsu9If4RTwL4jLU3uH7bXmNNjlXUvLyCSeg0mBmutH+DTGQlI0NyGg15ImcY/cOJ
	8Gl/0uDs0C0DeETNrCggiNN7oBGH3WHaiffWCRPwkd1ZNMwJ31Q1okd8gXHpmVg5Q60lsA/qAmlfN
	9P1mRcRxGdJONLtBAVR8GkrRKhNnXl6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWE2n-00047b-82; Wed, 06 May 2020 07:00:37 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWE2f-00046v-Bm
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:00:30 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200506070021epoutp024522cc665afdd6d446fa0bf2630e5b7d~MXkWYp22S2191721917epoutp02_
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 07:00:21 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200506070021epoutp024522cc665afdd6d446fa0bf2630e5b7d~MXkWYp22S2191721917epoutp02_
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588748421;
 bh=QLGR/21hPBV9EKZby41Rww+EnJI3BX4xeSI7yPOB9P0=;
 h=From:To:Cc:Subject:Date:References:From;
 b=u2GpqU9iyeYfTUrC3ms8V1v2yQRH7GH0rIvgjBEQooBVzstv+QGkCoixUWuOQXffj
 WOYS6tIp0JGBJ/lraNWusITZleP1XBP3fW33UJSDlQbByPEWJS2X0E7Va03JJ433HH
 ioWXODrSpv4W1EKPr4TH00SeCO20hRep1Q4O18EM=
Received: from epsnrtp2.localdomain (unknown [182.195.42.163]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20200506070020epcas2p133c622a8ff794cf98d6e3d269d022151~MXkV1syiA0588605886epcas2p17;
 Wed,  6 May 2020 07:00:20 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.186]) by
 epsnrtp2.localdomain (Postfix) with ESMTP id 49H6tC1cnVzMqYkZ; Wed,  6 May
 2020 07:00:19 +0000 (GMT)
Received: from epcas2p1.samsung.com ( [182.195.41.53]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 B0.BC.04704.18062BE5; Wed,  6 May 2020 16:00:17 +0900 (KST)
Received: from epsmtrp2.samsung.com (unknown [182.195.40.14]) by
 epcas2p2.samsung.com (KnoxPortal) with ESMTPA id
 20200506070015epcas2p2f2ce5d07918dbea764e2830d9024fc5f~MXkQ4xXju1433414334epcas2p24;
 Wed,  6 May 2020 07:00:15 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp2.samsung.com (KnoxPortal) with ESMTP id
 20200506070015epsmtrp2b51a567e72403619e656abfa4c57bb46~MXkQ3gqv91579015790epsmtrp2S;
 Wed,  6 May 2020 07:00:15 +0000 (GMT)
X-AuditID: b6c32a46-829ff70000001260-86-5eb26081197f
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 21.E8.18461.F7062BE5; Wed,  6 May 2020 16:00:15 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200506070015epsmtip1450ad8070358777f8578415f18b1d91b~MXkQtcnZ-2422924229epsmtip14;
 Wed,  6 May 2020 07:00:15 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v9 1/3] serial: samsung: Replace rd_regb/wr_regb with
 rd_reg/wr_reg
Date: Wed,  6 May 2020 16:00:05 +0900
Message-Id: <20200506070009.16809-1-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrDKsWRmVeSWpSXmKPExsWy7bCmqW5jwqY4g6PdAhbNi9ezWaxaeoPZ
 YsqGD0wW/Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PFmcW97A6cHptWdbJ57J+7ht1j85J6
 j74tqxg91m+5yuLxeZNcAFtUjk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJe
 Ym6qrZKLT4CuW2YO0FFKCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnAJDwwK94sTc
 4tK8dL3k/FwrQwMDI1OgyoScjCULVjMW3JCs+D5rA3sD43HRLkZODgkBE4l/F9cydTFycQgJ
 7GCUeH9jJwuE84lR4ufdu2wQzjdGiSmnvjPDtDR872GGSOxllOif/IERwvnBKPFjz0FGkCo2
 AW2JN99nglWJCCxhkph+/gkLSIJZQFPix4EbrCC2sECoxO0th5hAbBYBVYktrzaB2bwCthKT
 //1kg1inLHHh3RJWkEESAsfYJfZs+swOkXCR2Nk/CeomYYlXx7dAxaUkPr/bC9VcL7GvbSI7
 RHMP0EcfnrJCJIwlZj1rBzqVA+yi9bv0QUyQZUduQd3JJ9Fx+C87RJhXoqNNCKJRTWLdtxdM
 ELaMxJqnu6BKPCQ+TfcECQsJxEo07tjFNoFRdhbC+AWMjKsYxVILinPTU4uNCoyQY2kTIzil
 abntYFxyzucQowAHoxIPr4H7xjgh1sSy4srcQ4wSHMxKIrw8P4BCvCmJlVWpRfnxRaU5qcWH
 GE2BYTeRWUo0OR+YbvNK4g1NjczMDCxNLUzNjCyUxHk3cd+MERJITyxJzU5NLUgtgulj4uCU
 amCMZa+M8k7xUn4gc/P252dMN60vfze5c+5etFh6j98fvZyTRdIX2gPzetSeLfujzps2+/L9
 zAnpK2ILEve1BR25/fFkYYlVwrNNRdFBh1pu1W3zVoi7wJWa0nKIr1SihUPj6u/eg4/6OE9e
 mW+4KvzQ8qfL1pg5hR4s2Pjq8qq6PfFTYhTf7/BQYinOSDTUYi4qTgQAJj3qoH8DAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFupjluLIzCtJLcpLzFFi42LZdlhJTrc+YVOcwf7bShbNi9ezWaxaeoPZ
 YsqGD0wW/Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PFmcW97A6cHptWdbJ57J+7ht1j85J6
 j74tqxg91m+5yuLxeZNcAFsUl01Kak5mWWqRvl0CV8aSBasZC25IVnyftYG9gfG4aBcjJ4eE
 gIlEw/ce5i5GLg4hgd2MEje/LmOCSMhITHixhBnCFpa433KEFaLoG6PEx4kfGEESbALaEm++
 zwTrFhFYxSRx/cASsG5mAU2JHwdusILYwgLBEtMef2MHsVkEVCW2vNoEVsMrYCsx+d9PNogN
 yhIX3i1hncDIs4CRYRWjZGpBcW56brFhgWFearlecWJucWleul5yfu4mRnCQaWnuYNy+6oPe
 IUYmDsZDjBIczEoivDw/NsYJ8aYkVlalFuXHF5XmpBYfYpTmYFES571RuDBOSCA9sSQ1OzW1
 ILUIJsvEwSnVwGTkwOTHserz7Vm1spqev6s3bJQsv7NA+RJLpN+pT68jmJi3q5zo1rvEwRcz
 uf2+RlRK3Yms/qT5zosPPPyzLGrOh/sm3F4ydWHnWL/s9TvOPo/1mVLH6rX9+U9+bxaSLvlu
 WVrIMfXn+1Wmb668NJ/36LvI2U1v55QxZIb7fNw/yYAzfGNIrtOP/e/U/pn8+3E+wE5gSYBZ
 Y1bz67aAV2dYbzWfOrr5VYrrv+U7EvJP//NPKy9ylJ7lEF/w9dLiGj7OTNvNa790HT0nWp84
 /aD6s90FhtdTpGzFvKK8jy7ZuFNR5kAIt9ZXLt/GhF9/Xzl279nFpRZqsXxzI/vGRezv59yr
 YT0QmHIg8tlLRUklluKMREMt5qLiRABgR5VqoQIAAA==
X-CMS-MailID: 20200506070015epcas2p2f2ce5d07918dbea764e2830d9024fc5f
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200506070015epcas2p2f2ce5d07918dbea764e2830d9024fc5f
References: <CGME20200506070015epcas2p2f2ce5d07918dbea764e2830d9024fc5f@epcas2p2.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_000029_605683_88CDD353 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hyunki Koo <hyunki00.koo@samsung.com>
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
