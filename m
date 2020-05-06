Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 911901C6AC3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 10:03:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0ulMl1/iRnX3hlTxniyueYoieU06RCGCpfTJ8O4c1AM=; b=QIoclcVQvq/caEI86yhjdrSABy
	6AByX9mQ96LA748cQP7YIsGSRaNulWO3EkXB14EC7NsebqeC2gBejtog59FuipRuBnW1/VYBhH2gH
	dPmk+836sOf03Tafqv1mo5XXp2IvhcdL4Pz8FcZUQdatRk3SEEwEZ7n8IqRaGoBa6e7jD8+5n/KgN
	z52AXcgFhzDjhCxRuIOhihotfG77cwPJyOexH+UnBZkSictXdJhGCtEGJ7WeiihBET+Hqc0WswFTb
	jA6HAs3YkDj/zUMRUdobG9xhtYZ5MQdxzpGd76EDiR5GsI8bFj1A6YBroRf+BcGswhKxIDDmWPkt5
	HrAQ1kxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWF1a-0007lW-Sq; Wed, 06 May 2020 08:03:26 +0000
Received: from mailout4.samsung.com ([203.254.224.34])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWF1M-0007iQ-C1
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 08:03:14 +0000
Received: from epcas2p3.samsung.com (unknown [182.195.41.55])
 by mailout4.samsung.com (KnoxPortal) with ESMTP id
 20200506080304epoutp04d3430d92a3603170f210390a44adbf65~MYbG6eRpT1743317433epoutp04R
 for <linux-arm-kernel@lists.infradead.org>;
 Wed,  6 May 2020 08:03:04 +0000 (GMT)
DKIM-Filter: OpenDKIM Filter v2.11.0 mailout4.samsung.com
 20200506080304epoutp04d3430d92a3603170f210390a44adbf65~MYbG6eRpT1743317433epoutp04R
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=samsung.com;
 s=mail20170921; t=1588752184;
 bh=3IjPasxf1C/TbUxmYqj0/amLQJXNdQMkUopMppYnSbU=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=oeyWMl4jXLZn4VnrDWjMaDbl3YtAf0YENTRYEd5zs8XNIzGedfjws7s9kbcbc7rC7
 LVdvVCQdRxvkgT0yBHLxy+sUeXvQH6jQX3ISKqkxDCHP3H6h3Bv4xJ4v5RckjpdOCn
 ABy+dAZFVy25x5WnEkeUW75tE5Yqcjh2ci6j2zxk=
Received: from epsnrtp1.localdomain (unknown [182.195.42.162]) by
 epcas2p1.samsung.com (KnoxPortal) with ESMTP id
 20200506080304epcas2p1216232833bb5f89ae2cbce68baa3de4b~MYbGgUtgx2959829598epcas2p1T;
 Wed,  6 May 2020 08:03:04 +0000 (GMT)
Received: from epsmges2p1.samsung.com (unknown [182.195.40.183]) by
 epsnrtp1.localdomain (Postfix) with ESMTP id 49H8GY6g75zMqYls; Wed,  6 May
 2020 08:03:01 +0000 (GMT)
Received: from epcas2p2.samsung.com ( [182.195.41.54]) by
 epsmges2p1.samsung.com (Symantec Messaging Gateway) with SMTP id
 2A.EB.49908.33F62BE5; Wed,  6 May 2020 17:02:59 +0900 (KST)
Received: from epsmtrp1.samsung.com (unknown [182.195.40.13]) by
 epcas2p4.samsung.com (KnoxPortal) with ESMTPA id
 20200506080258epcas2p4f242fb66a2145f76b0e108014ee351fb~MYbBvY2k21036110361epcas2p45;
 Wed,  6 May 2020 08:02:58 +0000 (GMT)
Received: from epsmgms1p2.samsung.com (unknown [182.195.42.42]) by
 epsmtrp1.samsung.com (KnoxPortal) with ESMTP id
 20200506080258epsmtrp15162fdff4eabad2413cececedc1d890d~MYbBtpx7D3054230542epsmtrp1I;
 Wed,  6 May 2020 08:02:58 +0000 (GMT)
X-AuditID: b6c32a45-af9ff7000000c2f4-4a-5eb26f33423b
Received: from epsmtip1.samsung.com ( [182.195.34.30]) by
 epsmgms1p2.samsung.com (Symantec Messaging Gateway) with SMTP id
 B3.BC.25866.23F62BE5; Wed,  6 May 2020 17:02:58 +0900 (KST)
Received: from ishtar.dsn.sec.samsung.com (unknown [12.36.155.159]) by
 epsmtip1.samsung.com (KnoxPortal) with ESMTPA id
 20200506080258epsmtip1fb063673c2748f99d0d7929053782df6~MYbBg7Ta82567725677epsmtip1b;
 Wed,  6 May 2020 08:02:58 +0000 (GMT)
From: Hyunki Koo <hyunki00.koo@samsung.com>
To: Kukjin Kim <kgene@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 3/3] tty: samsung_tty: 32-bit access for TX/RX hold
 registers
