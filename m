Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC9B71DBE2B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 21:41:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l4rXvY2eXvuoXiI9WDOCoxkjNk+ccUp0W8/PQSYEnrU=; b=jIh3wga4od7ilG
	uC4cd2PZZUifckWX16SU4LuCBNqnzAjyblE3xqNKx4+sJdFsHN9lAwNHk5l9wfpu9RSuIHrS5Mmn4
	Vz0YsfvsrXQr1X8zt6f3Phu7ePVEaT6q7I+Xj1fTrJV/S8ZC91ZPhw7qTHp00K0Iv2BGqXQZ6jOzD
	Xqvhne5W1ZrltHYzsBY8efqR6+5paAmmYQhMB93gxnIxDvbbS4OtQNqeb2loOHvTk/v6ne9Qkl07t
	4VwQMq4gGs9l4Ekh3GYjNdlSQC06VC+FtR2SsZBySdxI3ZtpkHFh61SzzMbWAR/tqT200pducc6w3
	4o4bJiyBROjx7bVirX+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbUa5-0007sq-I3; Wed, 20 May 2020 19:40:45 +0000
Received: from mail-wm1-x32a.google.com ([2a00:1450:4864:20::32a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbUZw-0007rT-9p
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 19:40:38 +0000
Received: by mail-wm1-x32a.google.com with SMTP id f134so3600798wmf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 12:40:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=zEshQ4RXawJgCwUu3H0A20vwPAUaqTy1SfLW1PuU2h8=;
 b=f8o7H66EK7+jLQciN32W+2zxAI9l4Z+s+j3m6SnLezfaCfNXv3VtftiI8r55iYE4+X
 XovUH1N5jI8K0sYTI+dh41vFvo801dOd2jq2yS8lNuhSJHeRgktNpvL7uPYa9hEbRrBo
 vZIDMmchKqqyKc4TvIt3gAaiUxFlsunbfe5jk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=zEshQ4RXawJgCwUu3H0A20vwPAUaqTy1SfLW1PuU2h8=;
 b=pb7QxZ5/unxCyUSs/BKGJzlfOsZztSjPUEICCs52Gq9Yc3jmUGQ6jI8C2PXW6ZDxYU
 lE09suSV82lu5PDskCLzeQKCcSG19B/F5l0JIR/rP7p/Vlvh9t2+VAUBSj4PAQQAN9LN
 aPI7uUk9wpWJ+2VMjMuvB8MdsIGAeatbhl8A2Gvua0Zu+HlezoOVGQRBT2mN8O2H/Qsv
 h7H1i5UY/jeJ+d47tkhwA7L3wmVOhsaS+Xv+X6YVyXj+gUlL4/WfzyHCwg3y/HCZhkeX
 4AhxWsyT+Ra5i6yKeoSh0s85ufpg+5pl371dFcfjZie5ktilO/mpAj8eb9wvOwPoWjQj
 tGWw==
X-Gm-Message-State: AOAM532TmQGrKZ4cgGp5pwN100ORajYRtW9/wL1mBcrbmA0EW1NkO5ll
 MikMYOR7Kkp87sGNbB/jOLOIBw==
X-Google-Smtp-Source: ABdhPJz0FOd3fwCL+MjyfIP86aAo9gZALiSzpecZpnD5irz2AoyRaqdBnLYwt0qg/IOO3H0g0C3Fdw==
X-Received: by 2002:a05:600c:40d:: with SMTP id
 q13mr5971261wmb.69.1590003631679; 
 Wed, 20 May 2020 12:40:31 -0700 (PDT)
Received: from chromium.org (205.215.190.35.bc.googleusercontent.com.
 [35.190.215.205])
 by smtp.gmail.com with ESMTPSA id h20sm3965317wma.6.2020.05.20.12.40.30
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 12:40:31 -0700 (PDT)
Date: Wed, 20 May 2020 19:40:29 +0000
From: Tomasz Figa <tfiga@chromium.org>
To: Xia Jiang <xia.jiang@mediatek.com>
Subject: Re: [PATCH v7 11/11] media: platform: Add jpeg dec/enc feature
Message-ID: <20200520194029.GA38738@chromium.org>
References: <20200303123446.20095-1-xia.jiang@mediatek.com>
 <20200303123446.20095-12-xia.jiang@mediatek.com>
 <20200306112337.GA163286@chromium.org>
 <1587009795.24163.87.camel@mhfsdcap03>
 <20200501173712.GB218308@chromium.org>
 <1589020095.24163.150.camel@mhfsdcap03>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1589020095.24163.150.camel@mhfsdcap03>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_124036_363552_EF87A71B 
X-CRM114-Status: GOOD (  43.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:32a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 T_PDS_OTHER_BAD_TLD    Untrustworthy TLDs [URI: r.top (top)]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, srv_heupstream@mediatek.com,
 Rick Chang <rick.chang@mediatek.com>, linux-kernel@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Matthias Brugger <matthias.bgg@gmail.com>,
 Hans Verkuil <hverkuil-cisco@xs4all.nl>, linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Xia,

On Sat, May 09, 2020 at 06:28:15PM +0800, Xia Jiang wrote:
> On Fri, 2020-05-01 at 17:37 +0000, Tomasz Figa wrote:
> > Hi Xia,
> > 
> > On Thu, Apr 16, 2020 at 12:03:15PM +0800, Xia Jiang wrote:
> > > On Fri, 2020-03-06 at 20:23 +0900, Tomasz Figa wrote:
> > > > Hi Xia,
> > > > 
> > > > On Tue, Mar 03, 2020 at 08:34:46PM +0800, Xia Jiang wrote:
> > > > > Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
> > > > > decode and encode have great similarities with function operation.
> > > > 
> > > > Thank you for the patch. Please see my comments inline.
> > > 
> > > Dear Tomasz,
> > > 
> > > Thank you for your reply. I have followed your advice and submited v8
> > > version patch.
> > > 
> > > Please check my reply below.
> Dear Tomasz,
> I have some confuse about your advice, please check my reply below.

Sorry for the late reply again. Please see my reply inline.

> > [snip]
> > > > 
> > > > >  
> > > > > -	switch (s->target) {
> > > > > -	case V4L2_SEL_TGT_COMPOSE:
> > > > > -		s->r.left = 0;
> > > > > -		s->r.top = 0;
> > > > > -		ctx->out_q.w = s->r.width;
> > > > > -		ctx->out_q.h = s->r.height;
> > > > > -		break;
> > > > > -	default:
> > > > > -		return -EINVAL;
> > > > > +		switch (s->target) {
> > > > > +		case V4L2_SEL_TGT_CROP:
> > > > > +			s->r.left = 0;
> > > > > +			s->r.top = 0;
> > > > > +			ctx->out_q.w = s->r.width;
> > > > > +			ctx->out_q.h = s->r.height;
> > > > 
> > > > What happens if the userspace provides a value bigger than current format?
> > > we need get the min value of userspace value and current value,changed
> > > it like this:
> > > ctx->out_q.w = min(s->r.width, ctx->out_q.w);
> > > ctx->out_q.h = min(s->r.height,ctx->out_q.h);
> > 
> > Since ctx->out_q is modified by this function, wouldn't that cause
> > problems if S_SELECTION was called two times, first with a smaller
> > rectangle and then with a bigger one? We should store the active crop
> > and format separately and use the latter for min().
> Add a member variable(struct v4l2_rect) in out_q structure for storing
> the active crop, like this:
> s->r.width =  min(s->r.width, ctx->out_q.w);
> s->r.height = min(s->r.height,ctx->out_q.h);
> ctx->out_q.rect.width = s->r.width;
> ctx->out_q.rect.height =  s->r.height;
> Is that ok?

Yes. I'd call it crop_rect and it can be simplified further into:

ct->out_q.crop_rect = s->r;

> > 
> > [snip]
> > > > >  
> > > > >  	while ((vb = mtk_jpeg_buf_remove(ctx, q->type)))
> > > > >  		v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
> > > > > @@ -772,6 +1011,45 @@ static int mtk_jpeg_set_dec_dst(struct mtk_jpeg_ctx *ctx,
> > > > >  	return 0;
> > > > >  }
> > > > >  
> > > > > +static void mtk_jpeg_set_enc_dst(struct mtk_jpeg_ctx *ctx, void __iomem *base,
> > > > > +				 struct vb2_buffer *dst_buf,
> > > > > +				 struct mtk_jpeg_enc_bs *bs)
> > > > > +{
> > > > > +	bs->dma_addr = vb2_dma_contig_plane_dma_addr(dst_buf, 0);
> > > > > +	bs->dma_addr_offset = ctx->enable_exif ? MTK_JPEG_DEFAULT_EXIF_SIZE : 0;
> > > > 
> > > > Could you explain what is the meaning of the dma_addr_offset and where the
> > > > default EXIF size comes from? Also, how is the encoder output affected by
> > > > the enable_exif flag?
> > > If enabled the exif mode, the real output will be filled at the locaiton
> > > of dst_addr+ dma_addr_offset(exif size).The dma_addr_offset will be
> > > filled by the application.
> > > The default exif size is setted as constant value 64k according to the
> > > spec.(Exif metadata are restricted in size to 64kB in JPEG images
> > > because according to the specification this information must be
> > > contained within a signed JPEG APP1 segment)
> > 
> > Okay, thanks. Then it sounds like MTK_JPEG_MAX_EXIF_SIZE could be a more
> > appropriate name.
> > 
> > [snip]
> > > > > +}
> > > > > +
> > > > >  static void mtk_jpeg_device_run(void *priv)
> > > > >  {
> > > > >  	struct mtk_jpeg_ctx *ctx = priv;
> > > > > @@ -782,6 +1060,8 @@ static void mtk_jpeg_device_run(void *priv)
> > > > >  	struct mtk_jpeg_src_buf *jpeg_src_buf;
> > > > >  	struct mtk_jpeg_bs bs;
> > > > >  	struct mtk_jpeg_fb fb;
> > > > > +	struct mtk_jpeg_enc_bs enc_bs;
> > > > > +	struct mtk_jpeg_enc_fb enc_fb;
> > > > >  	int i;
> > > > >  
> > > > >  	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> > > > > @@ -792,30 +1072,47 @@ static void mtk_jpeg_device_run(void *priv)
> > > > >  		for (i = 0; i < dst_buf->vb2_buf.num_planes; i++)
> > > > >  			vb2_set_plane_payload(&dst_buf->vb2_buf, i, 0);
> > > > >  		buf_state = VB2_BUF_STATE_DONE;
> > > > 
> > > > About existing code, but we may want to explain this.
> > > > What is this last frame handling above for?
> > > if the user gives us a empty buffer(means it is the last frame),the
> > > driver will not encode and done the buffer to the user.
> > >
> > 
> > An empty buffer is not a valid way of signaling a last frame in V4L2. In
> > general, I'm not sure there is such a thing in JPEG, because all frames
> > are separate from each other and we always expect 1 input buffer and 1
> > output buffer for one frame. We might want to remove the special
> > handling in a follow up patch.
> How does application to end jpeg operation in motion jpeg if we remove
> this? I tryed to end with the condition that the input number equals
> output number in UT, and is ok.

That's correct. The operation ends when the number of CAPTURE buffers
dequeued is the same as the number of OUTPUT buffers queued.

> > 
> > > > > -		goto dec_end;
> > > > > +		goto device_run_end;
> > > > >  	}
> > > > >  
> > > > > -	if (mtk_jpeg_check_resolution_change(ctx, &jpeg_src_buf->dec_param)) {
> > > > > -		mtk_jpeg_queue_src_chg_event(ctx);
> > > > > -		ctx->state = MTK_JPEG_SOURCE_CHANGE;
> > > > > -		v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
> > > > > -		return;
> > > > > -	}
> > > > > +	if (jpeg->mode == MTK_JPEG_ENC) {
> > > > > +		spin_lock_irqsave(&jpeg->hw_lock, flags);
> > > > > +		mtk_jpeg_enc_reset(jpeg->reg_base);
> > > > 
> > > > Why do we need to reset every frame?
> > > We do this operation is to ensure that all registers are cleared.
> > > It's safer from the hardware point of view.
> > 
> > Wouldn't this only waste power? If we reset the hardware after powering
> > up, the only registers that could change would be changed by the driver
> > itself. The driver should program all registers properly when starting
> > next frame anyway, so such a reset shouldn't be necessary.
> I confirmed with hardware designer again that we need to reset every
> frame. If we do not do like this, unexpected mistakes may occur.

Okay, thanks for double checking. Please add a comment to the code that it
is a hardware requirement.

> > 
> > > > 
> > > > > +
> > > > > +		mtk_jpeg_set_enc_dst(ctx, jpeg->reg_base, &dst_buf->vb2_buf,
> > > > > +				     &enc_bs);
> > > > > +		mtk_jpeg_set_enc_src(ctx, jpeg->reg_base, &src_buf->vb2_buf,
> > > > > +				     &enc_fb);
> > > > > +		mtk_jpeg_enc_set_ctrl_cfg(jpeg->reg_base, ctx->enable_exif,
> > > > > +					  ctx->enc_quality,
> > > > > +					  ctx->restart_interval);
> > > > > +
> > > > > +		mtk_jpeg_enc_start(jpeg->reg_base);
> > > > > +	} else {
> > > > > +		if (mtk_jpeg_check_resolution_change
> > > > > +			(ctx, &jpeg_src_buf->dec_param)) {
> > > > > +			mtk_jpeg_queue_src_chg_event(ctx);
> > > > > +			ctx->state = MTK_JPEG_SOURCE_CHANGE;
> > > > > +			v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
> > > > 
> > > > This is a bit strange. Resolution change should be signaled when the
> > > > hardware attempted to decode a frame and detected a different resolution
> > > > than current. It shouldn't be necessary for the userspace to queue a pair
> > > > of buffers to signal it, as with the current code.
> > > If the the resolution is bigger than current, the current buffer will
> > > not be enough for the changed resolution.Shouldn't it tell the userspace
> > > to queue new buffer and stream on again?
> > 
> > The V4L2 decode flow is as follows:
> >  - application configures and starts only the OUTPUT queue,
> >  - application queues an OUTPUT buffer with a frame worth of bitstream,
> >  - decoder parses the bitstream headers, detects CAPTURE format and
> >    signals the source change event,
> >  - application reads CAPTURE format and configures and starts the
> >    CAPTURE queue,
> >  - application queues a CAPTURE buffer,
> >  - decoder decodes the image to the queued buffer.
> > 
> > In case of subsequent (dynamic) resolution change:
> >  - application queues an OUTPUT buffer and a CAPTURE buffer,
> >  - decoder parses the bitstream, notices resolution change, updates
> >    CAPTURE format and signals the source change event, refusing to
> >    continue the decoding until the application acknowledges it,
> >  - application either reallocates its CAPTURE buffers or confirms that
> >    the existing buffers are fine and acknowledges resolution change,
> >  - decoding continues.
> > 
> > For more details, please check the interface specification:
> > https://www.kernel.org/doc/html/latest/media/uapi/v4l/dev-decoder.html
> > 
> I tryed to move this operation from device_run() to
> mtk_jpeg_dec_buf_queue(),but have a problem in motion jpeg.For example,I
> queued three buffers continuously,the third buffer has resolution
> change(bigger than the second buffer),but the capture buffer used in
> device run didn't changed.
> How do we handle this case?

Sorry, I think I misread the driver code. It looks like there is a code
that parses the JPEG header from the source buffer called from
mtk_jpeg_dec_buf_queue() and that is the moment the driver detects the new
resolution. Then it only signals the event once all the previously queued
frames have been decoded, i.e. when the first new resolution frame gets to
device_run(). I think the current code should be fine then. Sorry for
confusion again!

> > [snip]
> > > > > -	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, 3);
> > > > > +	ret = video_register_device(jpeg->vfd_jpeg, VFL_TYPE_GRABBER, -1);
> > > > 
> > > > FYI the type changed to VFL_TYPE_VIDEO recently.
> > > I changed VFL_TYPE_GRABBER to VFL_TYPE_VIDEO,but builded fail.
> > 
> > What kernel version are you building with?
> I build it with the latest kernel 5.7,but builed fail again.

That's strange. There is no VFL_TYPE_GRABBER in 5.7 anymore:
https://elixir.bootlin.com/linux/v5.7-rc6/source/include/media/v4l2-dev.h#L24

Best regards,
Tomasz


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
