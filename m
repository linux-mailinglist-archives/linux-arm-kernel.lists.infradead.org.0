Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC8001C69A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:01:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+8JhdoV7Qq8iVgDqQhIyS06PbgBBdN6FcznctoEUqjw=; b=bWdUYDjSzXOa6dddUsUG/IcuYJ
	D6YTpXJ+gWf0rio0N5xM8D9Brm221EqOZmwaQDaLvEqFLeTGBQR9WN4lxhcFLxTZvnrUUn/aLFAfK
	Be6W5ZDXfYijL6G2V8zX2XKDo5OSetWbFkDQeG2haFuzB6u5kZKi6ApEmErv5l7ls+dmPB0b7CcWG
	v8+SKpwLqubxJIrsm1UAa40IZasDGMdQtVheNCujrfNjgEyP/ro4h71GVxUHRhs7td4xaGpkhQhDp
	d7AeI6h2lnIItmKtiXMwWX67S9jTu22y9VwFpMnWcud2thLgs4rClskmF/PmSZ25f1/v6lfhuBGuw
	gPxCiX+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWE35-0004Mo-VW; Wed, 06 May 2020 07:00:55 +0000
Received: from mailout3.samsung.com ([203.254.224.33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWE2o-0004CR-Hg
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 07:00:41 +0000
Received: from epcas2p1.samsung.com (unknown [182.195.41.53])
 by mailout3.samsung.com (KnoxPortal) with ESMTP id
 20200506070034epoutp03933f404a655e8a10d86e0f2b2eeddb07~MXkiqACI21542715427epoutp03s
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 07:00:34 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout3.samsung.com
 20200506070034epoutp03933f404a655e8a10d86e0f2b2eeddb07~MXkiqACI21542715427epoutp03s
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588748434;
 bh=WrS5h3D/ChbI+oTygY8yGfZEQigbYPY7lZ3N1U2N+Eg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=jG2zbQsOjjH8SDG7zcpYBoTed+f8rrF/YYf0x5c2VGvw2eMmI4UkVOxuqvIW/FRA5
 41MdVHjI03JIPtHZ//AU0FLilSVQl5mfdCf+YQrLoNMoKu5X1tKuT+Q7DWteo6a7D1
 epZuAYfGzPBypRa6cslficaKdN7U8rOSNb/pvXhs=
Received: from epsnrtp3.localdomain (unknown [182.195.42.164]) by
 epcas2p3.samsung.com (KnoxPortal) with ESMTP id
 20200506070033epcas2p31ec9642e03dfdfa0f17cc3435f282e28~MXkhvlju31517115171epcas2p3-;
 Wed,  6 May 2020 07:00:33 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.185]) by
 epsnrtp3.localdomain (Postfix) with ESMTP id 49H6tR4VMvzMqYkd; Wed,  6 May
 2020 07:00:31 +0000 (GMT)
Received: from epcas2p3.samsung.com ( [182.195.41.55]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 62.F9.49908.D8062BE5; Wed,  6 May 2020 16:00:30 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20200506070029epcas2p4d4e86fad193180f71b70ea76e134d679~MXkdykPMa2852928529epcas2p4F;
 Wed,  6 May 2020 07:00:29 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200506070029epsmtrp19cd6dcbccdee9be201e179cf892b413c~MXkdxiygi2938229382epsmtrp1H;
 Wed,  6 May 2020 07:00:29 +0000 (GMT)
X-AuditID: b6c32a45-af9ff7000000c2f4-dd-5eb2608d48d2
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 0D.56.25866.D8062BE5; Wed,  6 May 2020 16:00:29 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200506070029epsmtip1d003204373390fa153305fad920fdfb9~MXkdmMF3i2294422944epsmtip1I;
 Wed,  6 May 2020 07:00:29 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v9 3/3] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Date: Wed,  6 May 2020 16:00:07 +0900
