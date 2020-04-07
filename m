Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C7EE1A0DAA
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 14:32:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GCZG0Hnvoj85xRtCHswn2P8SuJ51Ox2b5n/w7YSZLug=; b=BBNVf+jxdB2O7e
	7MaU/Z44hPJBMMSYfQOVwfWSOFYSUBFQcQ4qIfGw5Pd+Io9EmI5KjbK7DwIYB79Zbqa3G9MzFmFFS
	aAnBxgp5JpCc2QmvF0JsihNp5jGh8fbLmuWXIggxCqQCIDn7qp9fOYfQGM/pwAP6yRw4wKNwzcccY
	ODGb0buBk4U5ei24wp2jl+rNIHzpHzkUOkHGfK/2MRrSvy/HE39QZ6ZVzLy5qf26BWI/TxDG0XLWl
	6HXlaXTJGHqzgUjzAiWg6gD3emhGQBO/r7XX7tzDnZr5lzBJGXl7TjJzKAWO1OF7/0+H3wycWm4GQ
	+rBky081TEDOdgXeWKEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnOT-0003KA-AX; Tue, 07 Apr 2020 12:31:53 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnMS-0007s7-NG
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 12:29:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586262588; x=1617798588;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=EFXIwExObMHjh1goNYVJztAIzdQCu9r/PBJ7CO6BaHE=;
 b=Kv9dNwzgjWWN0qY8XmvGkTMxhwqJI7R13/Br3NyhaPSecjWEHFTgAJuc
 /Mi3a5yGgopGmtomWo7X60j+jo70629GRGo25xFzMfgfXMqz/pDwXRys8
 xxZGGR+Mk1ddHLs9Yp1cHV46JalII+F5p/kfQ+fyC/WMFjZsZTzz93hJc
 pUCG78ZTPIWpAL/O7hsRzMePm5SMqDZJPsOvDjECzS1JOYkOmR7mq0qdh
 s2nnYcNVelUag7WEMu6RLoEaRl0IcSjE8ISk/tib1P9naevPBzq//hwd4
 QnDQYO0pZhoI3h2dxkrkna3N2ktTGwtIVgEdeNMv6LnS9CHJlEvNK8Zv5 A==;
IronPort-SDR: Spjj5RbgFc3kEczZLkPqDcNWpJRu6HNsZOf6PzTOlB/qz6FI8ALxNbzNo+4gjKS6nB9xV8Mff7
 5QGWgjn6MoviJcWAkxTh58YcyMibB2m2dBYsNARPpI10XrgbTpcLN+/V2hEtuDvyqw1xv8jZCN
 +lc2qHEGkN/bMGEJMZhok1EPQvpXGiQf4/WSOh2inrrR+jdLa+4g1iiPIYFjsDPlCZ54arag9G
 4+gg0WZGOSIRfmVzhz2h0JydeCmpkev045bDlfxF043APpLkrdPujpgoxa+psTj0nzo8pQq2XN
 xwk=
X-IronPort-AV: E=Sophos;i="5.72,354,1580799600"; d="scan'208";a="72565062"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Apr 2020 05:29:47 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 05:29:46 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 7 Apr 2020 05:29:44 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 6/7] usb: gadget: udc: atmel: rename errata into caps
Date: Tue, 7 Apr 2020 15:28:51 +0300
Message-ID: <20200407122852.19422-7-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407122852.19422-1-cristian.birsan@microchip.com>
References: <20200407122852.19422-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_052948_948131_7FD434C6 
X-CRM114-Status: GOOD (  12.93  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, ludovic.desroches@microchip.com,
 Cristian Birsan <cristian.birsan@microchip.com>
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
 drivers/usb/gadget/udc/atmel_usba_udc.c | 21 ++++++++++-----------
 drivers/usb/gadget/udc/atmel_usba_udc.h |  4 ++--
 2 files changed, 12 insertions(+), 13 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 1e2194fe06cb..dfe30913c76b 100644
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
@@ -2053,7 +2053,6 @@ static const struct of_device_id atmel_pmc_dt_ids[] = {
 	{ .compatible = "atmel,at91sam9g45-pmc" },
 	{ .compatible = "atmel,at91sam9rl-pmc" },
 	{ .compatible = "atmel,at91sam9x5-pmc" },
-	{ .compatible = "microchip,sam9x60-pmc" },
 	{ /* sentinel */ }
 };
 
@@ -2071,8 +2070,8 @@ static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
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
