Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A4EF6BBE
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 23:14:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=N1PzVjOaS9eWmwPSn0ZHB34hwkpyQq4ItqZ8/zXzwVM=; b=IN6Dw0Q6V5L+eB
	qk+ItOH23OgePWJsyomTYkKTqw+WOvSEqNr39mx4RCCSy4yHDxVH6KVaAP/GoCfLmnbdCsyW6k0vT
	ospeiS575JggY5/kGDpAJ23DfPVE1mh34vIrv66gIQ34CN1lfulaYGjs16mjqf32oo/BGT4oSBnbu
	sTHTkBh7y5lLjL+KI5f2H7JsZdC37d7H0UykyF7d+fRHuOoTaNTBW8Gy/iJ/XtKq91/on5NJI3WlP
	GzqwzbyOcHiSkfHd7KwFLJVnfegunkyk/wTiQI54dlbNneDyHJF1niqkU8V62SieO5/Xbo7IkLyVh
	uzvtvKTxF3+JMly0bJaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTvTY-00021y-4o; Sun, 10 Nov 2019 22:14:28 +0000
Received: from youngberry.canonical.com ([91.189.89.112])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTvTQ-00021G-EP
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 22:14:21 +0000
Received: from 1.general.cking.uk.vpn ([10.172.193.212] helo=localhost)
 by youngberry.canonical.com with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.86_2)
 (envelope-from <colin.king@canonical.com>)
 id 1iTvTJ-0004Ra-IT; Sun, 10 Nov 2019 22:14:13 +0000
From: Colin King <colin.king@canonical.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Roland Stigge <stigge@antcom.de>, Arnd Bergmann <arnd@arndb.de>,
 linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] usb: gadget: udc: lpc32xx: don't dereference ep until it has
 been null checked
Date: Sun, 10 Nov 2019 22:14:13 +0000
Message-Id: <20191110221413.22321-1-colin.king@canonical.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_141420_617390_9043E55A 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [91.189.89.112 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Colin Ian King <colin.king@canonical.com>

The pointer ep is currently being dereferenced when initializing pointer
udc before ep is being null checked.  Fix this by only dereferencing
ep after it has been null checked.

Addresses-Coverity: ("Dereference before null check")
Fixes: 24a28e428351 ("USB: gadget driver for LPC32xx")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/usb/gadget/udc/lpc32xx_udc.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index d14b2bb3f67c..45b2a673ecba 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -1872,7 +1872,7 @@ static int lpc32xx_ep_dequeue(struct usb_ep *_ep, struct usb_request *_req)
 static int lpc32xx_ep_set_halt(struct usb_ep *_ep, int value)
 {
 	struct lpc32xx_ep *ep = container_of(_ep, struct lpc32xx_ep, ep);
-	struct lpc32xx_udc *udc = ep->udc;
+	struct lpc32xx_udc *udc;
 	unsigned long flags;
 
 	if ((!ep) || (ep->hwep_num <= 1))
@@ -1882,6 +1882,7 @@ static int lpc32xx_ep_set_halt(struct usb_ep *_ep, int value)
 	if (ep->is_in)
 		return -EAGAIN;
 
+	udc = ep->udc;
 	spin_lock_irqsave(&udc->lock, flags);
 
 	if (value == 1) {
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
