Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93A841CC059
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 May 2020 12:29:57 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rtkRlK9RNY4vx8+26MZ0zUIvn3DusMSQ9AVGJR0L/tw=; b=F5mehd/pdIUhNI
	JRpY8gZz5uHnoeN6JlfrMdFw23oFWMg6396gTutrqTee6tL8ED0qK3RFsfFJNDsJjeLiqsVZUfbgK
	5cIVbVBp1mfpHtroEjS91+P/tz3Wbvi9nD1W/j1xG36LAJzgzGEyGjDSKZ/gCAZqRU60m36lT1uz2
	Lj0DnAocAEbel95Tlnf5n+4Q1yuyrTQ9BM68xJ3fC4cITT4rmL+QzaLr1HR6AOhmHTSla+zEFcC8g
	TtzGABSrhbxBplZYhi9/vbhP0AQ0lAu+4JTNPNMF5RcOY2vbBOxKOmBLxeuiJ/PfG6s+72sRZ5TiB
	a8R/MP2iOyzRwMv4GDtg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jXMjp-0003Dg-6c; Sat, 09 May 2020 10:29:45 +0000
Received: from mailgw01.mediatek.com ([216.200.240.184])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jXMjd-0003C7-JU; Sat, 09 May 2020 10:29:35 +0000
X-UUID: 6b7c0b6dd98e4998a2cf0f8dca7e42ab-20200509
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=epJDxfn56pm1KYyJJsHHZHZ67ESMx3iBBECMEcHoO2Q=; 
 b=EH6bU/ivwKNlZGtx3QmkhDPM1Ncw2sUxTOIC6t26jrHHE46HsNwumNC5aVmLPeLp8WX0TNQiGMOJTgU7aIGy4upzWOLIbefjAEw2rmbtDcIAkUeVllVLTV+yqGoLy+QaKwDN1EA8tspEhwgakDJbGlIoohnSn9DV2BfnEaLv630=;
