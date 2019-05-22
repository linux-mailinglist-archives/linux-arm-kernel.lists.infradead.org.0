Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 587A326372
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 14:08:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OnIcsxPdlbZL8lZtwzQr5gcOojCt+fVgHCTHatOpTQM=; b=K5MUbcvgTVClcF
	8MhA6XoOzSj9vf0gi0DrZEYbYYkPZF7MoDv8rWvTyWk3zjVOrDKwGzjo4nxIuddXOZG9XjtHvHi84
	Cf6tRMhH5/G+4DrV8qIZzOAij7AVb3qLXRIrn+gzzGImnG+NLqLpSr8L5Z+mgiZsnvKHS7szDkMvx
	BWXbA6DinCUNYG5nrk4vngx1YsfAPkSASgO/XCIoF927AFZ8AcNNzFOwXcdbrT9nfMPyVIckgrioy
	l6gDYkPhp22CN44kXkOxPlwBN1nNk0xJEjJvbF3N+DfcYzWDqktSyEs9qTFn1t6llUAcaNbubSvbf
	gvAlnUlv9yCjod7EWi1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTQ2N-00028m-Ua; Wed, 22 May 2019 12:08:03 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTQ2G-00028I-Eb
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 12:07:58 +0000
X-Originating-IP: 92.137.69.152
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 31F87E000A;
 Wed, 22 May 2019 12:07:45 +0000 (UTC)
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Felipe Balbi <balbi@kernel.org>, Vladimir Zapolskiy <vz@mleia.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] usb: gadget: udc: lpc32xx: allocate descriptor with
 GFP_ATOMIC
Date: Wed, 22 May 2019 14:07:36 +0200
Message-Id: <20190522120736.5521-1-alexandre.belloni@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_050756_636747_228A9735 
X-CRM114-Status: GOOD (  10.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 linux-arm-kernel@lists.infradead.org, James Grant <jamesg@zaltys.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Gadget drivers may queue request in interrupt context. This would lead to
a descriptor allocation in that context. In that case we would hit
BUG_ON(in_interrupt()) in __get_vm_area_node.

Also remove the unnecessary cast.

Tested-by: James Grant <jamesg@zaltys.org>
Signed-off-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
---

Changes in v2:
 - remove unnecessary cast as pointed by Joe Perches
 - Collected tested-by

 drivers/usb/gadget/udc/lpc32xx_udc.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index d8f1c60793ed..2719194ebf42 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -937,8 +937,7 @@ static struct lpc32xx_usbd_dd_gad *udc_dd_alloc(struct lpc32xx_udc *udc)
 	dma_addr_t			dma;
 	struct lpc32xx_usbd_dd_gad	*dd;
 
-	dd = (struct lpc32xx_usbd_dd_gad *) dma_pool_alloc(
-			udc->dd_cache, (GFP_KERNEL | GFP_DMA), &dma);
+	dd = dma_pool_alloc(udc->dd_cache, GFP_ATOMIC | GFP_DMA, &dma);
 	if (dd)
 		dd->this_dma = dma;
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
