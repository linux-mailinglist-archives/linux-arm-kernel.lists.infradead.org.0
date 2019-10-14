Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E42D6A00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 21:19:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=aXXmuzkfYFULcsaOQar0WQ6r0yx7VBer3avi29JUm5M=; b=nc9/8aAwAW+YAw
	4TrV0yhIFjP5p2MvHjC0BF52OYSl9uQCBI6iMZfYHodJ1V3gelHOa1wPFjHNA9DzId3RNuK6ac5th
	YWjUZHUNkYnHXBpjDGG7BaHdtfGcrNRWBvL1o1ZVx9yBNw6guOVPws84oUKs6MSyEmT1NkeTUwcTd
	iMlVKOcj8fxm4opbZ13Bq3jVuQXDHBZ+BlQAjL9TGQ2dfSoKm6OAoPEcTmYRp78ZOABAD2F+1/NBL
	KrfcK3ObQZGZOtrpsQas+4bEjOZru34F7TqzjUqT6bANbsLzAPSUktcoGH+mozy2mKX4DfXKv20u3
	s80qOGt2FqnTGBV4+yqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK5sC-0006Gz-Se; Mon, 14 Oct 2019 19:19:16 +0000
Received: from gateway34.websitewelcome.com ([192.185.149.101])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK5s3-0006G0-DZ
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 19:19:08 +0000
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
 by gateway34.websitewelcome.com (Postfix) with ESMTP id 5A20D11EDD97
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 14:18:53 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22]) by cmsmtp with SMTP
 id K5roi1thgHunhK5roiflJJ; Mon, 14 Oct 2019 14:18:53 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=embeddedor.com; s=default; h=Content-Type:MIME-Version:Message-ID:Subject:
 Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Z6hy7j2bf2J0P83dPxoUJpQb5DqOP18QhotJKCAr1Fk=; b=T+ZcWALctqO2RNH+PdtNf3wdXf
 xxQgqYhkamefp5TT7wBcrfhixu+fVcq+nWT3UGYiz9SXenkq8HXJdIbENEk7rb3aO6vbUhf3FQEUD
 3lho4t1+FKXgfExwK3Sa8WOLN+lHYRy9JW0rusqrsypXCnDr85+YlMQrgLPSZGeQm7dglGByDvSwu
 CNie5O6UWiNqGYUQdItd/UAgmCW+jxofPvvcoR4FrCDdxS7qdIQw3WMHzBJiSBxvppEe05VZXqGeI
 hVkmz3Y0QhmmNNG7XVU9Tl5siVzjJQ65elzEAg+anzaXbUjns60laMlVoq9zvajdpAZF092P8/yWp
 xk7s8JqQ==;
Received: from [187.192.22.73] (port=54766 helo=embeddedor)
 by gator4166.hostgator.com with esmtpa (Exim 4.92)
 (envelope-from <gustavo@embeddedor.com>)
 id 1iK5rm-000wQV-S6; Mon, 14 Oct 2019 14:18:51 -0500
Date: Mon, 14 Oct 2019 14:18:30 -0500
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
To: Felipe Balbi <balbi@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Vladimir Zapolskiy <vz@mleia.com>,
 Sylvain Lemieux <slemieux.tyco@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Roland Stigge <stigge@antcom.de>
Subject: [PATCH] usb: udc: lpc32xx: fix bad bit shift operation
Message-ID: <20191014191830.GA10721@embeddedor>
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
X-Source-IP: 187.192.22.73
X-Source-L: No
X-Exim-ID: 1iK5rm-000wQV-S6
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (embeddedor) [187.192.22.73]:54766
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 8
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_121907_541275_D4063078 
X-CRM114-Status: GOOD (  10.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.185.149.101 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org,
 "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

It seems that the right variable to use in this case is *i*, instead of
*n*, otherwise there is an undefined behavior when right shifiting by more
than 31 bits when multiplying n by 8; notice that *n* can take values
equal or greater than 4 (4, 8, 16, ...).

Also, notice that under the current conditions (bl = 3), we are skiping
the handling of bytes 3, 7, 31... So, fix this by updating this logic
and limit *bl* up to 4 instead of up to 3.

This fix is based on function udc_stuff_fifo().

Addresses-Coverity-ID: 1454834 ("Bad bit shift operation")
Fixes: 24a28e428351 ("USB: gadget driver for LPC32xx")
Cc: stable@vger.kernel.org
Signed-off-by: Gustavo A. R. Silva <gustavo@embeddedor.com>
---
 drivers/usb/gadget/udc/lpc32xx_udc.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/gadget/udc/lpc32xx_udc.c b/drivers/usb/gadget/udc/lpc32xx_udc.c
index 2b1f3cc7819b..bf6c81e2f8cc 100644
--- a/drivers/usb/gadget/udc/lpc32xx_udc.c
+++ b/drivers/usb/gadget/udc/lpc32xx_udc.c
@@ -1177,11 +1177,11 @@ static void udc_pop_fifo(struct lpc32xx_udc *udc, u8 *data, u32 bytes)
 			tmp = readl(USBD_RXDATA(udc->udp_baseaddr));
 
 			bl = bytes - n;
-			if (bl > 3)
-				bl = 3;
+			if (bl > 4)
+				bl = 4;
 
 			for (i = 0; i < bl; i++)
-				data[n + i] = (u8) ((tmp >> (n * 8)) & 0xFF);
+				data[n + i] = (u8) ((tmp >> (i * 8)) & 0xFF);
 		}
 		break;
 
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
