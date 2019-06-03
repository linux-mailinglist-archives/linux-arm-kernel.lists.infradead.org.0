Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC43E333B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:37:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KFizVF43UFpipwHcKHvu5ygGhvRn+P3Eyn6jYkBzR+w=; b=pMaf6o2eMnOrXj
	2/QacQInvrfu0IpxbxpcTRGnSmirD5Tz+lI9NqkfAWYfXXVDY2z+HDMr5i6f6CM2MbrSIbgmCALJ0
	2WUH2UlWgNT7Yflk5LbkP3ncMtVKZ0Lu/w8R9agW3ML4KPrXfZuibn6YquuumZhPSa8ucQnv59BLH
	NmruyW1SYw3hxr26MnKluAJnwh+OlCvrAWkX7SBq0e8BVWvqsX6oZ1aVEYFKca95jQKgA+x5+KhlT
	LvrSdHgCeRY+QvwOO+AdNvG8ZireC/O9YwzK6x7Lp6sohPhtxKibS5F7Nx4PLIXD6QI/59CBc3Ibl
	BCAF3fSIZWZ2AmNIMvgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXp1g-0001iy-SH; Mon, 03 Jun 2019 15:37:32 +0000
Received: from mailoutvs28.siol.net ([185.57.226.219] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXp1V-0001hu-43
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:37:23 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 41407520580;
 Mon,  3 Jun 2019 17:37:18 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id y2fQPCRP4Vjv; Mon,  3 Jun 2019 17:37:17 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id DA31B520F55;
 Mon,  3 Jun 2019 17:37:17 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 89BE3520580;
 Mon,  3 Jun 2019 17:37:17 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 3/7] media: cedrus: Fix decoding for some H264 videos
Date: Mon, 03 Jun 2019 17:37:17 +0200
Message-ID: <2536664.ljALn0aKaT@jernej-laptop>
In-Reply-To: <20190603115536.j5lan6wtmbxpoe2k@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-4-jernej.skrabec@siol.net>
 <20190603115536.j5lan6wtmbxpoe2k@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_083721_716710_FDE14B3A 
X-CRM114-Status: GOOD (  19.19  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.219 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, paul.kocialkowski@bootlin.com, wens@csie.org,
 mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 03. junij 2019 ob 13:55:36 CEST je Maxime Ripard napisal(a):
> Hi,
> 
> On Thu, May 30, 2019 at 11:15:12PM +0200, Jernej Skrabec wrote:
> > It seems that for some H264 videos at least one bitstream parsing
> > trigger must be called in order to be decoded correctly. There is no
> > explanation why this helps, but it was observed that two sample videos
> > with this fix are now decoded correctly and there is no regression with
> > others.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > I have two samples which are fixed by this:
> > http://jernej.libreelec.tv/videos/h264/test.mkv
> > http://jernej.libreelec.tv/videos/h264/Dredd%20%E2%80%93%20DTS%20Sound%20C
> > heck%20DTS-HD%20MA%207.1.m2ts
> > 
> > Although second one also needs support for multi-slice frames, which is
> > not yet implemented here.> 
> >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 22 ++++++++++++++++---
> >  1 file changed, 19 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > cc8d17f211a1..d0ee3f90ff46 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > @@ -6,6 +6,7 @@
> > 
> >   * Copyright (c) 2018 Bootlin
> >   */
> > 
> > +#include <linux/delay.h>
> > 
> >  #include <linux/types.h>
> >  
> >  #include <media/videobuf2-dma-contig.h>
> > 
> > @@ -289,6 +290,20 @@ static void cedrus_write_pred_weight_table(struct
> > cedrus_ctx *ctx,> 
> >  	}
> >  
> >  }
> 
> We should have a comment here explaining why that is needed

ok.

> 
> > +static void cedrus_skip_bits(struct cedrus_dev *dev, int num)
> > +{
> > +	for (; num > 32; num -= 32) {
> > +		cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (32 << 
8));
> 
> Using defines here would be great

Yes, sorry about that.

> 
> > +		while (cedrus_read(dev, VE_H264_STATUS) & (1 << 8))
> > +			udelay(1);
> > +	}
> 
> A new line here would be great
> 
> > +	if (num > 0) {
> > +		cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (num << 
8));
> > +		while (cedrus_read(dev, VE_H264_STATUS) & (1 << 8))
> > +			udelay(1);
> > +	}
> 
> Can't we make that a bit simpler by not duplicating the loop?
> 
> Something like:
> 
> int current = 0;
> 
> while (current < num) {
>     int tmp = min(num - current, 32);
> 
>     cedrus_write(dev, VE_H264_TRIGGER_TYPE, 0x3 | (current << 8))
>     while (...)
>        ...
> 
>     current += tmp;
> }

Yes, that looks better, I'll change it in next version.

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
