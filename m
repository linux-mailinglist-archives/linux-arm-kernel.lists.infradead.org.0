Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 083531FE2D6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 04:05:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cFlPtJuqQl6rD3Wx96id9UZDs2/qoO+UMyF7GT2NmfQ=; b=NLfcnXpkEGvQAo
	9H3l8qr878c4mQ2xKF6AECtsddVOfwEi0TEA17p8UEs7+V+ugnpKaDYjhhtLpLBMg382TQtqB9Rmt
	59q3Ro++tLNY+gqDiFMJezQ+hfU/4LavgJLPgCaz9b08pht3aFm8G+i5skfdyWqllzgyr0KwO7/FE
	s9TWspD638v35LugmGZQ6YJCHUE0uh9TZ6XLFuUzff0BWcHR44p+jKc+9UB4WZInDFAJQ4ON00wKB
	6RiWcAFe6MRMzgmnQoED7R/DbH2WTf1WFs1DhvDEkRBF88DxNVAKoS7ccW4M7w9go3XziqVdRHsKD
	5gDZFFhGCa7W6QRaDMNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljv6-0002Ha-Dp; Thu, 18 Jun 2020 02:04:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljN5-00069O-Ln
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:29:45 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 03EC022244;
 Thu, 18 Jun 2020 01:29:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443778;
 bh=Flrymzj7xKoNR3ii4S2WrF0gCIeQgYf6yrjx/q00FdQ=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=JBGGqDgPVDYoJDZXsqObK76ZMwJsUbBVlYmZd1KkX7JoMu+bWcnPG+av/6ysSJp//
 sxi43YdDaaSMKCb0/DyD3ILu04ACI4PQMFqcmskqVB9zZ0fn67U/uf0IxHItPeCDvx
 G7rBgl1HLQNXt7WbEGMr1fKDx4xoLqIwUli0vjtw=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.9 61/80] usb: gadget: lpc32xx_udc: don't dereference
 ep pointer before null check
Date: Wed, 17 Jun 2020 21:28:00 -0400
Message-Id: <20200618012819.609778-61-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012819.609778-1-sashal@kernel.org>
References: <20200618012819.609778-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_182939_866856_CF699411 
X-CRM114-Status: GOOD (  11.33  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Sasha Levin <sashal@kernel.org>, Colin Ian King <colin.king@canonical.com>,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Felipe Balbi <balbi@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

[ Upstream commit eafa80041645cd7604c4357b1a0cd4a3c81f2227 ]

Currently pointer ep is being dereferenced before it is null checked
leading to a null pointer dereference issue.  Fix this by only assigning
pointer udc once ep is known to be not null.  Also remove a debug
message that requires a valid udc which may not be possible at that
point.

Addresses-Coverity: ("Dereference before null check")
Fixes: 24a28e428351 ("USB: gadget driver for LPC32xx")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
Signed-off-by: Felipe Balbi <balbi@kernel.org>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 drivers/usb/gadget/udc/lpc32xx_udc.c | 11 ++++++-----
 1 file changed, 6 insertions(+), 5 deletions(-)

diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index ac2aa04ca657..710793161795 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -1615,17 +1615,17 @@ static int lpc32xx_ep_enable(struct usb_ep *_ep,
 			     const struct usb_endpoint_descriptor *desc)
 {
 	struct lpc32xx_ep *ep = container_of(_ep, struct lpc32xx_ep, ep);
-	struct lpc32xx_udc *udc = ep->udc;
+	struct lpc32xx_udc *udc;
 	u16 maxpacket;
 	u32 tmp;
 	unsigned long flags;
 
 	/* Verify EP data */
 	if ((!_ep) || (!ep) || (!desc) ||
-	    (desc->bDescriptorType != USB_DT_ENDPOINT)) {
-		dev_dbg(udc->dev, "bad ep or descriptor\n");
+	    (desc->bDescriptorType != USB_DT_ENDPOINT))
 		return -EINVAL;
-	}
+
+	udc = ep->udc;
 	maxpacket = usb_endpoint_maxp(desc);
 	if ((maxpacket == 0) || (maxpacket > ep->maxpacket)) {
 		dev_dbg(udc->dev, "bad ep descriptor's packet size\n");
@@ -1873,7 +1873,7 @@ static int lpc32xx_ep_dequeue(struct usb_ep *_ep, struct usb_request *_req)
 static int lpc32xx_ep_set_halt(struct usb_ep *_ep, int value)
 {
 	struct lpc32xx_ep *ep = container_of(_ep, struct lpc32xx_ep, ep);
-	struct lpc32xx_udc *udc = ep->udc;
+	struct lpc32xx_udc *udc;
 	unsigned long flags;
 
 	if ((!ep) || (ep->hwep_num <= 1))
@@ -1883,6 +1883,7 @@ static int lpc32xx_ep_set_halt(struct usb_ep *_ep, int value)
 	if (ep->is_in)
 		return -EAGAIN;
 
+	udc = ep->udc;
 	spin_lock_irqsave(&udc->lock, flags);
 
 	if (value == 1) {
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
