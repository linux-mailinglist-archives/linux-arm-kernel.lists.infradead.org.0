Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D4B81A0DA5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 14:31:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OOnxdkjdglAeq9qNhOGkFP8RTBCkvXNmEjF4j/Ea3X8=; b=ixZ7dYA/Y+Hicm
	in4CMOpr8j4hYD5nKMAKOtzmSiPsd9JsaunfZqTuSDipZNiSCbkmHM/7vtAwC7xfoTTqImU0QinRf
	QoljE75pU3RvgiqaihieAWA+I3VfGxWltYvF8cX1fX8OvZ5sySAS1FWSMdFMLx7M4C7a5Fn2S46y4
	LbefO1eAcaykJwPDqknRwHlObXFX19bIo+k8QFRKpbJwbKDpTiIjvcH40YQINPLN4tUECeaHLYLzW
	lps+Zl5G74fxLB2tLgV4N0bNz5J9WcozDbSDEF5ITC/9BN0HqwFqfcuShu+FZTJiHYuAe1umgzm1D
	yVYx6o7AeGgZezNirXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLnNv-0002qr-BP; Tue, 07 Apr 2020 12:31:19 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLnMM-0007lX-NC
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 12:29:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586262582; x=1617798582;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=Ga/0SlfGS3qQ6nkqm0e0OaiYc62izyThJ4tbzNT9M+s=;
 b=A41iwzCULSPhVCWajU5H/XuNc0PxeLx+7hzvgFhen/YD5qQSXyh6S95v
 uk97/Ftq7uHuksIIDrqy6YSo22Obyy3WUBnZv6rKjKfUkU2uzzHohdvyq
 GmA3JtXFIOE8Q8Q7GoLI9kO75u2sWTcxsphq/Q/zWZRnURJCXBATPg2EB
 ULBVGpb+BFnaATA6QZ7vpTRE7yRb0NeRrXKsCN2OYxIkoCIaJnV8z+Yjp
 WcOugzfv4k9XaeFUdb2feZ7Ibl6GkS+6FrFud45sgCi2QBs3JeNflr6NU
 HuRjk/YnoApdXbkcvu+FRdvj/k7lHY6VIALqn/THeP52MM1lIDIC43ljy A==;
IronPort-SDR: 8v8xkZSTzVcSEVuDQc1ZmZqSTT0EpuN8LgWMoGsih4E9Wie2T0Z08eCCQT/vfUvuq9NqVJjvVW
 HBL3SJvggUSaYw07CIqOY8A4O/hZx7+m9Uws6R1xKbcxsVw4LS2iTftwErVR+f8Bsk7tT0vrFv
 0g+q93VGKmsqXw4FcM7iZQ22ued4qhDekcHO9M5GbkRxWRfDcA7G9AEc2P2fFo8sDeE7qDwess
 3F3eidGFE2gGblr+BShX8EZPt/J/McnDFm2+dosK6UAJr1Zl4H5oIqEcITtRgeJXIK6uTilIwI
 Utw=
X-IronPort-AV: E=Sophos;i="5.72,354,1580799600"; d="scan'208";a="75013431"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 07 Apr 2020 05:29:42 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 7 Apr 2020 05:29:53 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Tue, 7 Apr 2020 05:29:39 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH 4/7] usb: gadget: udc: atmel: simplify endpoint allocation
Date: Tue, 7 Apr 2020 15:28:49 +0300
Message-ID: <20200407122852.19422-5-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200407122852.19422-1-cristian.birsan@microchip.com>
References: <20200407122852.19422-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200407_052942_822698_6015D01E 
X-CRM114-Status: GOOD (  11.08  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
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

Simplify the endpoint allocation and cleanup the code.

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 21 ++++++++-------------
 drivers/usb/gadget/udc/atmel_usba_udc.h |  1 -
 2 files changed, 8 insertions(+), 14 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index c50902b91a96..7011438f91d6 100644
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
@@ -2096,7 +2092,6 @@ static struct usba_ep * atmel_udc_of_init(struct platform_device *pdev,
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
