Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 73EEA1F96D8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 14:44:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	In-Reply-To:List-Owner; bh=/CX7c8P7/ePvVODYsaXKoRrbCmUn+4WyFLLq87ycmQ0=; b=ZM
	/Czz+I053E2LUMKoI2E0SsxMKHFLSpcGRdMM1W6W8932rhO6OCp/WXVIMbMTt6Q8/JoN1rFBQ9/jv
	tDw4BJ94dK1Ski3QpbQ0cKWOmqDPbmELBg5A0g6XDAhGfdx8YL3Xt6eCnNh7LtbxMv5qBwCp7Bnfq
	97XQFTHIfZGGNZ++6MkFw2scwfD1XsgUH3vzPqlRa/e38OYvzG9U0rtrzbG3JVUi5jJUxLE6qCRHF
	HBWACpZSZaGW1nnlv53z+R0/2DMx6XDNxAsDpANFFKDwYWJmlvAKUiml6aC7n7KsxRzOjiNcqTfW5
	XmMS2exHgRA9t1lmnUrvO+MGnkhTr/6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkoTF-0001RF-3H; Mon, 15 Jun 2020 12:44:13 +0000
Received: from mailout2.samsung.com ([203.254.224.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkoT6-0001QS-DM
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 12:44:06 +0000
Received: from epcas5p2.samsung.com (unknown [182.195.41.40])
 by mailout2.samsung.com (KnoxPortal) with ESMTP id
 20200615124356epoutp024b264670d894c1893916821d5b840b02~YuDwEAidA2493024930epoutp02f
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 15 Jun 2020 12:43:56 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout2.samsung.com
 20200615124356epoutp024b264670d894c1893916821d5b840b02~YuDwEAidA2493024930epoutp02f
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1592225036;
 bh=X+mJpzMlxdE7ZBj3ejmV7W+NEmHNprZxCkt0S5Vmxm4=;
 h=From:To:Cc:Subject:Date:References:From;
 b=t4MVnbvl0ow71SUaTHnp4AbZlx0dLBzEibvL7N3VX+Un3bFHh7azkS6s6kYwUlzrF
 guy0cMl2BIs7Qjg8wtsoNPt9eAshMJfHITcYcFXHmxxsWqaycFnG6pYsfGo2M6LQRt
 Hx43bzCDZoJfp13wRsF8M97jpFcXzwEY5rEM61CI=
Received: from epsmges5p2new.samsung.com (unknown [182.195.42.74]) by
 epcas5p3.samsung.com (KnoxPortal) with ESMTP id
 20200615124355epcas5p31d26dc0e2a9bd211112387a5cd43a232~YuDvwjbtA1927719277epcas5p3_;
 Mon, 15 Jun 2020 12:43:55 +0000 (GMT)
Received: from epcas5p2.samsung.com ( [182.195.41.40]) by
 epsmges5p2new.samsung.com (Symantec Messaging Gateway) with SMTP id
 2A.0F.09703.B0D67EE5; Mon, 15 Jun 2020 21:43:55 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas5p4.samsung.com (KnoxPortal) with ESMTPA id
 20200615124355epcas5p446ae2f1b63331ef87334cd7d696c3c43~YuDvVndXZ1389313893epcas5p4X;
 Mon, 15 Jun 2020 12:43:55 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200615124355epsmtrp1e4ac9ac3fc838b011890444db6bfbbd1~YuDvU5Poq0526805268epsmtrp1O;
 Mon, 15 Jun 2020 12:43:55 +0000 (GMT)
X-AuditID: b6c32a4a-4cbff700000025e7-9b-5ee76d0b40bd
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 2D.3A.08303.B0D67EE5; Mon, 15 Jun 2020 21:43:55 +0900 (KST)
Received: from Jaguar.sa.corp.samsungelectronics.net (unknown
 [107.108.73.139]) by epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200615124353epsmtip1ca0f8bf414b0ce435983625f89302b92~YuDt2V8kg0491304913epsmtip1d;
 Mon, 15 Jun 2020 12:43:53 +0000 (GMT)
From: Tamseel Shams <m.shams@samsung.com>
To: kgene@kernel.org, krzk@kernel.org, gregkh@linuxfoundation.org,
 jslaby@suse.com
Subject: [RFC PATCH] serial: samsung: Re-factors UART IRQ resource for
 various Samsung SoC
Date: Mon, 15 Jun 2020 17:56:09 +0530
Message-Id: <20200615122609.71884-1-m.shams@samsung.com>
X-Mailer: git-send-email 2.17.1
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFrrHIsWRmVeSWpSXmKPExsWy7bCmhi537vM4gy2vtS0ezNvGZtG8eD2b
 xZQNH5gs+h+/ZrY4f34Du8Wmx9dYLS7vmsNmMeP8PiaLM4t72S3uti5md+Dy2LSqk81j/9w1
 7B6bl9R79G1ZxeixfstVFo/Pm+QC2KK4bFJSczLLUov07RK4Mt6v2MdW0CtTsfjubJYGxnVi
 XYycHBICJhLb58xj6WLk4hAS2M0osff6FkYI5xOjxOR/Z9lAqoQEPjNKtE+uh+mYcP4GO0TR
 LkaJ6z9esEE4LUwSV0+1MHcxcnCwCWhKHD/PDdIgIhAi8e4sxFRmgZNAKzY3sIAkhAViJKac
 OcwIYrMIqEo82jcdbBuvgIXExCVnWCC2yUus3nCAGaRZQuAcu8TrS8/YIBIuEq8b2lghbGGJ
 V8e3sEPYUhIv+9ug7HyJ+fNWMUPYFRIrL7yBsu0lDlyZwwJyKDPQoet36YOEmQX4JHp/P2EC
 CUsI8Ep0tAlBVCtK/N/dDzVRXOLdiilQWz0k2i9NZYUEUKzEsgWXmSYwysxCGLqAkXEVo2Rq
 QXFuemqxaYFRXmq5XnFibnFpXrpecn7uJkZwEtDy2sH48MEHvUOMTByMhxglOJiVRHgPyT+P
 E+JNSaysSi3Kjy8qzUktPsQozcGiJM6r9ONMnJBAemJJanZqakFqEUyWiYNTqoHJZNtV5i8t
 UiuKAt9H/5p4pWH1s435Z9ZWMEbm3t+2IUDuqstK1pVL39l6TF2jOtGj7ANLpMyXP1fSgq8x
 PDl8znXTRuM61UPtIsU9kss2Pf3Tzv/r31l7Dqn3vhem2ixdv22JiP7VWpfNiYtV913dvczy
 fWtzel2eTHeXphPvGymlzSxfucLYkrLmvL57KVajbJ/RbLergimyeXz7jKJ5NjSuqH4kzBW9
 JzFltaDK55CEwjM9m+79sFRLlvI1rpjDun3eTF3ROd6xjovYjMNFcj0Wbo7l2CRfof3yq3ao
 9XkXLtl8M6/LzRNq5FQL6nTs3s5lc9mUoyOe+blme5TPrCdez/SLbrULOU47M02JpTgj0VCL
 uag4EQDKgmYtcQMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFprILMWRmVeSWpSXmKPExsWy7bCSnC537vM4g+5eEYsH87axWTQvXs9m
 MWXDByaL/sevmS3On9/AbrHp8TVWi8u75rBZzDi/j8nizOJedou7rYvZHbg8Nq3qZPPYP3cN
 u8fmJfUefVtWMXqs33KVxePzJrkAtigum5TUnMyy1CJ9uwSujPcr9rEV9MpULL47m6WBcZ1Y
 FyMnh4SAicSE8zfYuxi5OIQEdjBKnNu0kRkiIS4x7dd+RghbWGLlv+dQRU1MEm9/nGDpYuTg
 YBPQlDh+nhvEFBGIkJj5sQakhFngPKPEzuOrmUB6hQWiJGbOmccKYrMIqEo82jedDcTmFbCQ
 mLjkDAvEfHmJ1RsOME9g5FnAyLCKUTK1oDg3PbfYsMAoL7Vcrzgxt7g0L10vOT93EyM41LS0
 djDuWfVB7xAjEwfjIUYJDmYlEd5D8s/jhHhTEiurUovy44tKc1KLDzFKc7AoifN+nbUwTkgg
 PbEkNTs1tSC1CCbLxMEp1cDkoqihsEEiKGJBkvPD76tuiyY1HLfU8+2556CaXf5TJ/ra7Z1y
 M74yT2KSZbqts+UZq7lXe+6zWJm9jasvl7xvcDE28N81a1e59jwVW+cNXK+MKpk8HSynb1WM
 Njn78MG0lLZrfszP7C9POjT10NMH+uf4V6tn7nLsq8tI5+DLeaWfMIln+cGDFo+VeT202lpe
 OalFJ9cpswdYn3KI/ch95H0MI8N6J92WSd9+my/1z20S2Hp2mgDD9XxWdbFyod2pJ56+vVy0
 yevHicMdn8yX8hdaRXyeE3xya9LuJRkXv8zm2/vx2fluldB/x3lfP52pfHnfjPkWWVMlC9Sc
 nsUkyX4rEyrX4I4IVKmd7qfEUpyRaKjFXFScCACHjvcVpAIAAA==
X-CMS-MailID: 20200615124355epcas5p446ae2f1b63331ef87334cd7d696c3c43
X-Msg-Generator: CA
CMS-TYPE: 105P
X-CMS-RootMailID: 20200615124355epcas5p446ae2f1b63331ef87334cd7d696c3c43
References: <CGME20200615124355epcas5p446ae2f1b63331ef87334cd7d696c3c43@epcas5p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_054404_690732_90F4EBC2 
X-CRM114-Status: GOOD (  16.55  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.25 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.25 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org, alim.akhtar@samsung.com,
 Tamseel Shams <m.shams@samsung.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In few older Samsung SoCs like s3c2410, s3c2412
and s3c2440, UART IP is having 2 interrupt lines.
However, in other SoCs like s3c6400, s5pv210,
exynos5433, and exynos4210 UART is having only 1
interrupt line. Due to this, "platform_get_irq(platdev, 1)"
call in the driver gives the following warning:
"IRQ index 1 not found" on recent platforms.

This patch re-factors the IRQ resources handling for
each platform and hence fixing the above warnings seen
on some platforms.

Signed-off-by: Tamseel Shams <m.shams@samsung.com>
---
 drivers/tty/serial/samsung_tty.c | 20 ++++++++++++++++----
 1 file changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 6ef614d8648c..078dcb3e316f 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -60,6 +60,7 @@ struct s3c24xx_uart_info {
 	char			*name;
 	unsigned int		type;
 	unsigned int		fifosize;
+	unsigned int		irq_cnt;
 	unsigned long		rx_fifomask;
 	unsigned long		rx_fifoshift;
 	unsigned long		rx_fifofull;
@@ -1908,12 +1909,17 @@ static int s3c24xx_serial_init_port(struct s3c24xx_uart_port *ourport,
 	else {
 		port->irq = ret;
 		ourport->rx_irq = ret;
-		ourport->tx_irq = ret + 1;
+		if (ourport->info->irq_cnt == 1)
+			ourport->tx_irq = ret;
+		else
+			ourport->tx_irq = ret + 1;
 	}
 
-	ret = platform_get_irq(platdev, 1);
-	if (ret > 0)
-		ourport->tx_irq = ret;
+	if (ourport->info->irq_cnt != 1) {
+		ret = platform_get_irq(platdev, 1);
+		if (ret > 0)
+			ourport->tx_irq = ret;
+	}
 	/*
 	 * DMA is currently supported only on DT platforms, if DMA properties
 	 * are specified.
@@ -2387,6 +2393,7 @@ static struct s3c24xx_serial_drv_data s3c2410_serial_drv_data = {
 		.name		= "Samsung S3C2410 UART",
 		.type		= PORT_S3C2410,
 		.fifosize	= 16,
+		.irq_cnt	= 2,
 		.rx_fifomask	= S3C2410_UFSTAT_RXMASK,
 		.rx_fifoshift	= S3C2410_UFSTAT_RXSHIFT,
 		.rx_fifofull	= S3C2410_UFSTAT_RXFULL,
@@ -2414,6 +2421,7 @@ static struct s3c24xx_serial_drv_data s3c2412_serial_drv_data = {
 		.name		= "Samsung S3C2412 UART",
 		.type		= PORT_S3C2412,
 		.fifosize	= 64,
+		.irq_cnt	= 2,
 		.has_divslot	= 1,
 		.rx_fifomask	= S3C2440_UFSTAT_RXMASK,
 		.rx_fifoshift	= S3C2440_UFSTAT_RXSHIFT,
@@ -2443,6 +2451,7 @@ static struct s3c24xx_serial_drv_data s3c2440_serial_drv_data = {
 		.name		= "Samsung S3C2440 UART",
 		.type		= PORT_S3C2440,
 		.fifosize	= 64,
+		.irq_cnt	= 2,
 		.has_divslot	= 1,
 		.rx_fifomask	= S3C2440_UFSTAT_RXMASK,
 		.rx_fifoshift	= S3C2440_UFSTAT_RXSHIFT,
@@ -2471,6 +2480,7 @@ static struct s3c24xx_serial_drv_data s3c6400_serial_drv_data = {
 		.name		= "Samsung S3C6400 UART",
 		.type		= PORT_S3C6400,
 		.fifosize	= 64,
+		.irq_cnt	= 1,
 		.has_divslot	= 1,
 		.rx_fifomask	= S3C2440_UFSTAT_RXMASK,
 		.rx_fifoshift	= S3C2440_UFSTAT_RXSHIFT,
@@ -2498,6 +2508,7 @@ static struct s3c24xx_serial_drv_data s5pv210_serial_drv_data = {
 	.info = &(struct s3c24xx_uart_info) {
 		.name		= "Samsung S5PV210 UART",
 		.type		= PORT_S3C6400,
+		.irq_cnt	= 1,
 		.has_divslot	= 1,
 		.rx_fifomask	= S5PV210_UFSTAT_RXMASK,
 		.rx_fifoshift	= S5PV210_UFSTAT_RXSHIFT,
@@ -2526,6 +2537,7 @@ static struct s3c24xx_serial_drv_data s5pv210_serial_drv_data = {
 	.info = &(struct s3c24xx_uart_info) {			\
 		.name		= "Samsung Exynos UART",	\
 		.type		= PORT_S3C6400,			\
+		.irq_cnt	= 1,				\
 		.has_divslot	= 1,				\
 		.rx_fifomask	= S5PV210_UFSTAT_RXMASK,	\
 		.rx_fifoshift	= S5PV210_UFSTAT_RXSHIFT,	\
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
