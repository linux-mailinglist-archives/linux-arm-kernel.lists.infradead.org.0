Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6F1A1859
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 29 Aug 2019 13:24:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NEFRlv8hOs2GWATTzCeTb9FaH3QNQhGyQlzHjZYS54A=; b=G5qXlHJpnIDA/R
	eMqrCTrZlwzqSV8d/OiM5DDxF/xbv2O+ESXqAw/JUZEM5+jqSqd3DpejCyQG8vh2OBJh4eEABXx55
	waDrgNgVmDKARWyAXlvWH3RS3ES34jBUAV5cRjMqaqTbf8r5Ev/C6sPUvurtT1nVhS9XObJIEDQ9z
	n6Z2njmea0U1Fxef99LCFHhNOhRZSZ3wmFaCHKKnbZTgxXRWsW86kSlgjfgU31WOQBFLUaq2m5C5u
	Ejx5/aqWXSgCKRhWpFuduq+ZtbAJC7CiNWxZ2hmzeJpUSfhpWaIMhHi2d85UPu76YMcJcTwMSBip9
	AheP4hsgcGOTktiAbZMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3IWx-0005Sy-W8; Thu, 29 Aug 2019 11:23:56 +0000
Received: from lb1-smtp-cloud8.xs4all.net ([194.109.24.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3IWd-0005S7-LT
 for linux-arm-kernel@lists.infradead.org; Thu, 29 Aug 2019 11:23:39 +0000
Received: from [192.168.2.10] ([46.9.232.237])
 by smtp-cloud8.xs4all.net with ESMTPA
 id 3IWXiRDXJDqPe3IWbiNius; Thu, 29 Aug 2019 13:23:33 +0200
Subject: Re: [PATCH 7/8] media: cedrus: Add support for holding capture buffer
To: Jernej Skrabec <jernej.skrabec@siol.net>, mchehab@kernel.org,
 paul.kocialkowski@bootlin.com, mripard@kernel.org
References: <20190822194500.2071-1-jernej.skrabec@siol.net>
 <20190822194500.2071-8-jernej.skrabec@siol.net>
From: Hans Verkuil <hverkuil-cisco@xs4all.nl>
Message-ID: <f105990c-e059-6bdd-433f-074388e3a2dc@xs4all.nl>
Date: Thu, 29 Aug 2019 13:23:29 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190822194500.2071-8-jernej.skrabec@siol.net>
Content-Language: en-US
X-CMAE-Envelope: MS4wfEvKT+YAX69YOdWPyoQUh8SffH6qqUV6kZn+ESAP2YPgGYwvqviMJ64VZXwp1TtZ/ePLbU0022q51PrAyBsGo/nnPeQJp9Tng6TOHDFy/MyvejmD4sc3
 5odX7zb2VaFTSpoZdO3Ca/9I/6Hkl3qEkiZDTMRueAwwOcCbETnTqaOHl8zKt9F7zDxEPPO10o0PfJQ+Vfz/abxmnzC03UDuguQGOgacPIoGim6tMUIIwMxB
 A1oDxXQdNbhQzmt6U3A1ahSYmhRpYjCAv+BUr6CAbaTA6K3dx8E2pJeMPTLxflEq0FvzPgSHeTl9i86g1EZZfW5DPLqFi8lhcLvfUge4rU9all+OPl2G4wz7
 +gRj9Jf0ycYsk5j6PaebzSCFvXkZtHesfWUOF/r0ybt4qDPprDpguXjXurxOE0aW0SPuKOUM79iio94IWFRqadpH/YimyRR1KWGv7+34MB/Jnx5jSYcV8k20
 yEqRlVvXWdupr//PmhDXcE0DevUoBQI0W6/JFYWhnX5LKVbhSa/8axDc7+5u7gHmPY3W2LTfbm4dbUFuoHJOsXGULzaiDIsJ+F9OP7WiSq5+YmC9An+/jQII
 Xz7MUUZx2LWCmPVsNXNr1Y9WqICnjYPxC5zSpiLKFnCKj9yzFQcjl828QX4XzWWV42zmQLQXjMnvpovCtNWG9RDdeiwj0CSQDNNetVuN8GgOdjdt+izXFCEE
 oVnAVOLpvvW+PccO4sMh9NDhwTKmMVOI
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190829_042335_857847_CCE83D99 
X-CRM114-Status: GOOD (  19.39  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [194.109.24.21 listed in list.dnswl.org]
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
Cc: devel@driverdev.osuosl.org, pawel@osciak.com, acourbot@chromium.org,
 jonas@kwiboo.se, gregkh@linuxfoundation.org, wens@csie.org, tfiga@chromium.org,
 kyungmin.park@samsung.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org, ezequiel@collabora.com,
 linux-kernel@vger.kernel.org, m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/22/19 9:44 PM, Jernej Skrabec wrote:
> When frame contains multiple slices and driver works in slice mode, it's
> more efficient to hold capture buffer in queue until all slices of a
> same frame are decoded.
> 
> Add support for that to Cedrus driver by exposing and implementing
> V4L2_BUF_CAP_SUPPORTS_M2M_HOLD_CAPTURE_BUF capability.
> 
> Signed-off-by: Jernej Skrabec <jernej.skrabec@siol.net>
> ---
>  drivers/staging/media/sunxi/cedrus/cedrus_dec.c   | 9 +++++++++
>  drivers/staging/media/sunxi/cedrus/cedrus_hw.c    | 8 +++++---
>  drivers/staging/media/sunxi/cedrus/cedrus_video.c | 1 +
>  3 files changed, 15 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> index d7b54accfe83..68462b99750e 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_dec.c
> @@ -31,6 +31,14 @@ void cedrus_device_run(void *priv)
>  
>  	run.src = v4l2_m2m_next_src_buf(ctx->fh.m2m_ctx);
>  	run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +
> +	if (v4l2_m2m_release_capture_buf(run.src, run.dst)) {
> +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +		v4l2_m2m_buf_done(run.dst, VB2_BUF_STATE_DONE);
> +		run.dst = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
> +	}
> +	run.dst->is_held = run.src->flags & V4L2_BUF_FLAG_M2M_HOLD_CAPTURE_BUF;
> +
>  	run.first_slice =
>  		run.src->vb2_buf.timestamp != run.dst->vb2_buf.timestamp;
>  
> @@ -46,6 +54,7 @@ void cedrus_device_run(void *priv)
>  			V4L2_CID_MPEG_VIDEO_MPEG2_SLICE_PARAMS);
>  		run.mpeg2.quantization = cedrus_find_control_data(ctx,
>  			V4L2_CID_MPEG_VIDEO_MPEG2_QUANTIZATION);
> +		run.dst->is_held = false;
>  		break;
>  
>  	case V4L2_PIX_FMT_H264_SLICE:
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> index a942cd9bed57..99fedec80224 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_hw.c
> @@ -122,7 +122,7 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  	dev->dec_ops[ctx->current_codec]->irq_clear(ctx);
>  
>  	src_buf = v4l2_m2m_src_buf_remove(ctx->fh.m2m_ctx);
> -	dst_buf = v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +	dst_buf = v4l2_m2m_next_dst_buf(ctx->fh.m2m_ctx);
>  
>  	if (!src_buf || !dst_buf) {
>  		v4l2_err(&dev->v4l2_dev,
> @@ -136,8 +136,10 @@ static irqreturn_t cedrus_irq(int irq, void *data)
>  		state = VB2_BUF_STATE_DONE;
>  
>  	v4l2_m2m_buf_done(src_buf, state);
> -	v4l2_m2m_buf_done(dst_buf, state);
> -
> +	if (!dst_buf->is_held) {
> +		v4l2_m2m_dst_buf_remove(ctx->fh.m2m_ctx);
> +		v4l2_m2m_buf_done(dst_buf, state);
> +	}
>  	v4l2_m2m_job_finish(ctx->dev->m2m_dev, ctx->fh.m2m_ctx);
>  
>  	return IRQ_HANDLED;
> diff --git a/drivers/staging/media/sunxi/cedrus/cedrus_video.c b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> index eeee3efd247b..5153b2bba21e 100644
> --- a/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> +++ b/drivers/staging/media/sunxi/cedrus/cedrus_video.c
> @@ -515,6 +515,7 @@ int cedrus_queue_init(void *priv, struct vb2_queue *src_vq,
>  	src_vq->type = V4L2_BUF_TYPE_VIDEO_OUTPUT;
>  	src_vq->io_modes = VB2_MMAP | VB2_DMABUF;
>  	src_vq->drv_priv = ctx;
> +	src_vq->subsystem_flags = VB2_V4L2_FL_SUPPORTS_M2M_HOLD_CAPTURE_BUF;

This isn't quite right: this flag should only be set for formats that support
slicing. So cedrus_s_fmt_vid_out() should set this for H264, but clear it for
MPEG2.

Looking at the cedrus code it seems that it does not set an initial default output
format after opening the video device. This seems wrong to me. If it did set a
default output format, then src_vq->subsystem_flags should set this flag corresponding
to the default output format.

>  	src_vq->buf_struct_size = sizeof(struct cedrus_buffer);
>  	src_vq->min_buffers_needed = 1;
>  	src_vq->ops = &cedrus_qops;
> 

Regards,

	Hans

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
