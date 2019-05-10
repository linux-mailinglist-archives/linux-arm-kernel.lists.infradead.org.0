Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C98019D64
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 May 2019 14:44:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=2H18ALtVOplHfOw96yOmhG2dF96ujNdPTJuHxoLMLLE=; b=qGYMhCI9ZD4Agy
	YnKCvJg5E9JV2Iwpl+ZLPJ6I3Y7rcvM4V3N8HXEdCOMGIPp6LbV3D8ua+cLwUUOZ/LU3jkTw9fQzV
	WeIn3aX5U0i3VF7gyayz0kBwTNyvVzzSlReMsbrKP2EKj4PisREJD1p9ruvgKU81zsQrhahVBhaLv
	ksW90lrgelm2GaaxxWGaZbMzBR3xCk6ci40a0M34ivtQfkeg8eldm53PPI6UQHKFn0WuH6to1K/W8
	5ijl64zIAW2qzzOwkppcKf/Kb8fMdzhl50nsmWuwVTdomLFb3ewFG0k4xpUikDwPiMZahgQpKwAII
	BU+qG6FsMwtD6Xz8HyyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hP4sV-0007Gy-1c; Fri, 10 May 2019 12:43:55 +0000
Received: from relay9-d.mail.gandi.net ([217.70.183.199])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hP4sN-0007GF-F3
 for linux-arm-kernel@lists.infradead.org; Fri, 10 May 2019 12:43:48 +0000
X-Originating-IP: 109.213.220.252
Received: from localhost (alyon-652-1-77-252.w109-213.abo.wanadoo.fr
 [109.213.220.252])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id 6E4DEFF80B;
 Fri, 10 May 2019 12:43:33 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Felipe Balbi <balbi@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] usb: gadget: udc: lpc32xx: allocate descriptor with GFP_ATOMIC
Date: Fri, 10 May 2019 14:42:48 +0200
Message-Id: <20190510124248.2430-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190510_054347_653671_134C47AF 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.199 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 James Grant <james.grant@jci.com>, Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gadget drivers may queue request in interrupt context. This would lead to
a descriptor allocation in that context. In that case we would hit
BUG_ON(in_interrupt()) in __get_vm_area_node.

Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---
 drivers/usb/gadget/udc/lpc32xx_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index d8f1c60793ed..b706d9c85a35 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -938,7 +938,7 @@ static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(struct lpc32xx_udc *udc)
 	struct lpc32xx_usbd_dd_gad	*dd;
 
 	dd = (struct lpc32xx_usbd_dd_gad *) dma_pool_alloc(
-			udc->dd_cache, (GFP_KERNEL | GFP_DMA), &dma);
+			udc->dd_cache, (GFP_ATOMIC | GFP_DMA), &dma);
 	if (dd)
 		dd->this_dma = dma;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