Message-Id: <20200506070009.16809-3-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
In-Reply-To: <20200506070009.16809-1-hyunki00.koo@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrBKsWRmVeSWpSXmKPExsWy7bCmuW5fwqY4g1tNzBbNi9ezWaxaeoPZ
 YsqGD0wW/Y9fM1ucP7+B3WLT42usFpd3zWGzmHF+H5PFmcW97A6cHptWdbJ57J+7ht1j85J6
 j74tqxg91m+5yuLxeZNcAFtUjk1GamJKapFCal5yfkpmXrqtkndwvHO8qZmBoa6hpYW5kkJe
 Ym6qrZKLT4CuW2YO0FFKCmWJOaVAoYDE4mIlfTubovzSklSFjPziElul1IKUnAJDwwK94sTc
 4tK8dL3k/FwrQwMDI1OgyoScjJYH71gKvkhWLLu9jrGBsUe0i5GTQ0LARGLNlunsXYxcHEIC
 OxglFu89xALhfGKUaD7bxwThfGaUePLwLmsXIwdYy8vjYN1CArsYJWatTIGo+cEoMb+phREk
 wSagLfHm+0xmkISIwBImiennn7CAJJgFNCV+HLjBCmILCwRJXFjUwAxiswioSkyf8QnM5hWw
 lTi5ZTkjxH3KEhfeLQGr5xSwk3jT9ZgVZKiEwD12iUMd81ghilwkbvw7DWULS7w6voUdwpaS
 eNnfBmXXS+xrm8gO0dzDKPHzw1OoBmOJWc/aGUFeA7lu/S59iC+VJY7cgrqZT6Lj8F92iDCv
 REebEESjmsS6by+YIGwZiTVPd0Ft8pB4evEYGyRQJjJKfJ38jW0Co9wshAULGBlXMYqlFhTn
 pqcWGxUYIsfYJkZwqtNy3cE445zPIUYBDkYlHl4D941xQqyJZcWVuYcYJTiYlUR4eX4AhXhT
 EiurUovy44tKc1KLDzGaAkNyIrOUaHI+MA3nlcQbmhqZmRlYmlqYmhlZKInzbua+GSMkkJ5Y
 kpqdmlqQWgTTx8TBKdXAqDj3j5qghe23/tefRLgdDr/U/CQ575fAjMAv0psStsjffCtr/PLa
 8vNbD2z+MDXhqLmTpcm9pYzPwl6qG3+Lb6lhbAiMefHikaGygJij1U7hf1xFoe8Yi2JfbTl4
 eyNfsK7a/+svTI8e4XzQqN2z7IrB0z3Bfe3n2wq5ZM7JRO3w2+2yt8TgthJLcUaioRZzUXEi
 APKZMiGLAwAA
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKLMWRmVeSWpSXmKPExsWy7bCSnG5vwqY4gznbpS2aF69ns1i19Aaz
 xZQNH5gs+h+/ZrY4f34Du8Wmx9dYLS7vmsNmMeP8PiaLM4t72R04PTat6mTz2D93DbvH5iX1
 Hn1bVjF6rN9ylcXj8ya5ALYoLpuU1JzMstQifbsEroyWB+9YCr5IViy7vY6xgbFHtIuRg0NC
 wETi5XEgk4tDSGAHo8SeO1MYuxg5geIyEhNeLGGGsIUl7rccYYUo+sYo8WvRVBaQBJuAtsSb
 7zOZQRIiAquYJK4fWMIEkmAW0JT4ceAGK4gtLBAgMeHBarBJLAKqEtNnfAKzeQVsJU5uWQ61
 TVniwrslYPWcAnYSb7oeg9lCQDU7+l4xTWDkW8DIsIpRMrWgODc9t9iwwCgvtVyvODG3uDQv
 XS85P3cTIzgktbR2MO5Z9UHvECMTB+MhRgkOZiURXp4fG+OEeFMSK6tSi/Lji0pzUosPMUpz
 sCiJ836dtTBOSCA9sSQ1OzW1ILUIJsvEwSnVwBS3N/F0T+SK/QJBPj0nTnFLlbAusOsodN5k
 1cweZ2bxyuH9lB6RNCZZtV9n1jJelun3a5rx21w/wuCOecBD5sn/l/IkrVNVnd8uJLvG6DOX
 XfKKGf4MoYe3cvDrp970OPD8hZz3vdNXBbfcadOrspa8YldgPeXNthC1F4znzs4+/8D+954p
 n97sOP12Rb5fPsfrj4cPKDx6bmO6d8I5Nc6roZlnj7z2+5nBrafQpFpxKm5Xn3vace/ITwlP
 H3np97a9OazSrHF1bt2PT+rrMsLXupUauV4LZStexfSkV3+Sqb1Ej7hvy6M1l2sDf926EjLf
 dRpzmYtbwOmj3UIzLr/4P3+/7T5Dx7v7jso3SCuxFGckGmoxFxUnAgDay9rCuAIAAA==
X-CMS-MailID: 20200506070029epcas2p4d4e86fad193180f71b70ea76e134d679
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200506070029epcas2p4d4e86fad193180f71b70ea76e134d679
References: <20200506070009.16809-1-hyunki00.koo@samsung.com>
 <CGME20200506070029epcas2p4d4e86fad193180f71b70ea76e134d679@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_000038_980039_8D931C3B 
X-CRM114-Status: GOOD (  17.21  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.33 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.33 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Hyunki Koo <hyunki00.koo@samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Support 32-bit access for the TX/RX hold registers UTXH and URXH.

This is required for some newer SoCs.

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
---
 drivers/tty/serial/samsung_tty.c | 62 ++++++++++++++++++++++++++++++++++++----
 1 file changed, 57 insertions(+), 5 deletions(-)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 326b0164609c..6ef614d8648c 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -154,10 +154,33 @@ struct s3c24xx_uart_port {
 #define portaddrl(port, reg) \
 	((unsigned long *)(unsigned long)((port)->membase + (reg)))
 
-#define rd_reg(port, reg) (readb_relaxed(portaddr(port, reg)))
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
 
-#define wr_reg(port, reg, val) writeb_relaxed(val, portaddr(port, reg))
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
 
 /* Byte-order aware bit setting/clearing functions. */
@@ -1974,7 +1997,7 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
 	struct device_node *np = pdev->dev.of_node;
 	struct s3c24xx_uart_port *ourport;
 	int index = probe_index;
-	int ret;
+	int ret, prop = 0;
 
 	if (np) {
 		ret = of_alias_get_id(np, "serial");
@@ -2000,10 +2023,27 @@ static int s3c24xx_serial_probe(struct platform_device *pdev)
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
@@ -2587,6 +2627,18 @@ module_platform_driver(samsung_serial_driver);
  * Early console.
  */
 
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
 struct samsung_early_console_data {
 	u32 txfull_mask;
 };
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
