Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46D841D4C60
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 13:18:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3FDR2Ul9waAA8yLAFBgcDq/5TshtSN9CANtwKC9QvrY=; b=ryiZeLe6ALQse2
	sbZOO0S8rsknlg8mgfLbJlN3/GzAkFgVydqI8N7KxmVklYwemJmKJNLIdeL5Fv5vnR+LbRpCVnbOX
	jV0O7nsTyqKCkaEdSh1ohewb5Q2rUu+xwmfhyTi+B/by0QKbYlYhTcyvnYxgxzhkHHR9//vlwil7u
	oOIjgSGpRqLfSAJ40SwTW0wCPdY8Jr728iIxxk01T3f0cC7r2lJBkaHmvqCZVCh6PWWOtPZob9iQl
	gC4ZlMDn7OoHT+LzaGMk8LpDa7vIFQGwa7tRtMuJhVNb3q5yAmxaTez46xPiKUpvedN+ZkJTKQxNl
	6JdDew9UYGZ6tNonHlJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZYLs-0006V3-9y; Fri, 15 May 2020 11:18:04 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZYKY-0005R1-Cy
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 11:16:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589541402; x=1621077402;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=fQTNhgyNE/Ii16r6bBKjezIrqfpVvQZb1l6/3n2gUnA=;
 b=iZhyEfiy9wdMXxThFzdVquAxvb2cmp3vFYTw1hNmVQ3HUpORwcw8pnwa
 837mq7s9gOqJVjSmmDBjcGpnu0FpuHnyCEddfCAGIwOlh/VJPbKCK8ucc
 t0zkmBc+OZ2KGV1KViI3o1zYS2ZYAY1o0BJ0i5sKZBDeAaO8KDdN1gqUA
 2feh2ykzMWMdDpm/JmKnb///JL+V5IPrBS5rhrld3pvA8N1sBlbw3Z6IJ
 d/BOFkppb5RKuGRfmFXdfru78mtYCK6FAwa4q21vSNmjkktV856y/jefz
 36L+Sa6WZZKUD6B9iYPZ+4YktUwFStaIV+fnE1c53CqzmDhuCgKFLnWpR Q==;
IronPort-SDR: cV8yZUQw+SbL/upJAS4T328t6SW/J4sycLqrzx7HejvDppIACraQhcL1eWJ7L+OBfbTEBSZzhR
 /YW36yGSBdkhlrtwEXjDdZETzTQKgODGkUg5VkEB25qSpRkRNaKwh3bwgiW4ei5h80XP4k8Ws6
 WthDcCIuyO2lYdzlw6srRJNlmrFMCmRoRcdJdq5vss9WDtwmtL9RQdB1suz4G5ZZYb/30CKpZ9
 cQq82JpG94m/YE6B1Qa7G1UJo8Yiqv5iAojuzGHwRFNSjsHQjUB3BURCJv8SzP8uGBKi1fc3FN
 Q1Q=
X-IronPort-AV: E=Sophos;i="5.73,395,1583218800"; d="scan'208";a="12492405"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 15 May 2020 04:16:36 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 15 May 2020 04:16:36 -0700
Received: from cristi-P53.lan (10.10.115.15) by chn-vm-ex01.mchp-main.com
 (10.10.85.143) with Microsoft SMTP Server id 15.1.1713.5 via Frontend
 Transport; Fri, 15 May 2020 04:16:33 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>, <robh+dt@kernel.org>,
 <mark.rutland@arm.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <devicetree@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH v2 4/7] usb: gadget: udc: atmel: use 1 bank endpoints for
 control transfers
Date: Fri, 15 May 2020 14:16:28 +0300
Message-ID: <20200515111631.31210-5-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515111631.31210-1-cristian.birsan@microchip.com>
References: <20200515111631.31210-1-cristian.birsan@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_041642_515606_F86266D2 
X-CRM114-Status: UNSURE (   7.53  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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

Use 1 bank endpoints for control transfers

Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index beb7246935a8..a73b0e78a357 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -1061,6 +1061,7 @@ static struct usb_ep *atmel_usba_match_ep(struct usb_gadget *gadget,
 
 		switch (usb_endpoint_type(desc)) {
 		case USB_ENDPOINT_XFER_CONTROL:
+			ep->nr_banks = 1;
 			break;
 
 		case USB_ENDPOINT_XFER_ISOC:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