Date: Wed,  6 May 2020 17:02:40 +0900
Message-Id: <20200506080242.18623-3-hyunki00.koo@samsung.com>
X-Mailer: git-send-email 2.15.0.rc1
In-Reply-To: <20200506080242.18623-1-hyunki00.koo@samsung.com>
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrOKsWRmVeSWpSXmKPExsWy7bCmma5x/qY4g9ebpCyaF69ns1i19Aaz
 xZQNH5gs+h+/ZrY4f34Du8Wmx9dYLS7vmsNmMeP8PiaLM4t72R04PTat6mTz2D93DbvH5iX1
 Hn1bVjF6rN9ylcXj8ya5ALaoHJuM1MSU1CKF1Lzk/JTMvHRbJe/geOd4UzMDQ11DSwtzJYW8
 xNxUWyUXnwBdt8wcoKOUFMoSc0qBQgGJxcVK+nY2RfmlJakKGfnFJbZKqQUpOQWGhgV6xYm5
 xaV56XrJ+blWhgYGRqZAlQk5GW8vXGEs+CdVsaBvPnsDY5tYFyMHh4SAicSneVldjFwcQgI7
 GCXe/3zN2sXICeR8YpT4OocLIvGZUeJgx2d2kARIw90rc9ghErsYJT5PW8kM4fxglGg7c54F
 pIpNQFvizfeZYAkRgSVMEtPPPwFLMAtoSvw4cANsh7BAsMTK161sIDaLgKrEoftfwVbwCthK
 fNy7BGqdssSFd0tYQW7lFLCTWH3JE2SmhMA9domlnXuYIGpcJP73/2SGsIUlXh3fAtUrJfGy
 vw3KrpfY1zaRHaK5h1Hi54enrBAJY4lZz9oZQRaAHLd+lz4kXJQljtyCOplPouPwX3aIMK9E
 R5sQRKOaxLpvL6AukJFY83QX1CYPie+N3ayQMJnIKDF1dj/rBEa5WQgLFjAyrmIUSy0ozk1P
 LTYqMESOsE2M4ESn5bqDccY5n0OMAhyMSjy8Bu4b44RYE8uKK3MPMUpwMCuJ8PL8AArxpiRW
 VqUW5ccXleakFh9iNAUG5ERmKdHkfGASziuJNzQ1MjMzsDS1MDUzslAS593MfTNGSCA9sSQ1
 OzW1ILUIpo+Jg1OqgTHROTuy/VKzpXP6KZO6aWftc7qb8xe0nZrzto/teXne1pIJFyVq9ds9
 ns/YWng2uorNXPHY1x+V4g1LTm8R60+KPMG+0PDZoZMpjlfWmkc+u1sme7amJeZkxY1vBwTC
 nqnu0uISOPWkJLvZ+u3uy3Iv9ge13mI4+LP3z9Y3my12u63QF2AxDlNiKc5INNRiLipOBADI
 iiFfigMAAA==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrKLMWRmVeSWpSXmKPExsWy7bCSnK5R/qY4g0VLTS2aF69ns1i19Aaz
 xZQNH5gs+h+/ZrY4f34Du8Wmx9dYLS7vmsNmMeP8PiaLM4t72R04PTat6mTz2D93DbvH5iX1
 Hn1bVjF6rN9ylcXj8ya5ALYoLpuU1JzMstQifbsEroy3F64wFvyTqljQN5+9gbFNrIuRk0NC
 wETi7pU57F2MXBxCAjsYJQ4ubmaFSMhITHixhBnCFpa433KEFaLoG6PE43W32UESbALaEm++
 z2QGSYgIrGKSuH5gCRNIgllAU+LHgRtgk4QFAiV6Zv5nAbFZBFQlDt3/CtbMK2Ar8XHvEnaI
 DcoSF94tAarn4OAUsJNYfckTJCwEVLLp5WHWCYx8CxgZVjFKphYU56bnFhsWGOWllusVJ+YW
 l+al6yXn525iBIekltYOxj2rPugdYmTiYDzEKMHBrCTCy/NjY5wQb0piZVVqUX58UWlOavEh
 RmkOFiVx3q+zFsYJCaQnlqRmp6YWpBbBZJk4OKUamDj66hw/ljCzvZrsfWxNdQP/y4pcTi9f
 PaV9WxzaFul8MJGXD17VxqqzV113ytEQDnkTP59JDTrTNT5bO4SZhxywcvKULZpk1Rg4/Xqg
 7oNwoz2vvCJ4Cz7OEY9eyem2/OWbCv1Hkw9OsTl6c7XqMb490cc/SszjnCVfMe+lzdRVmUFR
 dRITO44eY9epWpL470uEpOPcgu9FB0Sz+oKjpHsKf/4+na6Z326tsu/R6c+/PL6KyAqkvWqR
 nSGp41ug89nP2d3TqyK/4JFEyNOlovfXn9I+viBR+afvfplVhyU4jsjJi0gYv1231yiAW9Xg
 eeu0wp8/2SdG/E0M2qvf3ezX+zT957HJfOoBm34qsRRnJBpqMRcVJwIAIUcmcbgCAAA=
X-CMS-MailID: 20200506080258epcas2p4f242fb66a2145f76b0e108014ee351fb
X-Msg-Generator: CA
X-Sendblock-Type: AUTO_CONFIDENTIAL
CMS-TYPE: 102P
DLP-Filter: Pass
X-CFilter-Loop: Reflected
X-CMS-RootMailID: 20200506080258epcas2p4f242fb66a2145f76b0e108014ee351fb
References: <20200506080242.18623-1-hyunki00.koo@samsung.com>
 <CGME20200506080258epcas2p4f242fb66a2145f76b0e108014ee351fb@epcas2p4.samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_010312_751601_317C6D90 
X-CRM114-Status: GOOD (  17.29  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [203.254.224.34 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [203.254.224.34 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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

Support 32-bit access for the TX/RX hold registers UTXH and URXH.

This is required for some newer SoCs.

Signed-off-by: Hyunki Koo <hyunki00.koo@samsung.com>
Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>
Tested on Odroid HC1 (Exynos5422):
Tested-by: Krzysztof Kozlowski <krzk@kernel.org>
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
