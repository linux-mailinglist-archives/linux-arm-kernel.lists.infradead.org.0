Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34EC982507
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 20:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fD3+fDDFcEKxpC/LYuxBInQpUK+qXGepE9/ld3wXZYc=; b=QH4UMY0Bn9j1pt
	dqXfZU4FR/009Qkm6Fa7EKKFrRiRckd/TW2UsrChyUDzNZ5XMVO8KBgfZbA/NgJMvm9WlC+eHQt3V
	LfiniWqSue6cK8tuHaxsFu9krQinUGPvBKxZlcfkybE5Q/WvX0vIOL5mkUDQKN46BEGqsg2WHPMXF
	cL3AtuzDGZRiIs1s6RaU8+kBl3hi+BrhxIcnIlgbTi0YvwsDq8zrBglFkQ70lmF0gttjqNNEgPaHU
	oUFt39+OmVDbgbZ5+0YP9aDnAhuBH8jzP/SYBHh62FRffGnSttDfuRQIe2NCG0zuUasWmrk0t+a6X
	5uDmCDqXOkgraRhgfC0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hui2d-0006mm-56; Mon, 05 Aug 2019 18:49:07 +0000
Received: from gateway21.websitewelcome.com ([192.185.45.210])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hui2T-0006mE-7f
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 18:48:58 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway21.websitewelcome.com (Postfix) with ESMTP id 13492400D0B19
 for <linux-arm-kernel@lists.infradead.org>;
 Mon,  5 Aug 2019 13:48:45 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id ui2GhaKBD2PzOui2GheI7p; Mon, 05 Aug 2019 13:48:45 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ZmIHx3XJdBaj7RV/vprnPWvpQjhw5au5H8dBkUDrmrs=; b=pEWHySVGZdwEQCJOFLM85qeI43
 oVziUhmZKzQ7l8EwanqLkBnE9dI9SRdvXqVG57KsXoGW4VXuACI7MNjh8eOsIlpP+KZQBxq5BJ2uy
 NiFTNGtExkxVOgaP/B29A7bFDsboYbrT64GubvieaUxil0LbDBTolT/aIJT3h5vjNi4SkB0ZjzQZ2
 n+f5N9NEvypwPfkKJ30n3ijiYXv3hhdJcEQHvjVH8KEqOcUgTLg1Zd5oHhnT8QYuxrhtlY9G4CTbF
 laka7sJP/Y+JJNVJJjZF3udsKIWoJgj5jrp665PYmEDnxAIxBUxwV8C86zdPduJ8c9uLkGf2xJIxR
 RyZWXYCg==;
Received: from [187.192.11.120] (port=37266 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1hui2F-002sVJ-Lx; Mon, 05 Aug 2019 13:48:43 -0500
Date: Mon, 5 Aug 2019 13:48:42 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Cristian Birsan <cristian.birsan@microchip.com>,
 Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Ludovic Desroches <ludovic.desroches@microchip.com>
Subject: [PATCH] usb: gadget: atmel_usba_udc: Mark expected switch fall-through
Message-ID: <20190805184842.GA8627@embeddedor>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)
X-AntiAbuse: This header was added to track abuse,
 please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - lists.infradead.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.192.11.120
X-Source-L: No
X-Exim-ID: 1hui2F-002sVJ-Lx
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.11.120]:37266
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 7
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_114857_319638_D5786082 
X-CRM114-Status: UNSURE (   7.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.45.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Mark switch cases where we are expecting to fall through.

This patch fixes the following warning (Building: at91_dt_defconfig arm):

drivers/usb/gadget/udc/atmel_usba_udc.c:329:13: warning: this statement may fall through [-Wimplicit-fallthrough=]

Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/usb/gadget/udc/atmel_usba_udc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/gadget/udc/atmel_usba_udc.c b/drivers/usb/gadget/udc/atmel_usba_udc.c
index 503d275bc4c4..86ffc8307864 100644
--- a/drivers/usb/gadget/udc/atmel_usba_udc.c
+++ b/drivers/usb/gadget/udc/atmel_usba_udc.c
@@ -327,6 +327,7 @@ static int usba_config_fifo_table(struct usba_udc *udc)
 	switch (fifo_mode) {
 	default:
 		fifo_mode = 0;
+		/* fall through */
 	case 0:
 		udc->fifo_cfg = NULL;
 		n = 0;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
