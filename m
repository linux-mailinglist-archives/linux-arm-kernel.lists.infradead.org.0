Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0528A1C6AC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:03:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=P5+EJSHyHpsUV+h9vBmK7jI4WoYV7ugffpxvMrQCHaE=; b=X9
	7+vzyoyEMudzr+jWMGz+xKQxeQj5kxbX4WnimOtH3e+KJJaQkkRj8oN4tzIcMs1V5UgHGC7gNeFBM
	vm+6Fiui+c3Lh+Ub2KLsygJeXH/EwRvuQq15vDygLbFKLNlwBpcf1tZoN3gwD5Nu6L8KLkA8BXH1P
	CJJh7B9pZO4upzVWlCUrmGejvAECFRVZhGV8vk9atdg9R/jzE8/Szlwg+5sO3E/AWQJEYeqVyTXGI
	3Iks1GeC2U5dqWm8sucb6dA/s3jb4Fevtr8CLP4G1trZ0FqvbTmxxOAiXZ/FenxTyH7R3XFbVjJzK
	6vTtnR/1+9MOWH4q073hfYi5bkXWRR9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWF1D-0007Sa-P1; Wed, 06 May 2020 08:03:03 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWF15-0007Rg-Mu
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:02:57 +0000
Received: from epcas2p4.samsung.com (unknown [182.195.41.56])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200506080252epoutp04ced292fb51418b19a0d9073098f8b83e~MYa729GHY1743317433epoutp04D
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 08:02:52 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200506080252epoutp04ced292fb51418b19a0d9073098f8b83e~MYa729GHY1743317433epoutp04D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588752172;
 bh=61ODT2axQe06P744CgMbtbc7G+bDFc+joNgyQO0iE/s=;
 h=From:To:Cc:Subject:Date:References:From;
 b=coadFIRYeUNxm70IITseII25rSWdpOK4kXrf//DNTxmpoEN2zvLBOt4nSrKsY+Z4C
 FxsvGkmgX+tRbw2952e9i0V2K02iO2aBaAX6BhSMcj6NUt8OrjAC0uxjwODzPb7xPi
 2ggeV1WRgJeqFdtnoIpOGHEod7eoN+7PDPHYBBoQ=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20200506080252epcas2p117981e14e0c7a488168620682c3baf82~MYa7jhNhh3197431974epcas2p1a;
 Wed,  6 May 2020 08:02:52 +0000 (GMT)
