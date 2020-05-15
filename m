Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 394B71D4C5D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:17:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=chr+OOCgW0aWtE8A4aSoGUWerQ0IvZwx63CHytUNMu8=; b=MgmKEDUXAj9yXJ
	ZdsVKua1llma6+new8oNoVYHrwspCzvimQwulE85PNIJgDzXQW030ORCHtrKMaNjhLChdVT3zmiYe
	zVSjkhIZ0cXbcBl7157Nd1L85q1STVQjwDh7DVG3msY9WsmmscxQfgm+jPQMNPUjyjkyUxrUpF6H3
	NAE4U4RO2zi6vaRbp8UjtbQIwJdnEuz7L2l6EtqSQLZaOllRLs+jTKQgFRE0WcnWgKTn7lxipdueI
	7Cbsv5EN0THKqfmrqaAL2Yyrzg3PPJIxEzxzgTGYSeUxE84ojmbTYKIusb2eEL/rx344HudY2QW+6
	jJxJ7J1z9r1M9gNGNqwg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYLA-0005lI-Bo; Fri, 15 May 2020 11:17:20 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYKP-0005F7-UF
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:16:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589541393; x=1621077393;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=48f8UXh3qWiOzkNfswTmXKjjifYhI2PibhsXx6ECPRU=;
 b=LOjn+kJQ2trfXQbdZ1z95eltyKpOlWhunCm5TXcnosMCQfviwWnqs190
 rI3MLmlRKztegAj8SQpCpHJf3kko5IcOTV3TU4BVFgbWDiLf7jaiEsIi4
 5fCjRSHDSyd197SHcAEfJcAUMs1j9hIUqEbYzwv/JTZ7hinuLbkiQMHP+
 JZwN6qZvnIyJO3G8bu1hMSkr4R3c3uf9Eaj0PLptyltoU33zsC96RmCjh
 kaWRleX6MNcSoBsPibQ7RiAa1LFg/H0Dio3MMJmeqDxGeQcgHlEF/JXTU
 WzP16IjqC49b1ZH3Hok7YdLi22I4k0CMnQns2V7y3w72NDrrO+BLzjh/V Q==;
IronPort-SDR: WtV8k9mwn9EwVgbTjvZiooWtrdOfPcQ1xYy4NVnm/GLtBuQ1JnJVWSM6LBHFYjqP2zqPS9gVJQ
 CYARsmsJFeTSiy16Ei/T7fGRnIMK/5uzTW+BFrE9m+Pbe60b1PsOit58o6HCvrYGLBwIn9Iasd
 8t/+C9/ScTjPIk0DKRS419A5C7proO5THHFLppNpF/d63c/FlwZVctmOFXwzq69t81+y+MlWsc
 8meFew2h6dOzgnlBm0JpcPkGujRIiBVj8x4uxJCnZmnT+VzJFZdOHVSmZHuW07wCRQ0agNWQxI
 /PM=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="73566887"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 04:16:33 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 04:16:33 -0700
Received: from cristi-P53.lan (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 15 May 2020 04:16:30 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 3/7] usb: gadget: udc: atmel: simplify endpoint allocation
Date: Fri, 15 May 2020 14:16:27 +0300
Message-ID: <20200515111631.31210-4-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515111631.31210-1-cristian.birsan@microchip.com>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041634_051156_357ECF17 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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

Simplify the endpoint allocation and cleanup the code.

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 21 ++++++++-------------
 drivers/usb/gadget/udc/atmel_usba_udc.h |  1 -
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 2b154085dc6a..beb7246935a8 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -1097,7 +1097,6 @@ static struct usb_ep *atmel_usba_match_ep(struct usb_gadget *gadget,
 
 		ep->ept_cfg |= USBA_BF(BK_NUMBER, ep->nr_banks);
 
-		ep->udc->configured_ep++;
 	}
 
 	return _ep;
@@ -1790,7 +1789,7 @@ static irqreturn_t usba_udc_irq(int irq, void *devid)
 
 	if (status & USBA_END_OF_RESET) {
 		struct usba_ep *ep0, *ep;
-		int i, n;
+		int i;
 
 		usba_writel(udc, INT_CLR,
 			USBA_END_OF_RESET|USBA_END_OF_RESUME
@@ -1838,13 +1837,14 @@ static irqreturn_t usba_udc_irq(int irq, void *devid)
 				"ODD: EP0 configuration is invalid!\n");
 
 		/* Preallocate other endpoints */
-		n = fifo_mode ? udc->num_ep : udc->configured_ep;
-		for (i = 1; i < n; i++) {
+		for (i = 1; i < udc->num_ep; i++) {
 			ep = &udc->usba_ep[i];
-			usba_ep_writel(ep, CFG, ep->ept_cfg);
-			if (!(usba_ep_readl(ep, CFG) & USBA_EPT_MAPPED))
-				dev_err(&udc->pdev->dev,
-					"ODD: EP%d configuration is invalid!\n", i);
+			if (ep->ep.claimed) {
+				usba_ep_writel(ep, CFG, ep->ept_cfg);
+				if (!(usba_ep_readl(ep, CFG) & USBA_EPT_MAPPED))
+					dev_err(&udc->pdev->dev,
+						"ODD: EP%d configuration is invalid!\n", i);
+			}
 		}
 	}
 
@@ -2011,10 +2011,6 @@ static int atmel_usba_stop(struct usb_gadget *gadget)
 	if (udc->vbus_pin)
 		disable_irq(gpiod_to_irq(udc->vbus_pin));
 
-	if (fifo_mode == 0)
-		udc->configured_ep = 1;
-
-	udc->suspended = false;
 	usba_stop(udc);
 
 	udc->driver = NULL;
@@ -2095,7 +2091,6 @@ static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
 		pp = NULL;
 		while ((pp = of_get_next_child(np, pp)))
 			udc->num_ep++;
-		udc->configured_ep = 1;
 	} else {
 		udc->num_ep = usba_config_fifo_table(udc);
 	}
diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.h b/drivers/usb/gadget/udc/atmel_usba_udc.h
index a0225e4543d4..8de79356d31d 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.h
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.h
@@ -324,7 +324,6 @@ struct usba_udc {
 	int irq;
 	struct gpio_desc *vbus_pin;
 	int num_ep;
-	int configured_ep;
 	struct usba_fifo_cfg *fifo_cfg;
 	struct clk *pclk;
 	struct clk *hclk;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
