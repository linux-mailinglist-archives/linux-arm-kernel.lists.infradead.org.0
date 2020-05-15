Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CBBA1D4C63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:18:46 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HpX6MiwSu1WEJ5xkLJHKdXw3yHL5J4HF14CmTTZLUlk=; b=klrKfDV0QSjdxn
	15xPbRRt96292tdUDggFQe7XoQAMvDZbVAxK3lKrdsW06ybuwLcI2oJRbC+V2kx3qF7pyGr2OSeeh
	UAYV6cbHO0rob0HZtiUzvyjfPlDxJsFkJParhwSziyc7OKqcU/W/hXWPZi9JLSxsl8bDILHXopT7b
	HWecAmwMcVHeDC+mYti7KhG1B14fKm4kC5rDe+8+u2l/PAoLfXR633B16nkzPDIwx2WJFsFY/T/yA
	NqDhAXIrZFPK4bh7Q/1oSDUSEkISyOP3ueKE4r+7wYA1l0KCM6CkF8a2aCbzdiYJrfnr0fFBmAdmy
	jBLcZdEsD164dmpmiQ/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYMO-0006xK-0w; Fri, 15 May 2020 11:18:36 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYKZ-0005Tm-P9
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:16:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589541403; x=1621077403;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=M8yQNnHZuVdT9r1/rS/M/SeMts6Jhu8mlf3UsJER9oM=;
 b=qlabrFSBbBXQCPb9TeEVcHWcvyyb1dzLmUHYSiXWw02rlqsHzKX/F5Vv
 XmqpIKIDDwWox9FAKmF9B34u+jczI2/VzHP0clzCsVHLg53rbA+r963OR
 GGe1BdLynwOT27MVdiZ0/twDA+VYJ6MsbTJEE62f/iMnxXFeakorTdr6/
 8f3kmruqeui7i0NlBbYXwoSLbfm2XG7sDcgOwHMVymxUvIYkaOmScHXk/
 ujf/rZTTEPoj5W3hXZllVLwLH3Z1RC1yk77JtvHygQpYTqWlKVvpRwl+O
 i94zi4DnSZ4BO9j1lbhPHHYG3AGIEtrvA+s37dx6VXC+CB4AEHnQJLptj A==;
IronPort-SDR: sxRN6AYyixy98jYK0pJgpAbKE0SS6Fq4rWaqrtp1X5uWuw7wugQBo9ITcaXDwvjShVQhh3PAjL
 aS7CX5Wlx/jlihLj3nnIcJlogL0NgUS6y2iN4bQGoVoHFwHZ5Z8Tx6pL13AUCg/EYCOobp9aMJ
 AJqeAp+34Qw4KFzokv6jYsDQjJGM6gowSfK85lzmyoS5p2QLP1Vfzhu9UziRbbx1EmVAhr/RB8
 1F4Lzdtm/DWizK5dptepd2kRxw9pkmUNXWVJtipleE/abtsZmKZ/5pTcKYGozFAxkA28YPUp/f
 zPU=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="79770140"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 04:16:42 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 04:16:42 -0700
Received: from cristi-P53.lan (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 15 May 2020 04:16:39 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 6/7] usb: gadget: udc: atmel: update endpoint allocation
 for sam9x60
Date: Fri, 15 May 2020 14:16:30 +0300
Message-ID: <20200515111631.31210-7-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515111631.31210-1-cristian.birsan@microchip.com>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041643_899046_2D6151CF 
X-CRM114-Status: GOOD (  11.60  )
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

The DPRAM memory from the USB High Speed Device Port (UDPHS) hardware
block was increased. This patch updates the endpoint allocation for sam9x60
to take advantage of this larger memory. At the same time the
constraint to allocate the endpoints in order was lifted. To handle old
and new hardware in the same driver the capabilities (caps) structure
was extended.

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 22 ++++++++++++++++++----
 drivers/usb/gadget/udc/atmel_usba_udc.h |  1 +
 2 files changed, 19 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 2b1a0b6df0fe..ecd0fa9823bb 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -1066,12 +1066,14 @@ static struct usb_ep *atmel_usba_match_ep(struct usb_gadget *gadget,
 
 		case USB_ENDPOINT_XFER_ISOC:
 			ep->fifo_size = 1024;
-			ep->nr_banks = 2;
+			if (ep->udc->caps->ep_prealloc)
+				ep->nr_banks = 2;
 			break;
 
 		case USB_ENDPOINT_XFER_BULK:
 			ep->fifo_size = 512;
-			ep->nr_banks = 1;
+			if (ep->udc->caps->ep_prealloc)
+				ep->nr_banks = 1;
 			break;
 
 		case USB_ENDPOINT_XFER_INT:
@@ -1081,7 +1083,8 @@ static struct usb_ep *atmel_usba_match_ep(struct usb_gadget *gadget,
 			else
 				ep->fifo_size =
 				    roundup_pow_of_two(le16_to_cpu(desc->wMaxPacketSize));
-			ep->nr_banks = 1;
+			if (ep->udc->caps->ep_prealloc)
+				ep->nr_banks = 1;
 			break;
 		}
 
@@ -2034,16 +2037,27 @@ static void at91sam9g45_pulse_bias(struct usba_udc *udc)
 
 static const struct usba_udc_caps at91sam9rl_caps = {
 	.toggle_bias = at91sam9rl_toggle_bias,
+	.ep_prealloc = true,
 };
 
 static const struct usba_udc_caps at91sam9g45_caps = {
 	.pulse_bias = at91sam9g45_pulse_bias,
+	.ep_prealloc = true,
+};
+
+static const struct usba_udc_caps sama5d3_caps = {
+	.ep_prealloc = true,
+};
+
+static const struct usba_udc_caps at91sam9x60_caps = {
+	.ep_prealloc = false,
 };
 
 static const struct of_device_id atmel_udc_dt_ids[] = {
 	{ .compatible = "atmel,at91sam9rl-udc", .data = &at91sam9rl_caps },
 	{ .compatible = "atmel,at91sam9g45-udc", .data = &at91sam9g45_caps },
-	{ .compatible = "atmel,sama5d3-udc" },
+	{ .compatible = "atmel,sama5d3-udc", .data = &sama5d3_caps },
+	{ .compatible = "microchip,sam9x60-udc", .data = &at91sam9x60_caps },
 	{ /* sentinel */ }
 };
 
diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.h b/drivers/usb/gadget/udc/atmel_usba_udc.h
index 1a0f77bf8d4f..f9239e200e7a 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.h
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.h
@@ -305,6 +305,7 @@ struct usba_request {
 struct usba_udc_caps {
 	void (*toggle_bias)(struct usba_udc *udc, int is_on);
 	void (*pulse_bias)(struct usba_udc *udc);
+	bool ep_prealloc;
 };
 
 struct usba_udc {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
