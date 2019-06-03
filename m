Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3811A333DD
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 17:48:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JaMGTsNHZ9Jz7DoaktGYc2GJ01zlbEHOGzUOsSLz4F4=; b=lyrVa5uZluoCIJ
	IIyV6s+TvQZ8TBi4vm+a/CLXuDX65zV3MK8quwgb35GPJSLDKIPJgpk6nvmB/sFfQIynO18ENHll0
	PBoX3sm/QsP9UXwOeOR+Pxh5HMub8uFw2TrGW1ze9CGkk5RZfE6mhJf+qhRXD9gVoI1D4rVUTMWDS
	Y3Xwd16xgagr5eBVk0cXWJMZWqgiahe+SSsjKJY9yLTA8Dn9s1p0WkE/Osv2m0rOrg970txmdYJrH
	KpylGa7EOrLvdg9NsDKMOcXl9VALGA2CmZA06ff4INMXXcnRVcc5SRWYB/Z0/JCUyYLXrJGBckhoh
	R/spZDKoIbY2jzPG9fRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXpCR-00051e-3Z; Mon, 03 Jun 2019 15:48:39 +0000
Received: from mailoutvs57.siol.net ([185.57.226.248] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXpCJ-00050h-3k
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 15:48:33 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id 54562521077;
 Mon,  3 Jun 2019 17:48:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id iTDkvQqWG0oc; Mon,  3 Jun 2019 17:48:27 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id E4C9152089C;
 Mon,  3 Jun 2019 17:48:26 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-52-202.static.triera.net
 [86.58.52.202]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 800E75210B0;
 Mon,  3 Jun 2019 17:48:25 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Maxime Ripard <maxime.ripard@bootlin.com>
Subject: Re: [PATCH 6/7] media: cedrus: Add infra for extra buffers connected
 to capture buffers
Date: Mon, 03 Jun 2019 17:48:25 +0200
Message-ID: <3029072.frl2UAsRGt@jernej-laptop>
In-Reply-To: <20190603121859.sbphcjy75kmed6oc@flea>
References: <20190530211516.1891-1-jernej.skrabec@siol.net>
 <20190530211516.1891-7-jernej.skrabec@siol.net>
 <20190603121859.sbphcjy75kmed6oc@flea>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_084831_482244_63BEDAC4 
X-CRM114-Status: GOOD (  18.73  )
X-Spam-Score: -0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.248 listed in list.dnswl.org]
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

Dne ponedeljek, 03. junij 2019 ob 14:18:59 CEST je Maxime Ripard napisal(a):
> Hi,
> 
> On Thu, May 30, 2019 at 11:15:15PM +0200, Jernej Skrabec wrote:
> > H264 and HEVC engines need additional buffers for each capture buffer.
> > H264 engine has this currently solved by allocating fixed size pool,
> > which is not ideal. Most of the time pool size is much bigger than it
> > needs to be.
> > 
> > Ideally, extra buffer should be allocated at buffer initialization, but
> > that's not efficient. It's size in H264 depends on flags set in SPS, but
> > that information is not available in buffer init callback.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus.h   |  4 ++++
> >  .../staging/media/sunxi/cedrus/cedrus_video.c | 19 +++++++++++++++++++
> >  2 files changed, 23 insertions(+)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus.h index
> > d8e6777e5e27..16c1bdfd243a 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> > @@ -81,6 +81,10 @@ struct cedrus_run {
> > 
> >  struct cedrus_buffer {
> >  
> >  	struct v4l2_m2m_buffer          m2m_buf;
> > 
> > +	void		*extra_buf;
> > +	dma_addr_t	extra_buf_dma;
> > +	ssize_t		extra_buf_size;
> > +
> > 
> >  	union {
> >  	
> >  		struct {
> >  		
> >  			unsigned int			position;
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_video.c index
> > 681dfe3367a6..d756e0e69634 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> > @@ -411,6 +411,24 @@ static void cedrus_queue_cleanup(struct vb2_queue
> > *vq, u32 state)> 
> >  	}
> >  
> >  }
> > 
> > +static void cedrus_buf_cleanup(struct vb2_buffer *vb)
> > +{
> > +	struct vb2_queue *vq = vb->vb2_queue;
> > +
> > +	if (!V4L2_TYPE_IS_OUTPUT(vq->type)) {
> > +		struct cedrus_ctx *ctx = vb2_get_drv_priv(vq);
> > +		struct cedrus_buffer *cedrus_buf;
> > +
> > +		cedrus_buf = vb2_to_cedrus_buffer(vq->bufs[vb->index]);
> > +
> > +		if (cedrus_buf->extra_buf_size)
> > +			dma_free_coherent(ctx->dev->dev,
> > +					  cedrus_buf-
>extra_buf_size,
> > +					  cedrus_buf-
>extra_buf,
> > +					  cedrus_buf-
>extra_buf_dma);
> > +	}
> > +}
> > +
> 
> I'm really not a fan of allocating something somewhere, and freeing it
> somewhere else. Making sure you don't leak something is hard enough to
> not have some non-trivial allocation scheme.

Ok, what about introducing two new optional methods in engine callbacks, 
buffer_init and buffer_destroy, which would be called from cedrus_buf_init() and 
cedrus_buf_cleanup(), respectively. That way all (de)allocation logic stays 
within the same engine.

Best regards,
Jernej




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