X-UUID: 6b7c0b6dd98e4998a2cf0f8dca7e42ab-20200509
Received: from mtkcas68.mediatek.inc [(172.29.94.19)] by mailgw01.mediatek.com
 (envelope-from <xia.jiang@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 2064341429; Sat, 09 May 2020 02:29:21 -0800
Received: from mtkmbs07n1.mediatek.inc (172.21.101.16) by
 MTKMBS62DR.mediatek.inc (172.29.94.18) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sat, 9 May 2020 03:29:25 -0700
Received: from MTKCAS36.mediatek.inc (172.27.4.186) by mtkmbs07n1.mediatek.inc
 (172.21.101.16) with Microsoft SMTP Server (TLS) id 15.0.1497.2;
 Sat, 9 May 2020 18:29:25 +0800
Received: from [10.17.3.153] (10.17.3.153) by MTKCAS36.mediatek.inc
 (172.27.4.170) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Sat, 9 May 2020 18:29:24 +0800
Message-ID: <1589020095.24163.150.camel@mhfsdcap03>
Subject: Re: [PATCH v7 11/11] media: platform: Add jpeg dec/enc feature
From: Xia Jiang <xia.jiang@mediatek.com>
To: Tomasz Figa <tfiga@chromium.org>
Date: Sat, 9 May 2020 18:28:15 +0800
In-Reply-To: <20200501173712.GB218308@chromium.org>
References: <20200303123446.20095-1-xia.jiang@mediatek.com>
 <20200303123446.20095-12-xia.jiang@mediatek.com>
 <20200306112337.GA163286@chromium.org>
 <1587009795.24163.87.camel@mhfsdcap03>
 <20200501173712.GB218308@chromium.org>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200509_032933_665058_6760A873 
X-CRM114-Status: GOOD (  35.64  )
X-Spam-Score: 1.8 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 2.0 PDS_OTHER_BAD_TLD      Untrustworthy TLDs [URI: r.top (top)]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
 Rob Herring <robh+dt@kernel.org>, Matthias
 Brugger <matthias.bgg@gmail.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>,
 linux-mediatek@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 2020-05-01 at 17:37 +0000, Tomasz Figa wrote:
> Hi Xia,
> 
> On Thu, Apr 16, 2020 at 12:03:15PM +0800, Xia Jiang wrote:
> > On Fri, 2020-03-06 at 20:23 +0900, Tomasz Figa wrote:
> > > Hi Xia,
> > > 
> > > On Tue, Mar 03, 2020 at 08:34:46PM +0800, Xia Jiang wrote:
> > > > Add mtk jpeg encode v4l2 driver based on jpeg decode, because that jpeg
> > > > decode and encode have great similarities with function operation.
> > > 
> > > Thank you for the patch. Please see my comments inline.
> > 
> > Dear Tomasz,
> > 
> > Thank you for your reply. I have followed your advice and submited v8
> > version patch.
> > 
> > Please check my reply below.
Dear Tomasz,
I have some confuse about your advice, please check my reply below.
> [snip]
> > > 
> > > >  
> > > > -	switch (s->target) {
> > > > -	case V4L2_SEL_TGT_COMPOSE:
> > > > -		s->r.left = 0;
> > > > -		s->r.top = 0;
> > > > -		ctx->out_q.w = s->r.width;
> > > > -		ctx->out_q.h = s->r.height;
> > > > -		break;
> > > > -	default:
> > > > -		return -EINVAL;
> > > > +		switch (s->target) {
> > > > +		case V4L2_SEL_TGT_CROP:
> > > > +			s->r.left = 0;
> > > > +			s->r.top = 0;
> > > > +			ctx->out_q.w = s->r.width;
> > > > +			ctx->out_q.h = s->r.height;
> > > 
> > > What happens if the userspace provides a value bigger than current format?
> > we need get the min value of userspace value and current value,changed
> > it like this:
> > ctx->out_q.w = min(s->r.width, ctx->out_q.w);
> > ctx->out_q.h = min(s->r.height,ctx->out_q.h);
> 
> Since ctx->out_q is modified by this function, wouldn't that cause
> problems if S_SELECTION was called two times, first with a smaller
> rectangle and then with a bigger one? We should store the active crop
> and format separately and use the latter for min().
Add a member variable(struct v4l2_rect) in out_q structure for storing
the active crop, like this:
s->r.width =  min(s->r.width, ctx->out_q.w);
s->r.height = min(s->r.height,ctx->out_q.h);
ctx->out_q.rect.width = s->r.width;
ctx->out_q.rect.height =  s->r.height;
Is that ok?
> 
> [snip]
> > > >  
> > > >  	while ((vb = mtk_jpeg_buf_remove(ctx, q->type)))
> > > >  		v4l2_m2m_buf_done(vb, VB2_BUF_STATE_ERROR);
> > > > @@ -772,6 +1011,45 @@ static int mtk_jpeg_set_dec_dst(struct mtk_jpeg_ctx *ctx,
> > > >  	return 0;
> > > >  }
> > > >  
> > > > +static void mtk_jpeg_set_enc_dst(struct mtk_jpeg_ctx *ctx, void __iomem *base,
> > > > +				 struct vb2_buffer *dst_buf,
> > > > +				 struct mtk_jpeg_enc_bs *bs)
> > > > +{
> > > > +	bs->dma_addr = vb2_dma_contig_plane_dma_addr(dst_buf, 0);
> > > > +	bs->dma_addr_offset = ctx->enable_exif ? MTK_JPEG_DEFAULT_EXIF_SIZE : 0;
> > > 
> > > Could you explain what is the meaning of the dma_addr_offset and where the
> > > default EXIF size comes from? Also, how is the encoder output affected by
> > > the enable_exif flag?
> > If enabled the exif mode, the real output will be filled at the locaiton
> > of dst_addr+ dma_addr_offset(exif size).The dma_addr_offset will be
> > filled by the application.
> > The default exif size is setted as constant value 64k according to the
> > spec.(Exif metadata are restricted in size to 64kB in JPEG images
> > because according to the specification this information must be
> > contained within a signed JPEG APP1 segment)
> 
> Okay, thanks. Then it sounds like MTK_JPEG_MAX_EXIF_SIZE could be a more
> appropriate name.
> 
> [snip]
> > > > +}
> > > > +
> > > >  static void mtk_jpeg_device_run(void *priv)
> > > >  {
> > > >  	struct mtk_jpeg_ctx *ctx = priv;
> > > > @@ -782,6 +1060,8 @@ static void mtk_jpeg_device_run(void *priv)
> > > >  	struct mtk_jpeg_src_buf *jpeg_src_buf;
> > > >  	struct mtk_jpeg_bs bs;
> > > >  	struct mtk_jpeg_fb fb;
> > > > +	struct mtk_jpeg_enc_bs enc_bs;
> > > > +	struct mtk_jpeg_enc_fb enc_fb;
> > > >  	int i;
> > > >  
> > > >  	src_buf = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
> > > > @@ -792,30 +1072,47 @@ static void mtk_jpeg_device_run(void *priv)
> > > >  		for (i = 0; i < dst_buf->vb2_buf.num_planes; i++)
> > > >  			vb2_set_plane_payload(&dst_buf->vb2_buf, i, 0);
> > > >  		buf_state = VB2_BUF_STATE_DONE;
> > > 
> > > About existing code, but we may want to explain this.
> > > What is this last frame handling above for?
> > if the user gives us a empty buffer(means it is the last frame),the
> > driver will not encode and done the buffer to the user.
> >
> 
> An empty buffer is not a valid way of signaling a last frame in V4L2. In
> general, I'm not sure there is such a thing in JPEG, because all frames
> are separate from each other and we always expect 1 input buffer and 1
> output buffer for one frame. We might want to remove the special
> handling in a follow up patch.
How does application to end jpeg operation in motion jpeg if we remove
this? I tryed to end with the condition that the input number equals
output number in UT, and is ok.
> 
> > > > -		goto dec_end;
> > > > +		goto device_run_end;
> > > >  	}
> > > >  
> > > > -	if (mtk_jpeg_check_resolution_change(ctx, &jpeg_src_buf->dec_param)) {
> > > > -		mtk_jpeg_queue_src_chg_event(ctx);
> > > > -		ctx->state = MTK_JPEG_SOURCE_CHANGE;
> > > > -		v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
> > > > -		return;
> > > > -	}
> > > > +	if (jpeg->mode == MTK_JPEG_ENC) {
> > > > +		spin_lock_irqsave(&jpeg->hw_lock, flags);
> > > > +		mtk_jpeg_enc_reset(jpeg->reg_base);
> > > 
> > > Why do we need to reset every frame?
> > We do this operation is to ensure that all registers are cleared.
> > It's safer from the hardware point of view.
> 
> Wouldn't this only waste power? If we reset the hardware after powering
> up, the only registers that could change would be changed by the driver
> itself. The driver should program all registers properly when starting
> next frame anyway, so such a reset shouldn't be necessary.
I confirmed with hardware designer again that we need to reset every
frame. If we do not do like this, unexpected mistakes may occur.
> 
> > > 
> > > > +
> > > > +		mtk_jpeg_set_enc_dst(ctx, jpeg->reg_base, &dst_buf->vb2_buf,
> > > > +				     &enc_bs);
> > > > +		mtk_jpeg_set_enc_src(ctx, jpeg->reg_base, &src_buf->vb2_buf,
> > > > +				     &enc_fb);
> > > > +		mtk_jpeg_enc_set_ctrl_cfg(jpeg->reg_base, ctx->enable_exif,
> > > > +					  ctx->enc_quality,
> > > > +					  ctx->restart_interval);
> > > > +
> > > > +		mtk_jpeg_enc_start(jpeg->reg_base);
> > > > +	} else {
> > > > +		if (mtk_jpeg_check_resolution_change
> > > > +			(ctx, &jpeg_src_buf->dec_param)) {
> > > > +			mtk_jpeg_queue_src_chg_event(ctx);
> > > > +			ctx->state = MTK_JPEG_SOURCE_CHANGE;
> > > > +			v4l2_m2m_job_finish(jpeg->m2m_dev, ctx->fh.m2m_ctx);
> > > 
> > > This is a bit strange. Resolution change should be signaled when the
> > > hardware attempted to decode a frame and detected a different resolution
> > > than current. It shouldn't be necessary for the userspace to queue a pair
> > > of buffers to signal it, as with the current code.
> > If the the resolution is bigger than current, the current buffer will
> > not be enough for the changed resolution.Shouldn't it tell the userspace
> > to queue new buffer and stream on again?
> 
> The V4L2 decode flow is as follows:
>  - application configures and starts only the OUTPUT queue,
>  - application queues an OUTPUT buffer with a frame worth of bitstream,
>  - decoder parses the bitstream headers, detects CAPTURE format and
>    signals the source change event,
>  - application reads CAPTURE format and configures and starts the
>    CAPTURE queue,
>  - application queues a CAPTURE buffer,
>  - decoder decodes the image to the queued buffer.
> 
> In case of subsequent (dynamic) resolution change:
>  - application queues an OUTPUT buffer and a CAPTURE buffer,
>  - decoder parses the bitstream, notices resolution change, updates
>    CAPTURE format and signals the source change event, refusing to
>    continue the decoding until the application acknowledges it,
>  - application either reallocates its CAPTURE buffers or confirms that
>    the existing buffers are fine and acknowledges resolution change,
>  - decoding continues.
> 
> For more details, please check the interface specification:
> https://www.kernel.org/doc/html/latest/media/uapi/v4l/dev-decoder.html
> 
I tryed to move this operation from device_run() to
mtk_jpeg_dec_buf_queue(),but have a problem in motion jpeg.For example,I
queued three buffers continuously,the third buffer has resolution
change(bigger than the second buffer),but the capture buffer used in
device run didn't changed.
How do we handle this case?
> [snip]
> > > > -	ret = video_register_device(jpeg->dec_vdev, VFL_TYPE_GRABBER, 3);
> > > > +	ret = video_register_device(jpeg->vfd_jpeg, VFL_TYPE_GRABBER, -1);
> > > 
> > > FYI the type changed to VFL_TYPE_VIDEO recently.
> > I changed VFL_TYPE_GRABBER to VFL_TYPE_VIDEO,but builded fail.
> 
> What kernel version are you building with?
I build it with the latest kernel 5.7,but builed fail again.
> 
> > > >  	if (ret) {
> > > >  		v4l2_err(&jpeg->v4l2_dev, "Failed to register video device\n");
> > > > -		goto err_dec_vdev_register;
> > > > +		goto err_vfd_jpeg_register;
> > > >  	}
> > > >  
> > > > -	video_set_drvdata(jpeg->dec_vdev, jpeg);
> > > > +	video_set_drvdata(jpeg->vfd_jpeg, jpeg);
> > > >  	v4l2_info(&jpeg->v4l2_dev,
> > > > -		  "decoder device registered as /dev/video%d (%d,%d)\n",
> > > > -		  jpeg->dec_vdev->num, VIDEO_MAJOR, jpeg->dec_vdev->minor);
> > > > +		  "jpeg device %d registered as /dev/video%d (%d,%d)\n",
> > > 
> > > Here it would be actually useful to special case the encoder and decoder,
> > > because it would be easier for the user to know which device is which.
> > > 
> 
> Just making sure this wasn't overlooked.
> 
> [snip]
> > > > +
> > > > +void mtk_jpeg_enc_reset(void __iomem *base)
> > > > +{
> > > > +	writel(0x00, base + JPEG_ENC_RSTB);
> > > > +	writel(JPEG_ENC_RESET_BIT, base + JPEG_ENC_RSTB);
> > > > +	writel(0x00, base + JPEG_ENC_CODEC_SEL);
> > > > +}
> > > > +
> > > > +u32 mtk_jpeg_enc_get_int_status(void __iomem *base)
> > > > +{
> > > > +	u32 ret;
> > > > +
> > > > +	ret = readl(base + JPEG_ENC_INT_STS) &
> > > > +		    JPEG_ENC_INT_STATUS_MASK_ALLIRQ;
> > > > +	if (ret)
> > > > +		writel(0, base + JPEG_ENC_INT_STS);
> > > > +
> > > > +	return ret;
> > > > +}
> > > 
> > > Does it make sense to have a function for what is essentially just 2 lines?
> > > Also, the name is misleading, as the function not only gets but also
> > > clears.
> > Make all hw register setting in mtk_jpeg_enc_hw.c is one part of current
> > architecture.
> > I have changed the function name to
> > mtk_jpeg_enc_get_and_clear_int_status.
> 
> As I mentioned before, this driver needs a big clean up and that's why I
> suggested starting over with a new one for the JPEG encoder part. Since
> we decided to extend this one in the end, would you be able to improve
> this aspect as well? Thanks.
> 
> Best regards,
> Tomasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
