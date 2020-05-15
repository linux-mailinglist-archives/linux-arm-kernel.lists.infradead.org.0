Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232711D4C5F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:17:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SGoZKRRyr/IuKmN1sYATAgyVeR6vFObqrU/V7I5PmgM=; b=e3iWGDz++RonhB
	yxaUMEcB+AtMvlKXB0dUD2dWGoIDJ3JYEPSP8ph+IYQh1W3pvWT0yJh+nEZC1oELxbdww7vwn/mbm
	alAHuCPMyY0NSCm9fDzFwIBo8T/PqG3iOtXZhKm57XVjBCibZv2N1JlQ/LZWuGug3GkiB4HYx8th7
	hbRHPgxQHrZ+zJT74cX3P7gNcLxJ5+n7HVDnW6qpOrds9OkX83ZHXuHb/TLkXT4aOKOelateXQ4ly
	ubyZX9LIxtNnydZWS7Zvppc7mEfgn2H8j0echQsA3/bBFvpWCdfDAkRZJqy8SDkvSwZIbpIwDgvpQ
	j3zso6Q9+j9ubxmd2YbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYLb-0006G4-MF; Fri, 15 May 2020 11:17:47 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYKY-0005Ra-Ul
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:16:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589541402; x=1621077402;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=sVqWsLz1y8fsk5DdLudMe2Mg6uiTLwYXDVejGU3d/cs=;
 b=KNoVVL3zryv5p7Ctp/w8CQvI8e8okcaKWqMToRKuPgCjC4GhUl9DJZcD
 jcuF3/NtvVyTnfmmJLa2RtmJg4lwVNYxLlzZiXDjPIlPApoXbSB05Xv/r
 ODvSPrnoe1ERJgngukcCuXrachg3Od7S+A9EJoRQf+uZlEitJMqMF24a5
 5N6K8/TUsHR3vF8/iP0+DJdR0PJ0nXQxRhipeBDPncBYGHZngLDQkj1D3
 qskm3qQgVAr1r0VGa+9UPR5VYFDYGc0263H1ivXsAMJS4rdhv46AezyIs
 0ALXbJmpyaH0fT2/cq937GwEGXGnavfJKUtTBkU1bID90PCGhm32mw8af g==;
IronPort-SDR: fWQCjc6jhWyyAwjXpD3T2ZttWIy031vnoDgobbQQ55/8JQYyIN+5k5IB4xjaKm9uUESM8Sj5KB
 ibNBDPEkbVjcABQwUDeEr4BMuyF7zJ6O6aiNMe42XloQ9DNlaUFfuYaW1aEiP/VJw6SzVJ5+29
 /D+7pBvvBqCGzJXHpvnO1oGdyjoarsjpUxpQOlKxxmnYZhLL5iOEReSw60sffxuNaXiFPCCveJ
 mM/PWe1raXMubak4WpKfi7JNuKhyffDlXSVCIImMWDFp4PpPrWEwCaKUCNktAM5jJTUj+IEcj7
 0bQ=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="79770138"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 04:16:39 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 04:16:39 -0700
Received: from cristi-P53.lan (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 15 May 2020 04:16:36 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 5/7] usb: gadget: udc: atmel: rename errata into caps
Date: Fri, 15 May 2020 14:16:29 +0300
Message-ID: <20200515111631.31210-6-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515111631.31210-1-cristian.birsan@microchip.com>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041643_029641_91C9DDB4 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Cristian Birsan <cristian.birsan@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Cristian Birsan <cristian.birsan@microchip.com>

Rename errata structure into capabilities (caps). It will be used to add
capabilities for new SoCs. Get the pointer to PMC only for the SoCs that
need it to perform toggle_bias or pulse_bias.

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 20 ++++++++++----------
 drivers/usb/gadget/udc/atmel_usba_udc.h |  4 ++--
 2 files changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index a73b0e78a357..2b1a0b6df0fe 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -389,8 +389,8 @@ static int vbus_is_present(struct usba_udc *udc)
 
 static void toggle_bias(struct usba_udc *udc, int is_on)
 {
-	if (udc->errata && udc->errata->toggle_bias)
-		udc->errata->toggle_bias(udc, is_on);
+	if (udc->caps && udc->caps->toggle_bias)
+		udc->caps->toggle_bias(udc, is_on);
 }
 
 static void generate_bias_pulse(struct usba_udc *udc)
@@ -398,8 +398,8 @@ static void generate_bias_pulse(struct usba_udc *udc)
 	if (!udc->bias_pulse_needed)
 		return;
 
-	if (udc->errata && udc->errata->pulse_bias)
-		udc->errata->pulse_bias(udc);
+	if (udc->caps && udc->caps->pulse_bias)
+		udc->caps->pulse_bias(udc);
 
 	udc->bias_pulse_needed = false;
 }
@@ -2032,17 +2032,17 @@ static void at91sam9g45_pulse_bias(struct usba_udc *udc)
 			   AT91_PMC_BIASEN);
 }
 
-static const struct usba_udc_errata at91sam9rl_errata = {
+static const struct usba_udc_caps at91sam9rl_caps = {
 	.toggle_bias = at91sam9rl_toggle_bias,
 };
 
-static const struct usba_udc_errata at91sam9g45_errata = {
+static const struct usba_udc_caps at91sam9g45_caps = {
 	.pulse_bias = at91sam9g45_pulse_bias,
 };
 
 static const struct of_device_id atmel_udc_dt_ids[] = {
-	{ .compatible = "atmel,at91sam9rl-udc", .data = &at91sam9rl_errata },
-	{ .compatible = "atmel,at91sam9g45-udc", .data = &at91sam9g45_errata },
+	{ .compatible = "atmel,at91sam9rl-udc", .data = &at91sam9rl_caps },
+	{ .compatible = "atmel,at91sam9g45-udc", .data = &at91sam9g45_caps },
 	{ .compatible = "atmel,sama5d3-udc" },
 	{ /* sentinel */ }
 };
@@ -2070,8 +2070,8 @@ static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
 	if (!match)
 		return ERR_PTR(-EINVAL);
 
-	udc->errata = match->data;
-	if (udc->errata) {
+	udc->caps = match->data;
+	if (udc->caps && (udc->caps->pulse_bias || udc->caps->toggle_bias)) {
 		pp = of_find_matching_node_and_match(NULL, atmel_pmc_dt_ids,
 						     NULL);
 		if (!pp)
diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.h b/drivers/usb/gadget/udc/atmel_usba_udc.h
index 8de79356d31d..1a0f77bf8d4f 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.h
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.h
@@ -302,7 +302,7 @@ struct usba_request {
 	unsigned int				mapped:1;
 };
 
-struct usba_udc_errata {
+struct usba_udc_caps {
 	void (*toggle_bias)(struct usba_udc *udc, int is_on);
 	void (*pulse_bias)(struct usba_udc *udc);
 };
@@ -320,7 +320,7 @@ struct usba_udc {
 	struct usb_gadget gadget;
 	struct usb_gadget_driver *driver;
 	struct platform_device *pdev;
-	const struct usba_udc_errata *errata;
+	const struct usba_udc_caps *caps;
 	int irq;
 	struct gpio_desc *vbus_pin;
 	int num_ep;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
