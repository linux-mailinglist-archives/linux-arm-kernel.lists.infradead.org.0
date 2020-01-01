Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2E1212DE2C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 09:20:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=MHUhRssci14lfUAkEOb9vdw/aRHvoVIU2uFqnf3LyyM=; b=ne45a4j3fBarel9ZMd8jku2CHg
	qUQVtlDVmvNWTvcJJHIgMSaWePmtFyu9dXBroJCwa+S3G7xZMVaf+HlvF2tr7r/e7cIxj6OyIuEQA
	GV2SK3F2IDhaJMNYSVKfDwcYRYJYg8DEFUduB9AG3u6nJCDcQBdZaLnntUuvHvhCu9hQ0G/D8wQNT
	OSHfjEnU60bgvb8Xvt9y4CHBofi7cJOO0DEf8tI1draOisZpnFmPbL5OpvAXMQ/U9lLzb54BWC8JH
	U9i4Yd8MvFJng7/xb1lHHbO/bYm7mhkfOhUu+REGNNrU+KI1y8I1LDR2+GLQUQp1X+3CMHSZaMOYh
	tNxNID1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imZF8-0002BU-8O; Wed, 01 Jan 2020 08:20:38 +0000
Received: from mail2-relais-roc.national.inria.fr ([192.134.164.83])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imZEp-0000pj-R3
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 08:20:21 +0000
X-IronPort-AV: E=Sophos;i="5.69,382,1571695200"; d="scan'208";a="429578753"
Received: from palace.rsr.lip6.fr (HELO palace.lip6.fr) ([132.227.105.202])
 by mail2-relais-roc.national.inria.fr with ESMTP/TLS/AES128-SHA256;
 01 Jan 2020 09:20:08 +0100
From: Julia Lawall <Julia.Lawall@inria.fr>
To: Cristian Birsan <cristian.birsan@microchip.com>
Subject: [PATCH 04/16] usb: gadget: udc: atmel: constify copied structure
Date: Wed,  1 Jan 2020 08:43:22 +0100
Message-Id: <1577864614-5543-5-git-send-email-Julia.Lawall@inria.fr>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1577864614-5543-1-git-send-email-Julia.Lawall@inria.fr>
References: <1577864614-5543-1-git-send-email-Julia.Lawall@inria.fr>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_002020_149160_8A32A692 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [192.134.164.83 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The usba_gadget_template structure is only copied into another
structure, so make it const.

The opportunity for this change was found using Coccinelle.

Signed-off-by: Julia Lawall <Julia.Lawall@inria.fr>

---
 drivers/usb/gadget/udc/atmel_usba_udc.c |    2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 8a42768e3213..6e0432141c40 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -1122,7 +1122,7 @@ static struct usb_endpoint_descriptor usba_ep0_desc = {
 	.bInterval = 1,
 };
 
-static struct usb_gadget usba_gadget_template = {
+static const struct usb_gadget usba_gadget_template = {
 	.ops		= &usba_udc_ops,
 	.max_speed	= USB_SPEED_HIGH,
 	.name		= "atmel_usba_udc",


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
