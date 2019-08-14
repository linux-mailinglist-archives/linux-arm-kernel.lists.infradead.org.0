Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D6B408CF11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 14 Aug 2019 11:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rSICoMhPbMv0cvdDUG1rVtX6d+iZmI8Qxgm6BYPzjOY=; b=W4K5WK6i5Mlhrf
	X9HjzMu3N/Z1DI9q4zz6P9O4JbQtj1FwOVGxeIhquWPcaGtuensw4uJJPTqb+t8Xw0maE2uxV/NBj
	i4GQaG1Y+U9Fs4bPiPP023Lr0XKY2GfJlXMA+PR41v8RnO4PY6PBPsMTiBQSmh7wHj6C0uhb9HcQJ
	iZBA3qjBWJkKZbn2FKpHBBxUQO6GfCs2GCmUgzU8qnTm4QU2QeDOStCX3JntbolEvF/rGV2DUSms6
	UdfGOUG2xhhTEjpxNoGXL33vRdyMgBrYN9woY7i9gptYIx+Siv3/2Ko3nf2EO4oP0hV/Z3CPYbb9A
	vNKnRCcOleK0x+TGuN7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxpHc-0003ZG-Px; Wed, 14 Aug 2019 09:09:28 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxpHK-0003YP-Vt
 for linux-arm-kernel@lists.infradead.org; Wed, 14 Aug 2019 09:09:12 +0000
Received: from localhost (alyon-656-1-672-152.w92-137.abo.wanadoo.fr
 [92.137.69.152])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 30601200010;
 Wed, 14 Aug 2019 09:08:58 +0000 (UTC)
Date: Wed, 14 Aug 2019 11:08:58 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Nicolas.Ferre@microchip.com
Subject: Re: [PATCH] MAINTAINERS: Update path to tcb_clksrc.c
Message-ID: <20190814090858.GF3600@piout.net>
References: <7cd8d12f59bcacd18a78f599b46dac555f7f16c0.camel@perches.com>
 <20190813061046.15712-1-efremov@linux.com>
 <efb86032-7547-dbc1-19ac-11dc9aff1521@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <efb86032-7547-dbc1-19ac-11dc9aff1521@microchip.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_020911_175118_A4A67CCB 
X-CRM114-Status: GOOD (  17.56  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.232 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: joe@perches.com, Ludovic.Desroches@microchip.com,
 linux-kernel@vger.kernel.org, efremov@linux.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13/08/2019 08:11:23+0000, Nicolas Ferre wrote:
> On 13/08/2019 at 08:10, Denis Efremov wrote:
> > Update MAINTAINERS record to reflect the filename change
> > from tcb_clksrc.c to timer-atmel-tcb.c
> > 
> > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
> But, while you're at it, I would add another line: see below...
> 
> > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Fixes: a7aae768166e ("clocksource/drivers/tcb_clksrc: Rename the file for consistency")
> > Signed-off-by: Denis Efremov <efremov@linux.com>
> > ---
> >   MAINTAINERS | 2 +-
> >   1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/MAINTAINERS b/MAINTAINERS
> > index c9ad38a9414f..3ec8154e4630 100644
> > --- a/MAINTAINERS
> > +++ b/MAINTAINERS
> > @@ -10637,7 +10637,7 @@ M:	Nicolas Ferre <nicolas.ferre@microchip.com>
> 
> +M:      Alexandre Belloni <alexandre.belloni@bootlin.com>
> 
> But Alexandre have to agree, of course.
> 
> >   L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
> >   S:	Supported
> >   F:	drivers/misc/atmel_tclib.c
> > -F:	drivers/clocksource/tcb_clksrc.c
> > +F:	drivers/clocksource/timer-atmel-tcb.c
> >   
> >   MICROCHIP USBA UDC DRIVER
> >   M:	Cristian Birsan <cristian.birsan@microchip.com>
> 
> We could also remove this entry and mix it with:
> "ARM/Microchip (AT91) SoC support"
> 
> But I prefer to keep it separated like this for various reasons.
> 

I would simply remove this entry because all the files are already
matching the SoC entry (it has N: atmel) and atmel_tclib will go away (I
have a series to do that).

If you want to keep a separate entry, maybe we should then add the
system timer and pit drivers.


-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
