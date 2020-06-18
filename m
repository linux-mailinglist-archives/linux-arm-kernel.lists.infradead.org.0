Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D21D1FE1CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 03:57:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jgzYXSWwa+xAlhCVJF9gKyshfMxx9dTRWBZ1OOwAlaA=; b=I3Eictu6jQF4EX
	QkRZ7Vek6H17u5b69761aDvuT5eVSru3DvwNkoaMzn/me4o24Gv9tQJe1GRC+GG5SAht2adZ6f9ED
	UW/Sc7NicfzIO8VWHVq8FxCc5p3h4zt1uCTYnUQW39e2VFWxaSVmiVIXHwzyQk2gMeqqcyC2qk8nL
	DKSj8Ettl8ODlJiq8/6US8C+3OrCsD61Lut+o3ikfSpDWJW0CQ1WHcljnMkpX4E9y/SOjXBXdh+7d
	S4ph8xJVjsr2HXDlwunAnQBTX4FEOrAFCYqTPx+dk20RklqeyVVnMeVT+MfoWd3/jToZ/zzpwdzkf
	E7h2JgRmssX0IQ1ega3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jljns-0001vX-IA; Thu, 18 Jun 2020 01:57:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jljIM-0007tF-U3
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 01:24:49 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3ED4821D80;
 Thu, 18 Jun 2020 01:24:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592443486;
 bh=9NemLycXmThsbq6xQcVcZBi0l9mfc0C48gQ48bdlE8g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=eeB8wZd4Sn97EtiaZVTh3Tb2fLGTr8iPmzJ3L2vTkbjFo2wOxT1FcsrJYc+JICVZr
 9G9V1jZGojOOnmTWaAvs8XLaNDFrZu/Jv4NNkvaiOtk8nn8vN/k/XWnobponv5L7gx
 9ztxwXzpq/uBOSVzNsmEp05rzEzeFsTlA45eVy7Q=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 4.19 114/172] usb: gadget: lpc32xx_udc: don't
 dereference ep pointer before null check
Date: Wed, 17 Jun 2020 21:21:20 -0400
Message-Id: <20200618012218.607130-114-sashal@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200618012218.607130-1-sashal@kernel.org>
References: <20200618012218.607130-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_182447_135096_EA21F866 
X-CRM114-Status: GOOD (  11.43  )
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
index 21921db068f6..cf56819f16e4 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -1602,17 +1602,17 @@ static int lpc32xx_ep_enable(struct usb_ep *_ep,
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
@@ -1860,7 +1860,7 @@ static int lpc32xx_ep_dequeue(struct usb_ep *_ep, struct usb_request *_req)
 static int lpc32xx_ep_set_halt(struct usb_ep *_ep, int value)
 {
 	struct lpc32xx_ep *ep = container_of(_ep, struct lpc32xx_ep, ep);
-	struct lpc32xx_udc *udc = ep->udc;
+	struct lpc32xx_udc *udc;
 	unsigned long flags;
 
 	if ((!ep) || (ep->hwep_num <= 1))
@@ -1870,6 +1870,7 @@ static int lpc32xx_ep_set_halt(struct usb_ep *_ep, int value)
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
