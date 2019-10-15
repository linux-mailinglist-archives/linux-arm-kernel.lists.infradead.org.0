Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 667C1D7D3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 19:17:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HYP0RlokdbXMZLVQP1oXl5BKSQjMEctrVExCJOCR4IU=; b=kZ5P3/FOqbf2k2
	Le5sM/dxrV0gYCLtaY6L9xSf164KJDLW/AbTG13YDZtZ2wxzjcU1fa/6AQoFX5UE0ust4/s3E6UG0
	kGMulvFboLmxEXyDceOCX4xmWy26F+NQKMiF8ku0V6DQq10i0P99VytMFJ9VGYNjys23qg1mwlsoD
	itZIAoLQ3sjlwW+Jom0f6+p4Nc+jccI+60Uvu7rFMUqY7jKZlxgse6l707/wCATpfgqG46qi6FFw2
	LrVHa9/4n/dtgNbOoizGg9BpTV9fhXw76ZRLEOW704hx3BpeEuNWKCTNf76bgqpXu1zlTJbrTm7Dl
	b9UgOAXKegbenzRKC0og==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKQS8-00069X-FR; Tue, 15 Oct 2019 17:17:44 +0000
Received: from mailoutvs12.siol.net ([185.57.226.203] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQRD-0005Gs-GZ
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 17:16:51 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 7E4B2523C5E;
 Tue, 15 Oct 2019 19:16:34 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id tekc9kbQB2L2; Tue, 15 Oct 2019 19:16:34 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E7563523C61;
 Tue, 15 Oct 2019 19:16:33 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id DA296523C5E;
 Tue, 15 Oct 2019 19:16:32 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH v2 1/3] media: cedrus: Fix decoding for some H264 videos
Date: Tue, 15 Oct 2019 19:16:32 +0200
Message-ID: <1916783.jTTlJIDQL9@jernej-laptop>
In-Reply-To: <20191002215442.GA24151@aptenodytes>
References: <20191002193553.1633467-1-jernej.skrabec@siol.net>
 <20191002193553.1633467-2-jernej.skrabec@siol.net>
 <20191002215442.GA24151@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_101647_755902_7B0AD2C4 
