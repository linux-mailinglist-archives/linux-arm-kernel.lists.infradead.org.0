Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C59F0124E0C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 17:41:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B4SjPqocMwq0qG3/aHdyXeXRIneDSItRfRkdN8xYSb0=; b=bfWq9t8z6GzPuC
	+W1QQlW6prSNVxqFAvARN8zubKE744PnbwGboK9NFt4+yg5zxQnb4L5KphTJJOW3sptHwyeh7JBg6
	KIW2GPbj3tz5d76LIIDkMqFMBcVrcUc87DMEFlx4R/FBmypIMp/sRsPq+32twAZn6J5VAggT9eRD6
	GGsDWSAGVFGeRjl0tQ5EGzzW2B88bKNJbGHeF3huAUFT8RMG3VAbQpGN6YiYSg/ibV1bgSej6BBG5
	KLkXeGCDwchThVY7bmcFuOSJ195FTn/9nSF5XXIL7XaPA+sf2a0CY7o4HYXB/96K66BASymyYVW6w
	CTP8eXsUo4tVMAm0UNuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihcNa-0005m0-39; Wed, 18 Dec 2019 16:40:54 +0000
Received: from mailoutvs15.siol.net ([185.57.226.206] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihcNL-0005kk-2R
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 16:40:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 161B1521E9F;
 Wed, 18 Dec 2019 17:40:28 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id xfVEE8OS8Kem; Wed, 18 Dec 2019 17:40:27 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 9BF6A523FB0;
 Wed, 18 Dec 2019 17:40:27 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 799165236CB;
 Wed, 18 Dec 2019 17:40:26 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 1/2] media: cedrus: Fix decoding for some HEVC videos
Date: Wed, 18 Dec 2019 17:40:25 +0100
Message-ID: <2234008.mhVpxdDc1K@jernej-laptop>
In-Reply-To: <20191218084047.GA2900@aptenodytes>
References: <20191213161516.54688-1-jernej.skrabec@siol.net>
 <20191213161516.54688-2-jernej.skrabec@siol.net>
 <20191218084047.GA2900@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_084039_276065_4983D66A 
X-CRM114-Status: GOOD (  19.57  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.206 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, mripard@kernel.org, hverkuil@xs4all.nl,
 wens@csie.org, mchehab@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Dne sreda, 18. december 2019 ob 09:40:47 CET je Paul Kocialkowski napisal(a):
> Hi,
> 
> On Fri 13 Dec 19, 17:15, Jernej Skrabec wrote:
> > It seems that for some HEVC videos at least one bitstream parsing
> > trigger must be called in order to be decoded correctly. There is no
> > explanation why this helps, but it was observed that several videos
> > with this fix are now decoded correctly and there is no regression with
> > others.
> > 
> > Without this fix, those same videos totally crash HEVC decoder (other
> > decoder engines are unaffected). After decoding those problematic
> > videos, HEVC decoder always returns only green image (all zeros).
> > Only complete HW reset helps.
> > 
> > This fix is similar to that for H264.
> 
> Thanks for the fix, interesting that the same issue shows up on HEVC!
> I suspect that Allwinner folks never really tested the engine without
> using it for bitstream parsing.

That thought also crossed my mind. It's even worse with VP8. There you can't 
have proper decoding at all without calling one specific bitstream parsing 
function.

> 
> Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>

Thanks!

Best regards,
Jernej

> 
> Cheers,
> 
> Paul
> 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  .../staging/media/sunxi/cedrus/cedrus_h265.c  | 25 ++++++++++++++++---
> >  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  1 +
> >  2 files changed, 23 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c index
> > 109d3289418c..5a207f1e137c 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > @@ -7,6 +7,7 @@
> > 
> >   * Copyright (C) 2018 Bootlin
> >   */
> > 
> > +#include <linux/delay.h>
> > 
> >  #include <linux/types.h>
> >  
> >  #include <media/videobuf2-dma-contig.h>
> > 
> > @@ -283,6 +284,23 @@ static void cedrus_h265_write_scaling_list(struct
> > cedrus_ctx *ctx,> 
> >  		}
> >  
> >  }
> > 
> > +static void cedrus_h265_skip_bits(struct cedrus_dev *dev, int num)
> > +{
> > +	int count = 0;
> > +
> > +	while (count < num) {
> > +		int tmp = min(num - count, 32);
> > +
> > +		cedrus_write(dev, VE_DEC_H265_TRIGGER,
> > +			     VE_DEC_H265_TRIGGER_FLUSH_BITS |
> > +			     VE_DEC_H265_TRIGGER_TYPE_N_BITS(tmp));
> > +		while (cedrus_read(dev, VE_DEC_H265_STATUS) &
> > VE_DEC_H265_STATUS_VLD_BUSY) +			udelay(1);
> > +
> > +		count += tmp;
> > +	}
> > +}
> > +
> > 
> >  static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> >  
> >  			      struct cedrus_run *run)
> >  
> >  {
> > 
> > @@ -347,10 +365,9 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> > 
> >  	/* Source offset and length in bits. */
> > 
> > -	reg = slice_params->data_bit_offset;
> > -	cedrus_write(dev, VE_DEC_H265_BITS_OFFSET, reg);
> > +	cedrus_write(dev, VE_DEC_H265_BITS_OFFSET, 0);
> > 
> > -	reg = slice_params->bit_size - slice_params->data_bit_offset;
> > +	reg = slice_params->bit_size;
> > 
> >  	cedrus_write(dev, VE_DEC_H265_BITS_LEN, reg);
> >  	
> >  	/* Source beginning and end addresses. */
> > 
> > @@ -385,6 +402,8 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> > 
> >  	/* Initialize bitstream access. */
> >  	cedrus_write(dev, VE_DEC_H265_TRIGGER, 
VE_DEC_H265_TRIGGER_INIT_SWDEC);
> > 
> > +	cedrus_h265_skip_bits(dev, slice_params->data_bit_offset);
> > +
> > 
> >  	/* Bitstream parameters. */
> >  	
> >  	reg = VE_DEC_H265_DEC_NAL_HDR_NAL_UNIT_TYPE(slice_params-
>nal_unit_type)
> >  	|
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > 0d9449fe2b28..df1cceef8d93 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > @@ -424,6 +424,7 @@
> > 
> >  #define VE_DEC_H265_TRIGGER			(VE_ENGINE_DEC_H265 + 
0x34)
> > 
> > +#define VE_DEC_H265_TRIGGER_TYPE_N_BITS(x)	(((x) & 0x3f) << 8)
> > 
> >  #define VE_DEC_H265_TRIGGER_STCD_VC1		(0x02 << 4)
> >  #define VE_DEC_H265_TRIGGER_STCD_AVS		(0x01 << 4)
> >  #define VE_DEC_H265_TRIGGER_STCD_HEVC		(0x00 << 4)





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