Received: from epsmges2p2.samsung.com (unknown [182.195.40.182]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 49H8GL3YBCzMqYlv; Wed,  6 May
 2020 08:02:50 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 EB.BF.04704.92F62BE5; Wed,  6 May 2020 17:02:49 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20200506080249epcas2p47ffb915f9c469d208224cbdecb2d723d~MYa4kc-im0699206992epcas2p4T;
 Wed,  6 May 2020 08:02:49 +0000 (GMT)
Received: from epsmgms1p1new.samsung.com (unknown [182.195.42.41]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200506080249epsmtrp159e0a1e16e48a5225d1a76281a66b97f~MYa4jveoI2932429324epsmtrp1g;
 Wed,  6 May 2020 08:02:49 +0000 (GMT)
X-AuditID: b6c32a46-811ff70000001260-72-5eb26f292560
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p1new.samsung.com (Symantec Messaging Gateway) with SMTP id
 EB.3F.18461.82F62BE5; Wed,  6 May 2020 17:02:48 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200506080248epsmtip1a031014909f7a3b4dd3d552a37229dcb~MYa4UoFHN2841028410epsmtip1C;
 Wed,  6 May 2020 08:02:48 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 1/3] serial: samsung: Replace rd_regb/wr_regb with
 rd_reg/wr_reg
Date: Wed,  6 May 2020 17:02:38 +0900
Message-Id: <20200506080242.18623-1-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFnrOKsWRmVeSWpSXmKPExsWy7bCmma5m/qY4g8uTpCyaF69ns1i19Aaz
 xZQNH5gs+h+/ZrY4f34Du8Wmx9dYLS7vmsNmMeP8PiaLM4t72R04PTat6mTz2D93DbvH5iX1
 Hn1bVjF6rN9ylcXj8ya5ALaoHJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8
 xNxUWyUXnwBdt8wcoKOUFMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWGhgV6xYm5
 xaV56XrJ+blWhgYGRqZAlQk5GWc+Kxc8kqpYdvYUYwPjQbEuRg4OCQETiU+trF2MXBxCAjsY
 JRrf/GbpYuQEcj4xSsy4YgqR+MYocX3OVEaQBEjDvOdnWCASexkllnz8zQjR8YNR4uhOKRCb
 TUBb4s33mcwgRSICS5gkpp9/AjaWWUBT4seBG6wgtrBAmMTS30fYQGwWAVWJNSengsV5BWwl
 2p++YoPYpixx4d0SVgj7ELtE92Y+CNtF4tq/y1AXCUu8Or6FHcKWknjZ3wZl10vsa5vIDnKE
 hEAPo8TPD0+hBhlLzHrWzgjyP8hB63fpQ4JCWeLILagz+SQ6Dv9lhwjzSnS0CUE0qkms+/aC
 CcKWkVjzdBfUJg+JL+8fsoKUCwnESrw94TWBUXYWwvgFjIyrGMVSC4pz01OLjQqMkCNoEyM4
 kWm57WBccs7nEKMAB6MSD6+B+8Y4IdbEsuLK3EOMEhzMSiK8PD+AQrwpiZVVqUX58UWlOanF
 hxhNgUE3kVlKNDkfmGTzSuINTY3MzAwsTS1MzYwslMR5N3HfjBESSE8sSc1OTS1ILYLpY+Lg
 lGpgNPgm7mWT5mijr9r4bmez37pzT65nr2P2Zfa7dFVZW75f5ZdXWOyK0G06s9//sbj/Z07a
 60bNotsGLCzKDQeNb4Vbffi9Xu7f++7dbOYf8sTOTFOZ13jT22xvOUtc/Qzno+d23M7dsvDd
 9TsMEsfmNHFkJ5o69dZnBnIJdq/T+p9a2GKzc7+nEktxRqKhFnNRcSIAsWbnVHoDAAA=
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFuplluLIzCtJLcpLzFFi42LZdlhJTlcjf1OcweJLNhbNi9ezWaxaeoPZ
 YsqGD0wW/Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PFmcW97A6cHptWdbJ57J+7ht1j85J6
 j74tqxg91m+5yuLxeZNcAFsUl01Kak5mWWqRvl0CV8aZz8oFj6Qqlp09xdjAeFCsi5GTQ0LA
 RGLe8zMsXYxcHEICuxklbl59wQyRkJGY8GIJlC0scb/lCCtE0TdGiVeLJ7KBJNgEtCXefJ/J
 DJIQEVjFJHH9wBImkASzgKbEjwM3WEFsYYEQiVMtDxhBbBYBVYk1J6eCxXkFbCXan75ig9ig
 LHHh3RLWCYw8CxgZVjFKphYU56bnFhsWGOallusVJ+YWl+al6yXn525iBIeYluYOxu2rPugd
 YmTiYDzEKMHBrCTCy/NjY5wQb0piZVVqUX58UWlOavEhRmkOFiVx3huFC+OEBNITS1KzU1ML
 UotgskwcnFINTNrJ/vs/+2VlXX1QsCxi3ovTtpG5jNwS++NfPg/8va9ewjZloTunyKF35V0v
 zwWabkhY//yeHrP1qwLDggVV52qLxLPPTs36b224rY9NXflr5gsexoDJLdzTRBgSPt5Vqsrd
 tlCF4Xh4jcfF083zj0gtfNos5uIRn3M7YU37kTm7Z3k7m9ZLTX746XANy7lD8w7LO2Vnfeir
 /sAfwBwiE/lH/12RpFyBj7qXuCCT3ALFctnU/9/r/kn+f72RkQnouNr9L7NkM0R51zNMNt6a
 +FaZaYXh5cOvvs8UM5GODxL35JjPffV7091da4LN1myveiXXP+nbvI5zCXzzvppYv3nOy/pP
 d3aQGLvazO9KLMUZiYZazEXFiQAV9SOUoAIAAA==
X-CMS-MailID: 20200506080249epcas2p47ffb915f9c469d208224cbdecb2d723d
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200506080249epcas2p47ffb915f9c469d208224cbdecb2d723d
References: <CGME20200506080249epcas2p47ffb915f9c469d208224cbdecb2d723d@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_010256_092022_FDF1035D 
X-CRM114-Status: GOOD (  16.05  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Tested on Odroid HC1 (Exynos5422):
Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
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
