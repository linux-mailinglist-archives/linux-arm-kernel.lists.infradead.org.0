Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 16B7C9D601
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 20:48:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tegsHdPXeyXQ4Zf1sacXMh/WTsxywm+Lw4Z2QQzZnus=; b=kxpACYktXjZEuK
	ebnxmJd0Gn1mcZozQKdZ/Zr92wAGYYvdpLrVE8EgX9iYYdzYC6aEj1NgfXW3mLOGTdb8N/TVpyzVC
	+4KGua0/OV8Q2em22xMzlm7npmcnWa9zrbiJvCl/DiIsmo+ipJRHYCGg21SqpMHWudwKgffTu1BVM
	thvv39KALVIiBmzpBJeoY8kDarJUvPTzSOiLZ1BDEaOxotvL3w1WoOh5wywnzUxKipmFGV9Ib74tY
	HitgrjsGmvb/GBhZxoCNl+T2WSF/vqhzWVms//z5duMddVmYuqCIJ4n8Orsy/tTZqFDChQgFKperU
	zD/cs/6fNSQeR6pdMcXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2K2T-00024L-FO; Mon, 26 Aug 2019 18:48:25 +0000
Received: from mailoutvs21.siol.net ([185.57.226.212] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2K2F-00023J-P2
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 18:48:13 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id A3AF252502C;
 Mon, 26 Aug 2019 20:48:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta11.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta11.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id XAiW7Ff-hBd0; Mon, 26 Aug 2019 20:48:02 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 08F0E522D89;
 Mon, 26 Aug 2019 20:48:02 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id 54683524F76;
 Mon, 26 Aug 2019 20:47:58 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Boris Brezillon <boris.brezillon@collabora.com>
Subject: Re: [PATCH 5/8] media: cedrus: Detect first slice of a frame
Date: Mon, 26 Aug 2019 20:47:57 +0200
Message-ID: <3859967.Y0CYr1sFaX@jernej-laptop>
In-Reply-To: <20190826202831.311c7c20@collabora.com>
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-6-jernej.skrabec@siol.net>
 <20190826202831.311c7c20@collabora.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_114811_974156_8338F6EC 
X-CRM114-Status: GOOD (  15.93  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.212 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
Cc: devel@driverdev.osuosl.org, acourbot@chromium.org, pawel@osciak.com,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, mripard@kernel.org,
 tfiga@chromium.org, paul.kocialkowski@bootlin.com, kyungmin.park@samsung.com,
 linux-media@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 hverkuil-cisco@xs4all.nl, mchehab@kernel.org, ezequiel@collabora.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dne ponedeljek, 26. avgust 2019 ob 20:28:31 CEST je Boris Brezillon 
napisal(a):
> Hi Jernej,
> 
> On Thu, 22 Aug 2019 21:44:57 +0200
> 
> Jernej Skrabec <jernej.skrabec@siol.net> wrote:
> > When codec supports multiple slices in one frame, VPU has to know when
> > first slice of each frame is being processed, presumably to correctly
> > clear/set data in auxiliary buffers.
> > 
> > Add first_slice field to cedrus_run structure and set it according to
> > timestamps of capture and output buffers. If timestamps are different,
> > it's first slice and viceversa.
> > 
> > Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> > ---
> > 
> >  drivers/staging/media/sunxi/cedrus/cedrus.h     | 1 +
> >  drivers/staging/media/sunxi/cedrus/cedrus_dec.c | 2 ++
> >  2 files changed, 3 insertions(+)
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > b/drivers/staging/media/sunxi/cedrus/cedrus.h index
> > 2f017a651848..32cb38e541c6 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus.h
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus.h
> > @@ -70,6 +70,7 @@ struct cedrus_mpeg2_run {
> > 
> >  struct cedrus_run {
> >  
> >  	struct vb2_v4l2_buffer	*src;
> >  	struct vb2_v4l2_buffer	*dst;
> > 
> > +	bool first_slice;
> > 
> >  	union {
> >  	
> >  		struct cedrus_h264_run	h264;
> > 
> > diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c index
> > 56ca4c9ad01c..d7b54accfe83 100644
> > --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> > @@ -31,6 +31,8 @@ void cedrus_device_run(void *priv)
> > 
> >  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> >  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> > 
> > +	run.first_slice =
> > +		run.src->vb2_buf.timestamp != run.dst-
>vb2_buf.timestamp;
> 
> Can't we use slice->first_mb_in_slice to determine if a slice is the
> first? I'd expect ->first_mb_in_slice to be 0 (unless we decide to
> support ASO).

I'm not sure if that is always the case, I would have to check the standard. 
Anyway, this method of comparing timestamps was suggested to me a while ago 
when we were discussing details on a way forward for multi-slice decoding. I 
highly doubt someone would decode slices in mixed order (from different frames) 
in same instance.

I can change that in next version if ->first_mb_in_slice == 0 is always true 
for the first slice.

Best regards,
Jernej

> 
> >  	/* Apply request(s) controls if needed. */
> >  	src_req = run.src->vb2_buf.req_obj.req;





_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
