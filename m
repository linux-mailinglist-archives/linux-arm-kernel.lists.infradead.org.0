Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B274B1A462D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 14:15:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8+f8N7QcCZv4kwGO0+0b9ymLOg3qZGPjkDx1q8K5E28=; b=qdPHeug7leUXWo
	3ek8bvqY+d31/Q8eaeJbZH6ZXvu2vj7IbPrIjgxCs3EZ/uwFECGbTOdv7J9pIlA9QI7Et+wcIIG3y
	3/yW3yS4i/PadOvAQVeuboOcC35T+QwPa2HMc8N1H6+TJqp+QfwdSPh7FqI+4oYrAvdQFKpPT4q90
	qeQPLFl9PNdMGcO01PnDTYbshpyUDUt53rHuroSxEc1khvNewmnifodXCxwHoSAdyKjykpCMDmCV6
	9GvTsYn24d7CJJeG+BFtjCIfM8O8uRkCFyDz1PtQQsIOZJhmtwl0MuHmav76YRiG9E0fUoz7qojv9
	EVYZ6BbVel4N1LpiXSlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMsZ3-0007mD-3i; Fri, 10 Apr 2020 12:15:17 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMsYs-0006SQ-I4
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 12:15:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586520906; x=1618056906;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=m3FWoK6Y8xDM6L0eq8fCEFhglfBFC6g0jRlmV8SpRiU=;
 b=q/DFYMJxnMroKfppD8ISXY5UxEIhGRnVG1F1u+40DxwlGDVK9XXn7tzL
 AqRwF6fCccehz0+5faoJlfw9ZpkHIfYfQMLzTXLkjdY3icLapb0iTrcec
 QdKss2T0eFqKiOQM93v1XDi+qxDZDPAkpWc0SEaOMkBpzC0fV3hQXNrNi
 i51dRaMwbM+HmOIcTzlcyqOYI0F6IL5oULQb7uClzDHHdsjZVGQg0e4Vv
 ZzrVMbyxoIsgyzS9dR7UPzll2DIXrZPfwgoMJKUAu+ZkChExeC0qaHt2+
 0zXrC0mK/3JOiV0XYIj0ZpY8UBe4AbRBwDc3qgSB+Uajv8JowUypM/Wiw Q==;
IronPort-SDR: +QBiI5KtTx7JSKCxD7BcPwmhf/jbu/DMnznp8zok4NxcHFGSENic4IlEYzGNmYi7LSH3pINaU6
 M1CZ6kcXFblX7IUucXlW6XZX69nJ+eX26TnwsRQcd4rxTV1e7TYsYjwPJRZw46+Eoj/ZLF+U/V
 1iRnNnbuhxiaKEl9bx0i6TOLdfIV3ZsmCTE9tBOWrTGWYjtZLkUQTzi6EKzRnCyLIYx8wU69A0
 D7BT8CJx766PTvWrZY87oGwqzgFBIkSAvnLvLzpl/oWphgkmBwON0K83FzWrWYhKNhzR8RSNVb
 67g=
X-IronPort-AV: E=Sophos;i="5.72,366,1580799600"; d="scan'208";a="75482373"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 05:15:02 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 05:14:57 -0700
Received: from cristi-P53.amer.actel.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 05:15:00 -0700
From: <cristian.birsan@microchip.com>
To: <balbi@kernel.org>, <gregkh@linuxfoundation.org>,
 <nicolas.ferre@microchip.com>, <linux-arm-kernel@lists.infradead.org>,
 <linux-usb@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: [PATCH] usb: gadget: udc: atmel: Fix vbus disconnect handling
Date: Fri, 10 Apr 2020 15:14:52 +0300
Message-ID: <20200410121452.17642-1-cristian.birsan@microchip.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_051506_649184_D9EB6F21 
X-CRM114-Status: UNSURE (   8.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

A DMA transfer can be in progress while vbus is lost due to a cable
disconnect. For endpoints that use DMA, this condition can lead to
peripheral hang. The patch ensures that endpoints are disabled before
the clocks are stopped to prevent this issue.

Fixes: a64ef71ddc13 ("usb: gadget: atmel_usba_udc: condition clocks to vbus state")
Signed-off-by: Cristian Birsan <cristian.birsan@microchip.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 6e0432141c40..22200341c8ec 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -1951,10 +1951,10 @@ static irqreturn_t usba_vbus_irq_thread(int irq, void *devid)
 			usba_start(udc);
 		} else {
 			udc->suspended = false;
-			usba_stop(udc);
-
 			if (udc->driver->disconnect)
 				udc->driver->disconnect(&udc->gadget);
+
+			usba_stop(udc);
 		}
 		udc->vbus_prev = vbus;
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
