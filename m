Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F053EE4B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 17:34:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ahJmjv6gfIAfkTnsNi0MCSaHlSJZokvVmkoIi65kAVI=; b=SFS9SeaYHWXnsi
	1KvTSYB1TokUZNLSh2hIqM3E5WWyRsB6yS1I5cii+irt72qeGZxa0wYT164bp5f0Ru+JAG7COYOuf
	Eq850uOyoq1vgYw6jBdGVC5XnIfEY2gO91y/GTiQbHnnE1ybDFF3qNTympjWfkCYvbgEVd2ADpvHW
	X5Qczs81zo6X4B+2oCoEKkCcjkn24WFz9T+1BnIAXjTWHuGuMswqNNt89oO8A4Yw+pq/qlgbfoCT3
	lGLTj+wf9bbBmEjavq6kwYWajcx95I26Az5ez0ZUXDzFj3N/95klpYmBPR94bt4ReGiJxmmsBqEQu
	JkPlomo9cTOk8eWEhA4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRfIu-0003tE-Sw; Mon, 04 Nov 2019 16:34:08 +0000
Received: from mailoutvs3.siol.net ([185.57.226.194] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRfIl-0003rh-Uy
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 16:34:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 94E61525106;
 Mon,  4 Nov 2019 17:33:51 +0100 (CET)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id cL8U28b3yVhv; Mon,  4 Nov 2019 17:33:51 +0100 (CET)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E8F185250EB;
 Mon,  4 Nov 2019 17:33:50 +0100 (CET)
Received: from jernej-laptop.localnet (cpe-86-58-102-7.static.triera.net
 [86.58.102.7]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id EA0315251A3;
 Mon,  4 Nov 2019 17:33:46 +0100 (CET)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
Subject: Re: [PATCH 1/3] media: cedrus: Properly signal size in mode register
Date: Mon, 04 Nov 2019 17:33:46 +0100
Message-ID: <7309638.L6IRxaGt1L@jernej-laptop>
In-Reply-To: <20191104100228.GD502900@aptenodytes>
References: <20191026074959.1073512-1-jernej.skrabec@siol.net>
 <20191026074959.1073512-2-jernej.skrabec@siol.net>
 <20191104100228.GD502900@aptenodytes>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_083400_158003_32939230 
X-CRM114-Status: GOOD (  20.70  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.194 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, gregkh@linuxfoundation.org,
 linux-sunxi@googlegroups.com, linux-kernel@vger.kernel.org, mripard@kernel.org,
 wens@csie.org, hverkuil-cisco@xs4all.nl, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 04. november 2019 ob 11:02:28 CET je Paul Kocialkowski 
napisal(a):
> Hi Jernej,
> 
> On Sat 26 Oct 19, 09:49, Jernej Skrabec wrote:
> > Mode register also holds information if video width is bigger than 2048
> > and if it is equal to 4096.
> > 
> > Rework cedrus_engine_enable() to properly signal this properties.
> 
> Thanks for the patch, looks good to me!
> 
> Acked-by: Paul Kocialkowski <paul.kocialkowski@bootlin.com>
> 
> One minor thing: maybe we should have a way to set the maximum dimensions
> depending on the generation of the engine in use and the actual maximum
> supported by the hardware.
> 
> Maybe either as dedicated new fields in struct cedrus_variant or as
> capability flags.

I was thinking about first solution, but after going trough manuals, it was 
unclear what are real limitations. For example, H3 manual states that it is 
capable of decoding H264 1080p@60Hz. However, I know for a fact that it is 
also capable of decoding 4k videos, but probably not at 60 Hz. I don't own 
anything older that A83T, so I don't know what are capabilities of those SoCs. 
Anyway, being slow is still ok for some tasks, like transcoding, so we can't 
limit decoding to 1080p just because it's slow. It is probably still faster 
than doing it in SW. Not to mention that it's still ok for some videos, a lot 
of them uses 24 fps.

Best regards,
Jernej

> 
> Anyway that can be done later since we were already hardcoding this.
> 
> Cheers,
> 
> Paul
> 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus_h264.c  | 2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus_h265.c  | 2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus_hw.c    | 9 +++++++--
> >  drivers/staging/media/sunxi/cedrus/cedrus_hw.h    | 2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c | 2 +-
> >  drivers/staging/media/sunxi/cedrus/cedrus_regs.h  | 2 ++
> >  6 files changed, 13 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c index
> > 7487f6ab7576..d2c854ecdf15 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h264.c
> > @@ -485,7 +485,7 @@ static void cedrus_h264_setup(struct cedrus_ctx *ctx,
> > 
> >  {
> >  
> >  	struct cedrus_dev *dev = ctx->dev;
> > 
> > -	cedrus_engine_enable(dev, CEDRUS_CODEC_H264);
> > +	cedrus_engine_enable(ctx, CEDRUS_CODEC_H264);
> > 
> >  	cedrus_write(dev, VE_H264_SDROT_CTRL, 0);
> >  	cedrus_write(dev, VE_H264_EXTRA_BUFFER1,
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c index
> > 9bc921866f70..6945dc74e1d7 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_h265.c
> > @@ -276,7 +276,7 @@ static void cedrus_h265_setup(struct cedrus_ctx *ctx,
> > 
> >  	}
> >  	
> >  	/* Activate H265 engine. */
> > 
> > -	cedrus_engine_enable(dev, CEDRUS_CODEC_H265);
> > +	cedrus_engine_enable(ctx, CEDRUS_CODEC_H265);
> > 
> >  	/* Source offset and length in bits. */
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c index
> > 570a9165dd5d..3acfa21bc124 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> > @@ -30,7 +30,7 @@
> > 
> >  #include "cedrus_hw.h"
> >  #include "cedrus_regs.h"
> > 
> > -int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec codec)
> > +int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec codec)
> > 
> >  {
> >  
> >  	u32 reg = 0;
> > 
> > @@ -58,7 +58,12 @@ int cedrus_engine_enable(struct cedrus_dev *dev, enum
> > cedrus_codec codec)> 
> >  		return -EINVAL;
> >  	
> >  	}
> > 
> > -	cedrus_write(dev, VE_MODE, reg);
> > +	if (ctx->src_fmt.width == 4096)
> > +		reg |= VE_MODE_PIC_WIDTH_IS_4096;
> > +	if (ctx->src_fmt.width > 2048)
> > +		reg |= VE_MODE_PIC_WIDTH_MORE_2048;
> > +
> > +	cedrus_write(ctx->dev, VE_MODE, reg);
> > 
> >  	return 0;
> >  
> >  }
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h index
> > 27d0882397aa..604ff932fbf5 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.h
> > @@ -16,7 +16,7 @@
> > 
> >  #ifndef _CEDRUS_HW_H_
> >  #define _CEDRUS_HW_H_
> > 
> > -int cedrus_engine_enable(struct cedrus_dev *dev, enum cedrus_codec
> > codec);
> > +int cedrus_engine_enable(struct cedrus_ctx *ctx, enum cedrus_codec
> > codec);
> > 
> >  void cedrus_engine_disable(struct cedrus_dev *dev);
> >  
> >  void cedrus_dst_format_set(struct cedrus_dev *dev,
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c index
> > 13c34927bad5..8bcd6b8f9e2d 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_mpeg2.c
> > @@ -96,7 +96,7 @@ static void cedrus_mpeg2_setup(struct cedrus_ctx *ctx,
> > struct cedrus_run *run)> 
> >  	quantization = run->mpeg2.quantization;
> >  	
> >  	/* Activate MPEG engine. */
> > 
> > -	cedrus_engine_enable(dev, CEDRUS_CODEC_MPEG2);
> > +	cedrus_engine_enable(ctx, CEDRUS_CODEC_MPEG2);
> > 
> >  	/* Set intra quantization matrix. */
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h index
> > 4275a307d282..ace3d49fcd82 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_regs.h
> > @@ -35,6 +35,8 @@
> > 
> >  #define VE_MODE					0x00
> > 
> > +#define VE_MODE_PIC_WIDTH_IS_4096		BIT(22)
> > +#define VE_MODE_PIC_WIDTH_MORE_2048		BIT(21)
> > 
> >  #define VE_MODE_REC_WR_MODE_2MB			(0x01 << 20)
> >  #define VE_MODE_REC_WR_MODE_1MB			(0x00 << 20)
> >  #define VE_MODE_DDR_MODE_BW_128			(0x03 << 16)





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