X-CRM114-Status: GOOD (  24.91  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.203 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, mripard@kernel.org, wens@csie.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

Sorry for late reponse, technical issues...

Dne sreda, 02. oktober 2019 ob 23:54:47 CEST je Paul Kocialkowski napisal(a):
> Hi,
> 
> On Wed 02 Oct 19, 21:35, Jernej Skrabec wrote:
> > It seems that for some H264 videos at least one bitstream parsing
> > trigger must be called in order to be decoded correctly. There is no
> > explanation why this helps, but it was observed that two sample videos
> > with this fix are now decoded correctly and there is no regression with
> > others.
> 
> I understand there might be some magic going on under the hood here, but I
> would be interested in trying to understand what's really going on.

Me too.

> 
> For instance, comparing register dumps of the whole H264 block before/after
> calling the hardware parser could help, and comparing that to using the
> previous code (without hardware parsing).

Please understand that I was working on this on and off for almost half a year 
and checked many times all register values. At one point I tried libvdpau-
sunxi which has no problem with sample video.  Still, all relevant register 
values were the same. In a desperate attempt, I tried with HW header parsing 
which magically solved the issue. After that, I reused values provided in 
controls and then finally I made minimal solution as suggested in this patch. 

> 
> I could try and have a look if you have an available sample for testing the
> erroneous case!

Of course: http://jernej.libreelec.tv/videos/h264/test.mkv

> 
> Another minor thing: do you have some idea of whether the udelay call adds
> significant delay in the process?

I didn't notice any issue with it. Do you have any better idea? I just didn't 
want to make empty loop and udelay is the shortest delay that is provided by 
the kernel API.

Best regards,
Jernej

> 
> Cheers and thanks for the patch!
> 
> Paul
> 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  .../staging/media/sunxi/cedrus/cedrus_h264.c  | 30 +++++++++++++++++--
> >  .../staging/media/sunxi/cedrus/cedrus_regs.h  |  3 ++
> >  2 files changed, 30 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > d6a782703c9b..bd848146eada 100644
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
> > @@ -289,6 +290,28 @@ static void cedrus_write_pred_weight_table(struct
> > cedrus_ctx *ctx,> 
> >  	}
> >  
> >  }
> > 
> > +/*
> > + * It turns out that using VE_H264_VLD_OFFSET to skip bits is not
> > reliable. In + * rare cases frame is not decoded correctly. However,
> > setting offset to 0 and + * skipping appropriate amount of bits with
> > flush bits trigger always works. + */
> > +static void cedrus_skip_bits(struct cedrus_dev *dev, int num)
> > +{
> > +	int count = 0;
> > +
> > +	while (count < num) {
> > +		int tmp = min(num - count, 32);
> > 
> > +
> > +		cedrus_write(dev, VE_H264_TRIGGER_TYPE,
> > +			     VE_H264_TRIGGER_TYPE_FLUSH_BITS |
> > +			     VE_H264_TRIGGER_TYPE_N_BITS(tmp));
> > +		while (cedrus_read(dev, VE_H264_STATUS) & 
VE_H264_STATUS_VLD_BUSY)
> > +			udelay(1);
> > +
> > +		count += tmp;
> > +	}
> > +}
> > +
> > 
> >  static void cedrus_set_params(struct cedrus_ctx *ctx,
> >  
> >  			      struct cedrus_run *run)
> >  
> >  {
> > 
> > @@ -299,12 +322,11 @@ static void cedrus_set_params(struct cedrus_ctx
> > *ctx,
> > 
> >  	struct vb2_buffer *src_buf = &run->src->vb2_buf;
> >  	struct cedrus_dev *dev = ctx->dev;
> >  	dma_addr_t src_buf_addr;
> > 
> > -	u32 offset = slice->header_bit_size;
> > -	u32 len = (slice->size * 8) - offset;
> > +	u32 len = slice->size * 8;
> > 
> >  	u32 reg;
> >  	
> >  	cedrus_write(dev, VE_H264_VLD_LEN, len);
> > 
> > -	cedrus_write(dev, VE_H264_VLD_OFFSET, offset);
> > +	cedrus_write(dev, VE_H264_VLD_OFFSET, 0);
> > 
> >  	src_buf_addr = vb2_dma_contig_plane_dma_addr(src_buf, 0);
> >  	cedrus_write(dev, VE_H264_VLD_END,
> > 
> > @@ -323,6 +345,8 @@ static void cedrus_set_params(struct cedrus_ctx *ctx,
> > 
> >  	cedrus_write(dev, VE_H264_TRIGGER_TYPE,
> >  	
> >  		     VE_H264_TRIGGER_TYPE_INIT_SWDEC);
> > 
> > +	cedrus_skip_bits(dev, slice->header_bit_size);
> > +
> > 
> >  	if (((pps->flags & V4L2_H264_PPS_FLAG_WEIGHTED_PRED) &&
> >  	
> >  	     (slice->slice_type == V4L2_H264_SLICE_TYPE_P ||
> >  	     
> >  	      slice->slice_type == V4L2_H264_SLICE_TYPE_SP)) ||
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > 3329f9aaf975..b52926a54025 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > @@ -538,13 +538,16 @@
> > 
> >  					 
VE_H264_CTRL_SLICE_DECODE_INT)
> >  
> >  #define VE_H264_TRIGGER_TYPE		0x224
> > 
> > +#define VE_H264_TRIGGER_TYPE_N_BITS(x)		(((x) & 0x3f) << 8)
> > 
> >  #define VE_H264_TRIGGER_TYPE_AVC_SLICE_DECODE	(8 << 0)
> >  #define VE_H264_TRIGGER_TYPE_INIT_SWDEC		(7 << 0)
> > 
> > +#define VE_H264_TRIGGER_TYPE_FLUSH_BITS		(3 << 0)
> > 
> >  #define VE_H264_STATUS			0x228
> >  #define VE_H264_STATUS_VLD_DATA_REQ_INT		
VE_H264_CTRL_VLD_DATA_REQ_INT
> >  #define VE_H264_STATUS_DECODE_ERR_INT		
VE_H264_CTRL_DECODE_ERR_INT
> >  #define VE_H264_STATUS_SLICE_DECODE_INT		
VE_H264_CTRL_SLICE_DECODE_INT
> > 
> > +#define VE_H264_STATUS_VLD_BUSY			BIT(8)
> > 
> >  #define VE_H264_STATUS_INT_MASK			
VE_H264_CTRL_INT_MASK





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
